<?php    /*   CONNEXION A LA BASE*/
try
{   
    $bdd = new PDO('mysql:host=localhost;dbname=bibli;charset=utf8', 'root', '', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
}
catch(Exception $e)
{
        die('Erreur : '.$e->getMessage());
}
?>