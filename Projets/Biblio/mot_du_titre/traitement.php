<?php 
/* récupération du paramètre */
    $titre = htmlspecialchars($_GET['mot_du_titre']) ;

/* définition de la variable $reponse_mot_du_titre  grâce à une requête SQL*/
    require "requete.php";

/* affichage des titres trouvés dans une liste 
    require "affiche_liste.php";*/
    
/* affichage des titres trouvés dans une liste déroulante de formulaire */
    require "select_form.php";

?>

