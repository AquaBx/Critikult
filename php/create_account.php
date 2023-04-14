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

$createUser = create_account($mysqli,$login,$password,$name,$firstname,$email,$birthday);

if ($createUser == 1) {
    header("Location: ../login.php");
}
else{
    header("Location: ../signup.php");
}

closeDB($mysql);

?>


