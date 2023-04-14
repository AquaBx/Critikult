<html>
<head>
    <link rel="stylesheet" href="./css/index.css">
    <link href="https://css.gg/css?=|profile|search" rel="stylesheet">
</head>

<body>
    <?php 
    include("./static/nav.php");
    include("../includes/config-bdd.php");
    include("./functions-DB.php");
    ?>
    <main>
    
        <form method="POST" action="./recherche.php">

            <legend>Rechercher par nom du jeu</legend>
            <input id="titre" name="titre" required>

            <input type="submit">
        </form>

        <form method="POST" action="./recherche.php">
            <legend>Rechercher par catégorie du jeu</legend>
            <?php 
            $mysql=connectionDB();
            displayCategorie(nomCategories($mysql));
            closeDB($mysql);
            ?>

            <input type="submit">
        </form>


    </main>
</body>


</html>