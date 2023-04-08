<html>
<head>
    <link rel="stylesheet" href="./css/index.css">
    <link href="https://css.gg/css?=|profile|search" rel="stylesheet">
</head>

<body>
    <?php include("./static/nav.php"); ?>
    <main>
    
        <form method="POST" action="./php/create_account.php">
        
                <legend>Création d'un compte</legend>


                <label for="login">Nom d'utilisateur</label>
                <input id="login" name="login" required>
                
                <label for="password">Mot de passe</label>
                <input id="password" name="password" type="password" required>


                <label for="name">Nom</label>
                <input id="name" name="name" required>

                <label for="firstname">Prénom</label>
                <input id="firstname" name="firstname" required>

                <label for="email">Email</label>
                <input id="email" name="email" required>

                <label for="birthday">Date de naissance</label>
                <input id="birthday" name="birthday" type="date" required>


                <div>
                <label>Je certifie avoir 15 ans ou plus</label>
                <input type="checkbox" required>
                </div>
                
                
                <div>
                <label>Je certifie avoir lu les CGU</label>
                <input type="checkbox" required>
                </div>
                


                <input type="submit">
                
        </form>

    </main>
</body>


</html>