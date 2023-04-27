<?php
    if (isset($_POST["Titre"])){    
        
        session_start();

        include("../includes/config-bdd.php");
        include("../php/functions-DB.php");
        include("../php/functions_query.php");
    
        $mysqli = connectionDB();

        $Titre  = $_POST["Titre"];
        $corps  = $_POST["corps"];
        $note   = $_POST["note"];
        $jeu    = $_POST["jeu"];

        $id     = $_SESSION["id"];
        
        try{
            $createArticle = create_article($mysqli,$Titre,$corps,$note,$id,$jeu);
        }
        catch(Exception $e){
            $createArticle = 0;
        }
    
        if ($createUser == 1) {
            $_SESSION["form_msg"] = "Votre article a bien été publié";
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