<template>
    <div class="body">
        <div class="selectionType">
            <input type="radio" id = "Sour" v-model="choice" value="1">
            <label for="Sour">Sour</label>

            <input type="radio" id = "Gose" v-model="choice" value="2"> 
            <label for="Gose">Gose</label>
            
            <input type="radio" id = "IPA" v-model="choice" value="3">
            <label for="IPA">IPA</label>

            <input type="radio" id = "Blanche" v-model="choice" value="4">
            <label for="Blanche">Blanche</label>

            <input type="radio" id = "Brune" v-model="choice" value="5">
            <label for="Brune">Brune</label>

            <input type="radio" id = "Blonde" v-model="choice" value="6">
            <label for="Blonde">Blonde</label>

            <input type="radio" id = "Ambree" v-model="choice" value="7">
            <label for="Ambree">Ambrée</label>

            <input type="radio" id = "Stout" v-model="choice" value="8">
            <label for="Stout">Stout</label>

            <input type="radio" id = "Fruitee" v-model="choice" value="9">
            <label for="Fruitee">Fruitée</label>
        </div>

        <div class="productAfficheur">
            <p v-if="getListArticle(choice).length == 0">Aucun produit n'est disponnible</p>
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
      choice: null
    };
  },
  methods: {
    getListArticle(choice){
        productList = []
        if(choice == null){
            return articles
        }
        
        for (let i = 0; i < articles.length; i++) {
            if(articles[i].type == choice){
                productList.push(articles[i])
            }
        }
        return productList
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