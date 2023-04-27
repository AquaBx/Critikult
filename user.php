<?php
    session_start();
    include("./includes/config-bdd.php");
    include("./php/functions-DB.php");
    include("./php/functions_query.php");
    include("./php/functions_structure.php");

    $mysqli = connectionDB();

    $user = getUser($mysqli,$_GET["id"])[0];



    $pdp = $user['pdp'];
    $name = $user['prenom'] . " " . $user['nom'] ;
    $privi = $user['privilege'];

    echo "<img src='$pdp'>";
    echo "<h2>$name</h2>";
    echo "<h5>$privi</h5>";

    closeDB($mysqli);

?>
