<html>
<head>
    <link rel="stylesheet" href="./css/index.css">
    <link href="https://css.gg/css?=|profile|search" rel="stylesheet">
</head>

<body>
    <?php include("./static/nav.php"); ?>
    <main>
    
        <form method="POST" action="./php/login.php">
        
                <legend>Connexion</legend>


                <label for="login">Nom d'utilisateur</label>
                <input id="login" name="login" required>
                
                <label for="password">Mot de passe</label>
                <input id="password" name="password" type="password" required>


                <input type="submit">
                
                <p>Vous n'avez pas de compte, <a href="signup.php">créez en un</a> </p>

        </form>

    </main>
</body>


</html>