<?php
    if (isset($_POST["Titre"])){
        $mysqli = connectionDB();

        $Titre  = $_POST["Titre"];
        $corps  = $_POST["corps"];
        $note   = $_POST["note"];
        $jeu    = $_POST["jeu"];

        $id     = $_SESSION["id"];

        create_article($mysqli,$Titre,$corps,$note,$id,$jeu);

        closeDB($mysqli);
    }

?>