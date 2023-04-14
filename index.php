<html>
    <head>
        <link rel="stylesheet" href="./css/index.css">
        <link href="https://css.gg/css?=|profile|search" rel="stylesheet">
    </head>

<body>
    
    <?php 
    include("./static/nav.php"); 
    include("./includes/config-bdd.php");
    include("./php/functions-DB.php");
    include("./php/functions_structure.php");
    include("./php/functions_query.php");
    $mysqli=connectionDB();
    ?>

    <main>
        <?php
            $count = countArticles($mysqli);
            $nb_page=ceil($count/5);
            for ($i=1;$i<=$nb_page;$i++){
                echo "<a href='?page=$i'>$i</a>";
            }

            if (isset($_GET["page"])){
               $offset=5*((int)$_GET["page"]-1); 
            }
            else{
                $offset=0;
            }
            $articles = MenuArticles($mysqli,$offset);
            display_articles($articles);
            closeDB($mysqli);
            for ($i=1;$i<=$nb_page;$i++){
                echo "<a href='?page=$i'>$i</a>";
            }
        ?>
    </main>
</body>
</html>