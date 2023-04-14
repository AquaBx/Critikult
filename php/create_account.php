<?php

include("../includes/config-bdd.php");
include("./functions-DB.php");

$mysql = connectionDB();


$login     = $_POST["login"];
$password  = hash("sha512",$_POST["password"]);
$name      = $_POST["name"];
$firstname = $_POST["firstname"];
$email     = $_POST["email"];
$birthday  = $_POST["birthday"];

$createuser = writeDB($mysql, "INSERT into user (login,password,nom,prenom,email,birthday) VALUES ('$login','$password','$name','$firstname','$email','$birthday')");

if ($createuser == 1) {
    header("Location: ../login.php");
}
else{
    header("Location: ../signup.php");
}

closeDB($mysql);

?>


