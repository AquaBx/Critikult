<?php

function display_articles($articles){
    echo "<div class='articles'>";
    foreach ($articles as $article){
        $id = $article["id"];
        echo "<a class='article' href='article.php?id=$id'>";
            echo "<img src='." . $article["couverture"] . "'>";
            echo "<h2>" . $article["jeu"] . "</h2>";
            echo "<p class='accroche'>" . $article["titre"] . "</p>";
            echo "<p class='date'>" . $article["date_creation"] . "</p>";
        echo "</a>";
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
        $jeu = $val["nom"];
        $id  = $val["id"];
        echo "<option value='$id'>$jeu</option>";
    }
}

function displayCategorie($categories){
    foreach($categories as $val){
        $categorie    = $val["id_categorie"];
        $id_categorie = $val["nom"];
        echo "<input type='checkbox' id='$id_categorie' name='$id_categorie' checked><label for='$id_categorie'>$categorie</label>";
    }
}
function modal($message,$type=""){

    echo "<div class='modal $type'>";
        echo $message;
    echo "</div>";
}

function display_article($titre,$couv,$synopsis,$content){
    echo "<h1 style='text-align:center'>$titre</h1>";
    echo "<div class='test' style='position:relative'>";
    echo "<img style='object-fit:cover;height:100%;width:100%;position:relative;'  src='.$couv'>";
    echo "</div>";

    echo "<p>$synopsis</p>";
    
    echo "<br>";

    echo "<h1>Notre avis sur le jeu</h1>";

    echo "<p>$content</p>";


}

