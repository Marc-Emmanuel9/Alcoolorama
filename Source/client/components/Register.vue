<template>
    <div class = "body">
      <p>{{message}}</p>
      <div class="second">
            <h2>Pas encore inscrit ?</h2>
            <form action="POST" @submit.prevent="register">
                <input type="text" v-model="user_register.username" placeholder="Nom d'utilisateur">
                <input type="text" v-model="user_register.mail" placeholder="Adresse mail">
                <input type="text" v-model="user_register.password" placeholder="Mot de passe">
                <input type="text" v-model="user_register.telephone"  placeholder="Numero de telephone">
                <textarea v-model="user_register.addr_livr" placeholder="Adresse de livraison"></textarea>
                <textarea v-model="user_register.addr_fact" placeholder="Adresse de facturation"></textarea>
                <button type="submit">Inscription</button>
            </form>
        </div>
        <div class="first">
            <h2>Connexion</h2>
            <form action="POST" @submit.prevent="login">
                <input type="text" v-model="user_login.username" placeholder="Nom d'utilisateur">
                <input type="text" v-model="user_login.password" placeholder="Mot de passe">
                <button type="submit">Connexion</button>
            </form>
        </div>
    </div>
</template>

<script>
module.exports = {
   props: {
      message: {type: String}
    },
  data () {
   
    return {
       user_login: {
        username: null,
        password: null
      },

      user_register: {
        username: null,
        mail: null,
        password: null,
        telephone: null,
        addr_livr: null,
        addr_fact: null
      } 
    };
  },
  methods: {
    login() {
      this.$emit("login-information", this.user_login);
    },

    register() {
      alert(message)
      this.$emit("register-information", this.user_register);
    }
  }
};
</script>

<style scoped>
  .body{
    height: 70%;
    border-radius: 10px;
    box-shadow: 2px 2px 8px black;
    background-color: white;
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    justify-content: space-around;
    align-items: center;
  }

  form{
    display: flex;
    flex-direction: column;
    justify-content: space-around;
  }
</style>