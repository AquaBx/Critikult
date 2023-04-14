<?php
    if (isset($_POST["Titre"])){
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
    
        if ($createArticle == 1) {
            modal("Votre article à bien été publié","success");
        }
        else{
            modal("Une erreur s'est produite","error");
        }

        closeDB($mysqli);
    }

?>