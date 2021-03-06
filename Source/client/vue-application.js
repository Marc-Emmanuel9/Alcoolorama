const Home = window.httpVueLoader('./components/Home.vue')
const Register = window.httpVueLoader('./components/Register.vue')
const Contact = window.httpVueLoader('./components/Contact.vue')
const Apropos = window.httpVueLoader('./components/Apropos.vue')
const Panier = window.httpVueLoader('./components/Panier.vue')
const Favproduit = window.httpVueLoader('./components/Favproduit.vue')

const routes = [
  { path: '/', component: Home },
  { path: '/register', component: Register },
  { path: '/contact', component: Contact },
  { path: '/apropos', component: Apropos },
  { path: '/panier', component: Panier },
  { path: '/favproduit', component: Favproduit }
]

const router = new VueRouter({
  routes
})

var app = new Vue({
  router,
  el: '#app',
  data: {
    articles: [],
    Famous_Product: [],
    session_id: null,
    message: null
  },
  async mounted () {
    const res = await axios.get('/api/articles')
    this.articles = res.data

    const res2 = await axios.get('/api/favproduit')
    this.Famous_Product = res2.data
  },
  methods: {
    async register(information){
      await axios.post('/api/register/', information)
    },
    async login(information){
      const res = await axios.post('/api/login/', information)
      this.session_id = res.data.session_id
      this.message = res.data.message

      if(this.session_id != null){
        router.push('/')
      }
    },
    async makePurchase(information){
      await axios.post('/api/makePurchase/', {
        idProduit: information
      })
    },
    async getFamousProduct(){
      const res2 = await axios.get('/api/favproduit')
      this.Famous_Product = res2.data
    }
  }
})
