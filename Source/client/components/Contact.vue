<template>
    <div class="body">
         <div class="first">
            <h2>Renseigner vos informations et on vous recontacte </h2>
            <input type="text" placeholder="Nom">
            <input type="text" placeholder="Prénom">
            <input type="text" placeholder="Numéro de téléphone">
            <textarea  placeholder="Message"></textarea>
            <button type="submit">Contacter</button>
        </div>

        <div class="second">
            <div class="numeroStandard">
                <h1>Numéro du standard</h1>
                <h3>+33 XXX XX XX XX</h3>
            </div>

            <div class="heureOuverture">
                <h2>Heure d'ouverture</h2>
                <p>
                    Lundi : 08h00 - 16h00 <br>
                    Mardi : 08h00 - 16h00 <br>
                    Mercredi : fermé <br>
                    Jeudi : 08h00 - 16h00 <br>
                    Vendredi : 08h00 - 16h00 <br>
                    Samedi : 08h00 - 16h00 <br>
                    Dimanche: 08h00 - 12h00 <br>
                </p>
            </div>
        </div>  
    </div>
</template>

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

  input{
      display: flex;
      flex-direction: column;
  }
</style>