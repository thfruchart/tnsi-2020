<!doctype html>
<html>
 <head>
  <title>
   Exemple de méthode get
  </title>
  <meta charset="utf-8"/>
 </head>
<body>
 <p>
 <?php
   // La variable existe-t-elle ?
   if(isset($_GET['nombre']))
   {
    // Oui, cette variable existe
    $nombre=$_GET['nombre'];
    if($nombre%2==0)
    {
     // Le nombre est pair
     echo "$nombre est pair.";
    }
    else
    {
     // Le nombre est impair
     echo "$nombre est impair.";
    }
   }
   else
   {
    // Non
    echo "Il faut spécifier un nombre dans l'URL.";
   }
  ?>  
  </p>
</body>
</html>
