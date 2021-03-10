<!doctype html>
<html>
 <head>
     <title>
        Résultat du calcul
     </title>
     <meta charset="utf8">
 </head>
 <body>
<p>
    <?php
    if (isset($_POST['n1']) && isset($_POST['n2']) )
    {
        $n1 = $_POST['n1'];
        $n2 = $_POST['n2'];
        $s = $n1 + $n2;
        echo $s;

    }
    else { echo "Erreur";}
    ?>
</p>
 </body>
</html>
