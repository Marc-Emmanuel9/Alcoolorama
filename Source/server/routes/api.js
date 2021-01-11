const express = require('express')
const router = express.Router()

const bcrypt = require('bcrypt')
const { Client } = require('pg')

const client = new Client({
  user: 'postgres',
  host: 'localhost',
  password: 'admin',
  database: 'postgres'
})

client.connect()

router.post('/register', async (req, res) => {
  const username = req.body.username
  const mail = req.body.mail
  const password = req.body.password
  const telephone = req.body.telephone
  const addr_livr = req.body.addr_livr
  const addr_fact = req.body.addr_fact

  const selectUserPerEmail = 'SELECT * FROM public."Clients" WHERE mail=$1'

  const result = await client.query({
    text: selectUserPerEmail,
    values: [mail]
  })

  if (result.rows.length != 0) {
    res.status(400).json({ message: 'User already exist' })
    return
  }

  const hash = await bcrypt.hash(password, 10)

  const insertIntoClient = 'INSERT INTO public."Clients" (username, mail, password, numero, adresse_livraison, adresse_facturation) \
        VALUES ($1, $2, $3, $4, $5, $6)'

  await client.query({
    text: insertIntoClient,
    values: [username, mail, hash, telephone, addr_livr, addr_fact]
  })

})

router.post('/login', async (req, res) => {
  const username = req.body.username
  const password = req.body.password

  const selectUserPerEmail = 'SELECT * FROM public."Clients" WHERE username=$1'

  const result = await client.query({
    text: selectUserPerEmail,
    values: [username]
  })
  

  if(result.rows.length != 0 ){
    if(await bcrypt.compare(password, result.rows[0].password)){
        req.session.userId = result.rows[0].id
        res.json({
          session_id: req.session.userId,
          message: "Vous êtes connecté"
        })

    }else{
      res.json({
        session_id: req.session.userId,
        message: "Bad password"
      })
      return
    }
  }else{
    res.json({
      session_id: req.session.userId,
      message: "User does not exist"
    })
    return
  }

  

})

router.post('/makePurchase', async (req, res) => {
  const idProduit = req.body.idProduit
  console.log(req.body)
  if(!req.session.userId){
    res.status(401).json({ message: 'No user connected' })
    return
  }else{
    const articles = 'SELECT * FROM public."Favorite_article"'

    const result = await client.query({
      text: articles,
    })

    result.rows.forEach(element =>{
      if(element.user_id == req.session.userId && element.produit_id == idProduit) 
        return
    })

    const addToFavProduct = 'INSERT INTO public."Favorite_article" (user_id, produit_id) VALUES ($1, $2)'
    await client.query({
      text: addToFavProduct,
      values: [req.session.userId, idProduit]
    })
    
  }
})

router.get('/articles', async (req, res) => {
  const articles = 'SELECT image, prix, caracteristique, nom  FROM public."Produit"'

  const result = await client.query({
    text: articles,
  })

  res.json(result.rows)
})

router.get('/favproduit', async (req, res) => {
  const articles = 'SELECT * FROM public."Favorite_article" JOIN public."Produit" ON produit_id = id'

  const result = await client.query({
    text: articles,
  })
  
  res.json(result.rows)
})

module.exports = router