function star_note($note){

    $noteinv = 5-$note;
    echo "<svg width='100%' viewBox='0 0 5 0.95' fill='none' xmlns='http://www.w3.org/2000/svg'>
    <mask id='mask0_1002_13' style='mask-type:alpha' maskUnits='userSpaceOnUse' x='0' y='0' width='5' height='1'>
    <path d='M2.52415 0.0157336L2.65004 0.312976L2.96916 0.341777C2.98343 0.342884 2.99368 0.355439 2.99258 0.369839C2.99185 0.376855 2.98892 0.382763 2.9838 0.387194L2.74226 0.599879L2.81363 0.915214C2.81692 0.929245 2.80814 0.942907 2.79423 0.94623C2.78728 0.947707 2.77996 0.94623 2.77447 0.942538L2.5 0.777116L2.2248 0.943276C2.21272 0.950661 2.19699 0.946599 2.18967 0.934414C2.18601 0.928506 2.18527 0.921491 2.18674 0.915214L2.2581 0.599879L2.01657 0.387194C2.00595 0.377963 2.00486 0.361347 2.01401 0.350639C2.01913 0.3451 2.02572 0.342515 2.0323 0.342146L2.35069 0.313345L2.47658 0.0157336C2.48207 0.00244082 2.49707 -0.00346709 2.51025 0.00207158C2.51683 0.00465629 2.52159 0.00982571 2.52415 0.0157336Z' fill='#CCCCCC'/>
    <path d='M4.53148 0.0157336L4.65737 0.312976L4.97648 0.341777C4.99076 0.342884 5.001 0.355439 4.9999 0.369839C4.99917 0.376855 4.99625 0.382763 4.99112 0.387194L4.74959 0.599879L4.82095 0.915214C4.82424 0.929245 4.81546 0.942907 4.80155 0.94623C4.7946 0.947707 4.78728 0.94623 4.78179 0.942538L4.50732 0.777116L4.23212 0.943276C4.22005 0.950661 4.20431 0.946599 4.19699 0.934414C4.19333 0.928506 4.1926 0.921491 4.19406 0.915214L4.26542 0.599879L4.02389 0.387194C4.01328 0.377963 4.01218 0.361347 4.02133 0.350639C4.02645 0.3451 4.03304 0.342515 4.03963 0.342146L4.35801 0.313345L4.4839 0.0157336C4.48939 0.00244082 4.5044 -0.00346709 4.51757 0.00207158C4.52416 0.00465629 4.52892 0.00982571 4.53148 0.0157336Z' fill='#CCCCCC'/>
    <path d='M0.51634 0.0157336L0.64223 0.312976L0.961347 0.341777C0.975619 0.342884 0.985866 0.355439 0.984768 0.369839C0.984036 0.376855 0.981108 0.382763 0.975985 0.387194L0.734452 0.599879L0.805814 0.915214C0.809108 0.929245 0.800325 0.942907 0.786418 0.94623C0.779465 0.947707 0.772146 0.94623 0.766656 0.942538L0.492187 0.777116L0.216986 0.943276C0.204909 0.950661 0.189173 0.946599 0.181854 0.934414C0.178194 0.928506 0.177462 0.921491 0.178926 0.915214L0.250288 0.599879L0.00875499 0.387194C-0.00185782 0.377963 -0.0029557 0.361347 0.00619328 0.350639C0.0113167 0.3451 0.017904 0.342515 0.0244912 0.342146L0.342876 0.313345L0.468766 0.0157336C0.474255 0.00244082 0.489259 -0.00346709 0.502434 0.00207158C0.509021 0.00465629 0.513779 0.00982571 0.51634 0.0157336Z' fill='#CCCCCC'/>
    <path d='M3.52839 0.0157336L3.65912 0.312976L3.99051 0.341777C4.00533 0.342884 4.01597 0.355439 4.01483 0.369839C4.01407 0.376855 4.01103 0.382763 4.00571 0.387194L3.75489 0.599879L3.82899 0.915214C3.83241 0.929245 3.82329 0.942907 3.80885 0.94623C3.80163 0.947707 3.79403 0.94623 3.78833 0.942538L3.5033 0.777116L3.21752 0.943276C3.20498 0.950661 3.18864 0.946599 3.18104 0.934414C3.17724 0.928506 3.17648 0.921491 3.178 0.915214L3.2521 0.599879L3.00128 0.387194C2.99026 0.377963 2.98912 0.361347 2.99862 0.350639C3.00394 0.3451 3.01078 0.342515 3.01762 0.342146L3.34825 0.313345L3.47898 0.0157336C3.48468 0.00244082 3.50026 -0.00346709 3.51395 0.00207158C3.52079 0.00465629 3.52573 0.00982571 3.52839 0.0157336Z' fill='#CCCCCC'/>
    <path d='M1.52106 0.0157336L1.65179 0.312976L1.98318 0.341777C1.99801 0.342884 2.00865 0.355439 2.00751 0.369839C2.00675 0.376855 2.00371 0.382763 1.99839 0.387194L1.74756 0.599879L1.82167 0.915214C1.82509 0.929245 1.81597 0.942907 1.80153 0.94623C1.79431 0.947707 1.78671 0.94623 1.78101 0.942538L1.49598 0.777116L1.21019 0.943276C1.19765 0.950661 1.18131 0.946599 1.17371 0.934414C1.16991 0.928506 1.16915 0.921491 1.17067 0.915214L1.24478 0.599879L0.993955 0.387194C0.982934 0.377963 0.981794 0.361347 0.991295 0.350639C0.996615 0.3451 1.00346 0.342515 1.0103 0.342146L1.34093 0.313345L1.47166 0.0157336C1.47736 0.00244082 1.49294 -0.00346709 1.50662 0.00207158C1.51346 0.00465629 1.5184 0.00982571 1.52106 0.0157336Z' fill='#CCCCCC'/>
    </mask>
    <g mask='url(#mask0_1002_13)'>

    <rect width='$noteinv' height='0.95' transform='matrix(-1 0 0 1 5 0)' fill='#DADADA'/>
    <rect width='$note' height='0.95' fill='#FFCC00'/>

    </g>
    </svg>";
}

function opinion($pdp,$name,$note,$datecrea,$datemodif,$avis){
    echo "<div class='opinion'>";

    echo "<img style='width:6em; border-radius:360em;' src='.$pdp'>";
    echo "<h2>$name</h2>";
    star_note($note);
            
    echo "<p class='avis'>$avis</p>";

    echo "<p class='date'>";

    $date1 = date("d/m/Y", strtotime($datecrea));
    $date2 = date("d/m/Y", strtotime($datemodif));

    echo "Créé le $date1";

    if ($datecrea !== $datemodif ) { echo " et modifié le $date2"; };

    echo '</p>';
            

    echo "</div>";
}

?>
