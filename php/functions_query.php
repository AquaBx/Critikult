<?php

//Menu  avec tous les articles
function MenuArticles($mysqli,$var=0){
    $sql = "SELECT jeu.nom,article.titre,article.date_creation,jeu.couverture FROM jeu JOIN article ON jeu.id = article.id_jeu LIMIT 5 OFFSET $var";
    return readDB($mysqli, $sql );
}

//Fonctions pour les infos de chaque article
function AfficheArticle($mysqli,$id_jeu){
    $sql="SELECT * FROM jeu JOIN article ON jeu.id = article.id_jeu WHERE jeu.id='$id_jeu'";
    return readDB($mysqli, $sql);
}

function CatgorieJeu($mysqli,$id_jeu){
    $sql="SELECT categorie.nom FROM est_categorise JOIN categorie ON id_categorie WHERE est_categorise.id_jeu='$id_jeu'";
    return readDB($mysqli, $sql);
}

function SupportJeu($mysqli,$id_jeu){
    $sql="SELECT support.nom FROM est_support JOIN support ON id_support WHERE est_support.id_jeu='$id_jeu'";
    return readDB($mysqli, $sql);
}

function AfficheAvis($mysqli,$id_jeu){
    $sql="SELECT * FROM avis WHERE id_jeu='$id_jeu'";
    return readDB($mysqli, $sql);
}

//Fonction permettant de modifier les droits d'un utilisateur

function CategorieUser($mysqli,$id_user,$privilege){

}

function getUsers($mysqli){
    $sql = "SELECT * FROM user";
    return readDB($mysqli, $sql );
}

?>

