<?php
    if (isset($_POST["login"])){
        
        session_start();

        include("../includes/config-bdd.php");
        include("../php/functions-DB.php");
        include("../php/functions_query.php");
    
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
            $_SESSION["form_msg"] = "Votre compte a bien été créé";
            $_SESSION["form_result"] = "success";
        }
        else{
            $_SESSION["form_msg"] = "Une erreur s'est produite";
            $_SESSION["form_result"] = "error";
        }

        closeDB($mysqli);
        header("Location: " . $_SERVER["HTTP_REFERER"]);
    }
    else{
        header("Location: ../index.php");
    }
    
?>