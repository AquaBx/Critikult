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
        include("./php/functions_query.php");
        include("./php/functions_structure.php");
        include("./php/post_article.php");

        $mysql = connectionDB();
        $jeux = jeuxSansArticle($mysql);
        closeDB($mysql);
    ?>

    <main>
        <form method="POST" action="./new_article.php">
        
            <legend>Création d'un article</legend>

            <label for="jeu">Sur quel jeu écrivez-vous ?</label>
            <select id="jeu" name="jeu">
                <?php 
                displayJeuxSansArticle($jeux);
                ?>
            </select>

            <label for="Titre">Titre de l'article</label>
            <input id="Titre" name="Titre" placeholder="Essayez de faire un titre accrocheur" required>
            
            <label for="corps">Corps de l'article</label>
            <textarea style="resize:vertical;" id="corps" name="corps" required></textarea>

            <label for="note">Note attribué au jeu</label>
            <input type="number" name="note" id="note" min=1 max=5 required/>
            
            <input type="submit">    
        </form>
    </main>
</body>
</html>