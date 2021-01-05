<template>
    <div class="body">

        <div class="productAfficheur">

        </div>

    </div>
</template>

<script>
module.exports = {
  props: {
    Famous_Product: { type: Array, default: [] },
    isConnected: { type: Boolean, default: false },
    session_id: { type: int, default: null}
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
    }
  }
};
</script>