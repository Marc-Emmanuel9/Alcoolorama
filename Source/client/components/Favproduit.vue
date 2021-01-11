<template>
    <div class="body">
        <div class="productAfficheur">
          <div v-for="(article,i) in famous_product" :key="i">
            <article v-if="session_id != null">
                  <img v-if="session_id == article.user_id" height="50" :src=article.image>
                  <p v-if="session_id == article.user_id">{{article.nom}}</p>
                  <p v-if="session_id == article.user_id">{{article.prix}} €</p>
                  <p v-if="session_id == article.user_id">{{article.caracteristique}}</p>
                  <button @click="makePurchase(article.id)" v-if="session_id == article.user_id">Commander</button>
            </article>
            <div v-else>
                <p>test</p>
            </div>
          </div>
        </div>

    </div>
</template>

<script>
module.exports = {
  props: {
    famous_product: { type: Array},
    session_id: { type: Number}
  },
  data () {
    return {
    };
  },
  methods: {
    makePurchase(information) {
      alert("Votre produit à été commandé !");
      this.$emit("make-purchase", information);
    }
  }
};
</script>

<style scoped>
  .body{
    border-radius: 10px;
    box-shadow: 2px 2px 8px black;
    background-color: white;
  }

  .productAfficheur{
    display: flex;
    flex-direction: column;
  }

  article{
    margin: 2%;
    border-radius: 10px;
    padding: 2%;
    border: 1px solid black;
    display: flex;
    flex-direction: row;
    justify-content: space-between;
  }

  article:hover{
    cursor: pointer;
    margin: 2%;
    padding: 2%;
    border-radius: 10px;
    border: 1px solid black;
    background-color: grey;
    box-shadow: 2px 2px 8px black;
    display: flex;
    flex-direction: row;
    justify-content: space-between;
  }
</style>