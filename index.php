<?php 
    session_start();
    
    include("./includes/config-bdd.php");
    include("./php/functions-DB.php");
    include("./php/functions_query.php");
    include("./php/functions_structure.php");

?>

<html>
    <head>
        <link rel="stylesheet" href="./css/index.css">
        <link href="https://css.gg/css?=|profile|search" rel="stylesheet">
    </head>

<body>
    <?php include("./static/nav.php");  ?>
    <?php include("./static/modal.php");  ?>
    <main>
        <?php
            $mysqli=connectionDB();

            $count = countArticles($mysqli);

            $nb_articles = 6;
            $nb_page=ceil($count/$nb_articles);

            if (isset($_GET["page"])){
               $page = (int)$_GET["page"];
            }
            else{
                $page = 1;
            }

            echo "<h2 class='page'>Page $page</h2>";

            $offset = $nb_articles*($page-1);

            $articles = MenuArticles($mysqli,$nb_articles,$offset);
            display_articles($articles);
            closeDB($mysqli);

            echo "<div class='navpages'>";
            for ($i=1;$i<=$nb_page;$i++){
                echo "<a href='?page=$i'>$i</a>";
            }
            echo "</div>";
        ?>
    </main>
</body>
</html>
