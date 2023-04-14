<?php

include("./includes/config-bdd.php");
include("./php/functions-DB.php");
include("./php/functions_query.php");
include("./php/functions_structure.php");

$mysqli = connectionDB();

$users = jeuxSansArticle($mysqli);
print_r($users);
closeDB($mysqli);

?>
