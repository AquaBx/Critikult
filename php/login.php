<?php

if (isset($_POST["login"])){
    session_start();

    include("../includes/config-bdd.php");
    include("../php/functions-DB.php");
    include("../php/functions_query.php");

    $mysqli = connectionDB();

    $login     = $_POST["login"];
    $password  = hash("sha512",$_POST["password"]);
    $getuser = readDB($mysqli, "SELECT id,login,password,privilege FROM user WHERE login='$login'");



    if (!isset($getuser[0])) {
        $_SESSION["form_msg"] = "Utilisateur inconnu";
        $_SESSION["form_result"] = "error";

        header("Location: " . $_SERVER["HTTP_REFERER"]);
    }
    elseif ($getuser[0]["password"] === $password) {

        $_SESSION["login"] = $login;
        $_SESSION["id"] = $getuser[0]["id"];
        $_SESSION["privilege"] = $getuser[0]["privilege"];

        $_SESSION["form_msg"] = "Bienvenue";
        $_SESSION["form_result"] = "success";

        header("Location: ../index.php");
    }
    else{
        $_SESSION["form_msg"] = "mot de passe incorect";
        $_SESSION["form_result"] = "error";
        header("Location: " . $_SERVER["HTTP_REFERER"]);
    }

    closeDB($mysqli);

}
else{
    header("Location: ../index.php");
}




?>
