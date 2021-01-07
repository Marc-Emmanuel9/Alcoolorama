const express = require('express')
const router = express.Router()

const bcrypt = require('bcrypt')
const { Client } = require('pg')

const client = new Client({
  user: 'postgres',
  host: 'localhost',
  password: 'admin',
  database: 'Alcoolorama'
})

client.connect()

router.post('/register', async (req, res) => {
  const username = req.body.username
  const mail = req.body.mail
  const password = req.body.password
  const telephone = req.body.telephone
  const addr_livr = req.body.addr_livr
  const addr_fact = req.body.addr_fact

  const selectUserPerEmail = 'SELECT * FROM Clients WHERE email=$1'

  const result = await client.query({
    text: selectUserPerEmail,
    values: [email]
  })

  if (result.rows.length != 0) {
    res.status(400).json({ message: 'User already exist' })
    return
  }

  const hash = await bcrypt.hash(password, 10)
  console.log(hash)
  const insertIntoTP5 = 'INSERT INTO Clients (username, mail, password, numero, addresse_livraison, addresse_facturation) \
        VALUES ($1, $2, $3, $4, $5, $6)'

  await client.query({
    text: insertIntoTP5,
    values: [email, mail, hash, telephone, addr_livr, addr_fact]
  })

})

router.post('/login', async (req, res) => {
  const email = req.body.email
  const password = req.body.password

  const selectUserPerEmail = 'SELECT * FROM Clients WHERE email=$1'

  const result = await client.query({
    text: selectUserPerEmail,
    values: [email]
  })
  

  if(result.rows.length != 0 ){
    if(await bcrypt.compare(password, result.rows[0].password)){
        console.log(req.session.userId)
        req.session.userId = result.rows[0].id
        console.log(req.session.userId)
    }else{
      res.status(400).json({ message: 'Bad password' })
      return
    }
  }else{
    res.status(400).json({ message: 'User does not exist' })
    return
  }

})

router.post('/makePurchase', async (req, res) => {
  const idProduit = req.body.idProduit

  if(!req.session.userId){
    res.status(401).json({ message: 'No user connected' })
    return
  }else{
    const addToFavProduct = 'INSERT INTO Favorite_article (user_id, produit_id) VALUES ($1, $2)'
    await client.query({
      text: addToFavProduct,
      values: [req.session.userId, idProduit]
    })
  }
})

router.get('/articles', async (req, res) => {
  const articles = "SELECT * FROM Produit"

  const result = await client.query({
    text: articles,
  })

  res.json(result.rows)
})

router.get('/favproduit', async (req, res) => {
  const articles = "SELECT * FROM Favorite_article"

  const result = await client.query({
    text: articles,
  })

  res.json(result.rows)
})
module.exports = router
