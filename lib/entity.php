<?php
//modèle pour récupérer les données d'une table

function getEntity(PDO $pdo) {
    
    $sql = 'SELECT * FROM entities';
    $query = $pdo->prepare($sql);

    $query->execute();
    return $query->fetchAll();
    
}