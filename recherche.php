<?php 
    session_start();
    
    include("./includes/config-bdd.php");
    include("./php/functions-DB.php");
    include("./php/functions_query.php");
    include("./php/functions_structure.php");

    $mysql=connectionDB();
    $categories = nomCategories($mysql);
    closeDB($mysql);
?>

<html>
<head>
    <link rel="stylesheet" href="./css/index.css">
    <link href="https://css.gg/css?=|profile|search" rel="stylesheet">
</head>

<body>
    <?php include("./static/nav.php"); ?>

    <main>
        <form method="POST" action="./recherche.php">

            <legend>Rechercher par nom du jeu</legend>
            <input id="titre" name="titre" required>

            <input type="submit">
        </form>

        <form method="POST" action="./recherche.php">
            <legend>Rechercher par catégorie du jeu</legend>
            <?php 
            
            displayCategorie($categories);
            
            ?>

            <input type="submit">
        </form>


    </main>
</body>


</html>
