<?php
  define('_PRODUCTS_IMG_PATH_', 'uploads/products/');
  define('_ASSETS_IMAGES_FOLDER_', '/images/');
  define('_HOME_PRODUCTS_LIMIT_', 6);
/*
  define("_DB_SERVER_", "mysql-cocodev.alwaysdata.net");
  define("_DB_NAME_", "cocodev_garage");
  define("_DB_USER_", "cocodev");
  define("_DB_PASSWORD_", "Vicky.10");
*/

/*
  define("_DB_SERVER_", "mysql-cocodev.alwaysdata.net");
  define("_DB_NAME_", "cocodev_garage");
  define("_DB_USER_", "cocodev");
  define("_DB_PASSWORD_", "Vicky.10");
*/  
/*
  define('DB_NAME', 'cocodev_paintfab');
  define('DB_HOST', 'mysql-cocodev.alwaysdata.net');
  define('DB_USER', 'cocodev');
  define('DB_PASSWORD', 'Vicky.10');
*/


  define('DB_NAME', 'paintfab');
  define('DB_HOST', 'localhost');
  define('DB_USER', 'root');
  define('DB_PASSWORD', '');


// $pdo = new PDO('mysql:dbname='.DB_NAME.';host='.DB_HOST.';port=3308;charset=utf8', DB_USER, DB_PASSWORD);

//$pdo = new PDO('mysql:dbname=paintfab;host=127.0.0.1;port=3308;charset=utf8mb4', 'root', '');


  $mainMenu = [
    'index.php' => 'Accueil', 
    'produits.php' => 'Nos produits',
    'essais1.php' => 'Présentation',
    'consommation.php' => 'Consommation',
  ];
  
  $mainMenu2 = [
    'ajout_modification_plat.php' => 'Ajout/modif plat'
  ];
  