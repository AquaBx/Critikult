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
    $sql="UPDATE user SET user.privilege='$privilege' WHERE user.id='$id_user'";
    return writeDB($mysqli, $sql);
}

function getUsers($mysqli){
    $sql = "SELECT * FROM user";
    return readDB($mysqli, $sql );
}

//Fonction pour la création d'un compte 
function create_account($mysqli,$login,$password,$name,$firstname,$email,$birthday){
    $sql = "INSERT into user (login,password,nom,prenom,email,birthday) VALUES ('$login','$password','$name','$firstname','$email','$birthday')";
    return writeDB($mysqli, $sql);
}

//Fonction permettant d'écrire un article 
function create_article($mysqli,$Titre,$corps,$note,$id_redac,$id_jeu){
    $sql = "INSERT into article (titre,contenu,note,id_redacteur,id_jeu) VALUES (?,?,?,?,?)";
    $list=[$Titre,$corps,$note,$id_redac,$id_jeu];
    return writePrepare($mysqli, $sql,$list);
}

// Fonction qui renvoie tous les jeux qui n'ont pas d'article

function jeuxSansArticle($mysqli){
    $sql = "SELECT jeu.id,jeu.nom FROM article right JOIN jeu ON jeu.id=id_jeu WHERE id_jeu is NULL";
    return readDB($mysqli, $sql);
}

//Recherche par nom de jeu 
function rechercheNom($mysqli,$texte){
    $sql = "SELECT jeu.nom,article.titre,article.date_creation,jeu.couverture FROM jeu JOIN article ON jeu.id = article.id_jeu WHERE nom LIKE '%$texte%'";
    return readDB($mysqli,$sql);
}

//Recuperation des noms des categories de jeu
function nomCategories($mysqli){
    $sql = "SELECT id_categorie,nom FROM categorie";
    return readDB($mysqli,$sql);
}

//Recuperation des jeux fonction du/des categories
function rechercheCategories($mysqli,$categories){
    
}
?>
