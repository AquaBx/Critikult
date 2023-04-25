<?php

if (isset($_POST["login"])){

    $mysqli = connectionDB();

    $login     = $_POST["login"];
    $password  = hash("sha512",$_POST["password"]);
    $getuser = readDB($mysqli, "SELECT id,login,password,privilege FROM user WHERE login='$login'");


    if (!isset($getuser[0])) {
        modal("Utilisateur inconnu","error");
    }
    elseif ($getuser[0]["password"] === $password) {

        $_SESSION["login"] = $login;
        $_SESSION["id"] = $getuser[0]["id"];
        $_SESSION["privilege"] = $getuser[0]["privilege"];
        header("Location: ./index.php");
    }
    else{
        modal("mot de passe incorect","error");
    }

    closeDB($mysqli);

}

?>
