<?php
session_start();
include("../includes/config-bdd.php");
include("./functions-DB.php");

$mysql = connectionDB();


$id_jeu = $_POST["id"];
$Titre  = $_POST["Titre"];
$corps  = $_POST["corps"];
$note   = $_POST["note"];
$jeu    = $_POST["jeu"];

$id     = $_SESSION["id"];

create_article($mysqli,$Titre,$corps,$note,$id,$id);

closeDB($mysql);

?>