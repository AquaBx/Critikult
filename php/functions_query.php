<?php

//Menu  avec tous les articles
function MenuArticles($mysqli,$nombres,$offset=0){
    $sql = "SELECT article.id, jeu.nom as jeu,article.titre,article.date_creation,jeu.couverture FROM jeu JOIN article ON jeu.id = article.id_jeu ORDER BY article.date_creation DESC LIMIT $nombres OFFSET $offset";
    return readDB($mysqli, $sql );
}

function countArticles($mysqli){
    $sql = "SELECT count(*) as nb FROM article";
    return readDB($mysqli, $sql)[0]["nb"];
}

//Fonctions pour les infos de chaque article
function InfosArticle($mysqli,$id_jeu){
    $sql="SELECT * FROM jeu JOIN article ON jeu.id = article.id_jeu WHERE jeu.id=?";
    $list = [$id_jeu];
    return readPrepare($mysqli, $sql, $list );
}

function CatgorieJeu($mysqli,$id_jeu){
    $sql="SELECT categorie.nom FROM est_categorise JOIN categorie ON id_categorie WHERE est_categorise.id_jeu=?";
    $list = [$id_jeu];
    return readPrepare($mysqli, $sql, $list );
}

function SupportJeu($mysqli,$id_jeu){
    $sql="SELECT support.nom FROM est_support JOIN support ON id_support WHERE est_support.id_jeu=?";
    $list = [$id_jeu];
    return readPrepare($mysqli, $sql, $list );
}

function InfosAvis($mysqli,$id_jeu){
    $sql="SELECT *,IFNULL(pdp, '/images/blank_pdp.webp') as pdp FROM avis JOIN user on avis.id_user = user.id  WHERE id_jeu=?";
    $list = [$id_jeu];
    return readPrepare($mysqli, $sql, $list );
}

//Fonction permettant de modifier les droits d'un utilisateur

function CategorieUser($mysqli,$id_user,$privilege){
    $sql="UPDATE user SET user.privilege=? WHERE user.id=?";
    $list = [$privilege,$id];
    return writePrepare($mysqli, $sql);
}

function getUsers($mysqli){
    $sql = "SELECT *,IFNULL(pdp, '/images/blank_pdp.webp') as pdp FROM user";
    return readDB($mysqli, $sql );
}

function getUser($mysqli,$id){
    $sql = "SELECT *,IFNULL(pdp, '/images/blank_pdp.webp') as pdp FROM user WHERE id=?";
    $list = [$id];
    return readPrepare($mysqli, $sql, $list );
}

//Fonction pour la création d'un compte 
function create_account($mysqli,$login,$password,$name,$firstname,$email,$birthday){
    $sql = "INSERT into user (login,password,nom,prenom,email,birthday) VALUES (?,?,?,?,?,?)";
    $list=[$login,$password,$name,$firstname,$email,$birthday];
    return writePrepare($mysqli, $sql,$list);
}

//Fonction permettant d'écrire un article 
function create_article($mysqli,$Titre,$corps,$note,$id_redac,$id_jeu){
    $sql = "INSERT into article (titre,contenu,note,id_redacteur,id_jeu) VALUES (?,?,?,?,?)";
    $list=[$Titre,$corps,$note,$id_redac,$id_jeu];
    return writePrepare($mysqli, $sql,$list);
}


function create_avis($mysqli,$commentaire,$note,$id,$id_jeu){
    $sql = "INSERT into avis (contenu,note,id_user,id_jeu) VALUES (?,?,?,?)";
    $list=[$commentaire,$note,$id,$id_jeu];
    return writePrepare($mysqli, $sql,$list);
}

// Fonction qui renvoie tous les jeux qui n'ont pas d'article

function jeuxSansArticle($mysqli){
    $sql = "SELECT jeu.id,jeu.nom FROM article right JOIN jeu ON jeu.id=id_jeu WHERE id_jeu is NULL";
    return readDB($mysqli, $sql);
}

//Recherche par nom de jeu 
function rechercheNom($mysqli,$texte){
    $sql = "SELECT jeu.nom,article.titre,article.date_creation,jeu.couverture FROM jeu JOIN article ON jeu.id = article.id_jeu WHERE nom LIKE '%?%'";
    $list=[$texte];
    return readPrepare($mysqli,$sql,$list);
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
