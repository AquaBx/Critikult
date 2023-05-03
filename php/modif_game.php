<?php
    session_start();

    if ( ! str_starts_with( $_SERVER["HTTP_REFERER"], $_SERVER["HTTP_ORIGIN"] )){
        header("Location: ../index.php");
    }
    elseif ( ! str_contains( $_SERVER["HTTP_REFERER"], "modif_game.php" )){
        header("Location: ../index.php");
    }

    include("../includes/config-bdd.php");
    include("../php/functions-DB.php");
    include("../php/functions_query.php");

    $mysqli = connectionDB();

    if (isset($_POST["game"])){    

        try{
            $id = $_POST["id"];
            $nom = $_POST["nom"];
            $synopsis = $_POST["synopsis"];
            $date_sortie = $_POST["date"];
            $prix = $_POST["prix"];

            if ($_FILES["couverture"]["size"] !== 0){
                $couverture = $_FILES["couverture"];
                $couverture_content = file_get_contents($couverture['tmp_name']);
                $updategame = update_game_couv($mysqli,$nom,$prix,$date_sortie,$synopsis,$couverture_content,$id);
            }
            else{
                $updategame = update_game($mysqli,$nom,$prix,$date_sortie,$synopsis,$id);
            }
            
        }
        catch(Exception $e){
            $updategame = 0;
        }

    }
    elseif (isset($_POST["newillus"])){    
    
        try{

            $illustration = $_FILES["illustration"];
            $id = $_POST["id"];
            $illustration_content = file_get_contents($illustration['tmp_name']);
            $updategame = upload_illus($mysqli,$illustration_content,$id);
            
        }
        catch(Exception $e){
            $updategame = 0;
        }
    
    }

    elseif (isset($_POST["categories"])){
        
        try{
            $id_jeu = $_POST["id"];
            $categories = $_POST["categorie"];

            $updategame = insert_categorie($mysqli,$id_jeu,$categories);
            $updategame = delete_categorie($mysqli,$id_jeu,$categories);
            
        }
        catch(Exception $e){
            $updategame = 0;
        }
    }
    elseif (isset($_POST["supports"])){ 

        try{
            $id_jeu = $_POST["id"];
            $supports = $_POST["support"];

            $updategame = insert_support($mysqli,$id_jeu,$supports);
            $updategame = delete_support($mysqli,$id_jeu,$supports);

        }
        catch(Exception $e){
            $updategame = 0;
        }

    }

    if ($updategame == 1) {
        $_SESSION["form_msg"] = "Votre jeu a bien été modifié";
        $_SESSION["form_result"] = "success";
    }
    else{
        $_SESSION["form_msg"] = "$e";
        $_SESSION["form_result"] = "error";
    }


    closeDB($mysqli);
    header("Location: " . $_SERVER["HTTP_REFERER"]);

?>