<?php

function getUsers($mysqli){
    $sql = "SELECT * FROM user";
    return readDB($mysqli, $sql );
}