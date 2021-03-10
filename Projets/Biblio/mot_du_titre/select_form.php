<!-- ce fichier suppose définie la variable php $reponse_mot_du_titre -->
<!doctype html>
<html>
 <head>
     <title>
        Titres trouvés
     </title>
     <meta charset="utf8">
 </head>
 <body>
     <?php 
     if (count($reponse_mot_du_titre) == 0){
         echo "<h2>Pas de titre trouvé</h2>";
     }
     else {
        echo "<h2>Titres trouvés : </h2>";
     }
     ?>

     <form>
         <select name="livre_choisi" id="livre_choisi">

             <?php foreach($reponse_mot_du_titre as $element) : ?>
                <option value="<?=$element["isbn"]?>"><?=$element["titre"]?>
                </option>
             <?php endforeach ;?>

         </select>
     </form>
 </body>
</html>