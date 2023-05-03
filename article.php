<?php 
    session_start();
    
    include("./includes/config-bdd.php");
    include("./php/functions-DB.php");
    include("./php/functions_query.php");
    include("./php/functions_structure.php");

    $mysqli=connectionDB();

    $id_art = $_GET["id"];

    $article = InfosArticle($mysqli,$id_art )[0];

    $id_jeu = $article["id_jeu"];

    $redac = getUserByID( $mysqli, $article["id_redacteur"] )[0];
    $avis = InfosAvis($mysqli,$id_jeu );
    $illus = getIllustrationByJeu($mysqli,$id_jeu);
    $categorie = CategorieJeu($mysqli,$id_jeu);
    $support = SupportJeu($mysqli,$id_jeu);

    closeDB($mysqli);
?>

<html>
    <head>
        <link rel="stylesheet" href="./css/index.css">

        <link rel="stylesheet" href="./fontawesome/css/solid.min.css">
        <link rel="stylesheet" href="./fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="./fontawesome/css/regular.min.css">
        <link rel="stylesheet" href="./fontawesome/css/brands.min.css">

        <meta name="viewport" content="width=device-width, initial-scale=1" />
    </head>

<body>
    <?php include("./static/nav.php");  ?>
    <?php include("./static/modal.php");  ?>

        
    <main>
        <article>
            <?php 

            display_article($article,$categorie,$support);
            liste_illus($illus);
            redac_opinion($article,$redac);
            

            echo "<hr>";

            echo "<h1>Vos avis</h1>";

            if (isset($_SESSION["id"])){
                echo "<form action='./php/post_avis.php' method='post'>";

                echo "<input type='hidden' name='id_jeu' value='$id_jeu'>";

                echo "<label for='corps'>Corps de l'avis</label>";
                echo "<textarea style='resize:vertical;' id='corps' name='commentaire' required></textarea>";

                echo "<label for='note'>Note attribué au jeu</label>";
                echo "<input type='number' name='note' id='note' min=0 max=10 required/>";
                
                echo "<input type='submit' name='avis'/>";

                echo "</form>";
            }

            display_avis($avis)

            ?>
        </article>
        
    </main>
</body>
</html>
