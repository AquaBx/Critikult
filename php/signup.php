<?php
    if (isset($_POST["login"])){

    $mysqli = connectionDB();

    $login     = $_POST["login"];
    $password  = hash("sha512",$_POST["password"]);
    $name      = $_POST["name"];
    $firstname = $_POST["firstname"];
    $email     = $_POST["email"];
    $birthday  = $_POST["birthday"];

    try{
        $createUser = create_account($mysqli,$login,$password,$name,$firstname,$email,$birthday);
    }
    catch(Exception $e){
        $createUser = 0;
    }

    if ($createUser == 1) {
        modal("Votre compte à bien été créé","success");
    }
    else{
        modal("Une erreur s'est produite","error");
    }

    closeDB($mysqli);

    }
?>