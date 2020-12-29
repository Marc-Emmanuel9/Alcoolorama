const Home = window.httpVueLoader('./components/Home.vue')
const Register = window.httpVueLoader('./components/Register.vue')
const Contact = window.httpVueLoader('./components/Contact.vue')
const Produit = window.httpVueLoader('./components/Produit.vue')
const Apropos = window.httpVueLoader('./components/Apropos.vue')
const Panier = window.httpVueLoader('./components/Panier.vue')
const Favproduit = window.httpVueLoader('./components/Favproduit.vue')

const routes = [
  { path: '/', component: Home },
  { path: '/register', component: Register },
  { path: '/contact', component: Contact },
  { path: '/produit', component: Produit },
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
  },
  async mounted () {
  },
  methods: {
    async register(information){
      await axios.post('/api/register/', information)
    },
    async login(information){
      await axios.post('/api/login/', information)
    }
  }
})
