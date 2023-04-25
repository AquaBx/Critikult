<navbar>
    <?php

    ?>
    <div><a href="./index.php"><h1>Critikult</h1></a></div>
    <div class="icons" >
        <a href="./recherche.php"><i class="gg-search"></i></a>

        <div tabindex="-1" class="dropbox">
            <a><i class='gg-profile'></i></a>
            <ul class="hide">

                <?php
                if (isset($_SESSION["privilege"])){
                    $id = $_SESSION["id"];
                    echo "<li><a href='./user.php?id=$id'>Profil</a></li>";
                    echo "<li><a href='./php/logout.php'>Déconnection</a></li>";
                }
                else{
                    echo "<li><a href='./login.php'>Connection</a></li>";
                    echo "<li><a href='./signup.php'>Créer un compte</a></li>";
                }
                ?>
                
            </ul>
        </div>
    </div>
</navbar>
