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

                $id_art = $_GET["id"];

                $article = InfosArticle($mysqli,$id_art )[0];

                $a = $article["nom"];
                $a = $article["prix"];
                $a = $article["date_sortie"];
                $id_jeu = $article["id_jeu"];

            
                $redac = getUser( $mysqli, $article["id_redacteur"] )[0];
                $avis = InfosAvis($mysqli,$id_jeu );
                


                closeDB($mysqli);

            ?>
        <article>
            <?php 

            $pdp = $redac['pdp'];
            $name = $redac['prenom'] . " " . $redac['nom'] ;
            $note = $article["note"];
            $datecrea = $article["date_creation"];
            $datemodif = $article["date_modification"];

            

            $synopsis = $article["synopsis"];
            $titre = $article["titre"];
            $couv = $article["couverture"];
            $content = $article["contenu"];
            display_article($titre,$couv,$synopsis,$content);
            



            opinion($pdp,$name,$note,$datecrea,$datemodif,"");
            

            echo "<hr>";

            echo "<h1>Vos avis</h1>";

            echo "<form action='./php/avis.php' method='post'>";

            echo "<input type='hidden' name='id_jeu' value='$id_jeu'>";

            echo "<label for='corps'>Corps de l'article</label>";
            echo "<textarea style='resize:vertical;' id='corps' name='commentaire' required></textarea>";

            echo "<label for='note'>Note attribué au jeu</label>";
            echo "<input type='number' name='note' id='note' min=1 max=5 required/>";
            
            echo "<input type='submit' name='avis'/>";

            echo "</form>";

            foreach ($avis as $avi){
                $name = $avi['prenom'] . " " . $avi['nom'];
                $pdp = $avi['pdp'];
                $note = $avi['note'];
                $date = $avi['date'];
                $contenu = $avi['contenu'];
                
                opinion($pdp,$name,$note,$date,$date,$contenu);
            }

            ?>
        </article>
        
    </main>
</body>
</html>
