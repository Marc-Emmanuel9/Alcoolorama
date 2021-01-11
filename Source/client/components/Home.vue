<template>
    <div class="body">
        <div class="productAfficheur">
            <article v-for="(article,i) in articles" :key="i">
                  <p>{{i+1}}</p>
                  <img height="50" :src=article.image>
                  <p>{{article.nom}}</p>
                  <p>{{article.prix}} €</p>
                  <p>{{article.caracteristique}}</p>
                  <button @click="makePurchase(i+1)">Commander</button>
            </article>
        </div>
    </div>
</template>

<script>
module.exports = {
  props: {
    articles: {type: Array}
  },
  data () {
    return {
    };
  },
  methods: {
    makePurchase(information) {
      alert("Votre produit à été commandé et vous sera livré !");
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