<?php
  session_start();
  include("./includes/config-bdd.php");
  include("./php/functions-DB.php");
  include("./php/functions_query.php");
  include("./php/functions_structure.php");

$mysqli = connectionDB();

$users = getUsers($mysqli);
liste_users($users);

closeDB($mysqli);

?>

<style>

table {
  border-collapse: collapse;
}

th, td {
  border: 1px solid black;
  padding:  0.5em 1em;
  text-align: center;
}
</style>
