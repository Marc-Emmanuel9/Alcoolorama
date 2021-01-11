<template>
    <div class="body">
        <div class="productAfficheur">
            <article v-for="(article,i) in getListArticle()" :key="i">
                  <img :src=article.image>
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
    Famous_Product: { type: Array},
    isConnected: { type: Boolean},
    session_id: { type: Number}
  },
  data () {
    return {
    };
  },
  methods: {
    getListArticle(){
        let list = []

        if(!isConnected){
            return []
        }

        for(let i = 0; i < Famous_Product.length; i++){
            if(Famous_Product[i].id == session_id){
                list.push(Famous_Product[i])
            }
        }

        return list
    },
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