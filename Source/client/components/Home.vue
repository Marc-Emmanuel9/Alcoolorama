<template>
    <div class="body">
        <div class="productAfficheur">
            <article v-for="article in articles" :key="article.id">
                  <img src=article.image>
                  <p>{{article.prix}} €</p>
                  <p>{{article.caracteristique}}</p>
                  <button @click="makePurchase(article.id)" >Commander</button>
            </article>
        </div>
    </div>
</template>

<script>
module.exports = {
  props: {
    articles: { type: Array, default: [] },
  },
  data () {
    return {
    };
  },
  methods: {
    makePurchase(information) {
      alert("Votre produit à été commandé !");
      this.$emit("makePurchase", information);
    }
  }
};
</script>

<style scoped>
  .body{
    border-radius: 10px;
    box-shadow: 2px 2px 8px black;
    background-color: white;
    display: flex;
    flex-wrap: wrap;
  }

  .selectionType{
    border-radius: 10px;
    margin-top: 3%;
    margin-left: 1%;
    height: 70%;
    box-shadow: 2px 2px 8px black;
    background-color: gray;
    display: flex;
    flex-direction: column;
  }
</style>