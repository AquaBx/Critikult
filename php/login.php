<?php

include("../includes/config-bdd.php");
include("./functions-DB.php");

$mysql = connectionDB();

$login     = $_POST["login"];
$password  = hash("sha512",$_POST["password"]);

$getuser = readDB($mysql, "SELECT id,login,password FROM user WHERE login='$login'");


if (!isset($getuser[0])) {
    header("Location: ../login.php");
}
elseif ($getuser[0]["password"] === $password) {
    header("Location: ../index.php");
}
else{
    header("Location: ../login.php");
}

?>


