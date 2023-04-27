<?php

if (isset($_POST["avis"])){
    session_start();

    include("../includes/config-bdd.php");
    include("../php/functions-DB.php");
    include("../php/functions_query.php");

    $mysqli = connectionDB();


    $commentaire = $_POST["commentaire"];
    $note = $_POST["note"];
    $id_jeu = $_POST["id_jeu"];
    $id = $_SESSION["id"];

    try{
        $createAvis = create_avis($mysqli,$commentaire,$note,$id,$id_jeu);
    }
    catch(Exception $e){
        $createAvis = 0;
    }

    if ($createAvis == 1) {
        $_SESSION["form_msg"] = "Votre avis a bien été créé";
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
