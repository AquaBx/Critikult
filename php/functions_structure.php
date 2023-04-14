<?php

function display_articles($articles){
    echo "<div class='articles'>";
    foreach ($articles as $article){
        echo "<div class='article'>";
            echo "<img src='" . $article["chemin"] . "'>";
            echo "<h3>" . $article["title"] . "</h3>";
            echo "<p>" . $article["synopsis"] . "</p>";
            echo "<p>" . $article["date"] . "</p>";
        echo "</div>";
    } 
    echo "</div>";
}

function liste_users($users){
    echo "<table class='users'>";
    echo "<tr>
    <td>Photo de profil</td>
    <td>login</td>
    <td>visiteur</td>
    <td>membre</td>
    <td>rédacteur</td>
    <td>administrateur</td>
    <td></td>
    </tr>";
    foreach ($users as $user){
        $checked1 = $user["privilege"] == "visiteur" ? "checked" : ""; 
        $checked2 = $user["privilege"] == "membre" ? "checked" : ""; 
        $checked3 = $user["privilege"] == "rédacteur" ? "checked" : ""; 
        $checked4 = $user["privilege"] == "administrateur" ? "checked" : ""; 

        echo "<tr class='user'><form>";

            echo "<td><img src='" . $user["pdp"] . "'></td>";
            echo "<td>" . $user["login"] . "</td>";
            echo "<td><input type='radio' $checked1 name='fonction' value='visiteur'></td>";
            echo "<td><input type='radio' $checked2 name='fonction' value='membre'></td>";
            echo "<td><input type='radio' $checked3 name='fonction' value='rédacteur'></td>";
            echo "<td><input type='radio' $checked4 name='fonction' value='administrateur'></td>";
            echo "<td><input type='submit' value='modiifier'></td>";
        echo "</form></tr>";
    } 
    echo "</div>";
}

function displayJeuxSansArticle($jeux){
    foreach($jeux as $val){
        $jeu = $val["jeu"];
        $id  = $val["id"];
        echo "<option value='$id'>$jeu</option>";
    }
}

function modal($message,$type=""){

    echo "<div class='modal $type'>";
        echo $message;
    echo "</div>";

}

?>
