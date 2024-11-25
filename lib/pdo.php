<?php


 $pdo = new PDO('mysql:dbname='.DB_NAME.';host='.DB_HOST.';port=3308;charset=utf8', DB_USER, DB_PASSWORD);

/*
try
{
    $pdo = new PDO("mysql:dbname="._DB_NAME_.";host="._DB_SERVER_.";charset=utf8mb4", _DB_USER_, _DB_PASSWORD_);
}
catch (Exception $e)
{
        die('Erreur : ' . $e->getMessage());
}
*/