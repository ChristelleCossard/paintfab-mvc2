<?php
  define('_PRODUCTS_IMG_PATH_', 'uploads/products/');
  define('_ASSETS_IMAGES_FOLDER_', '/images/');
  define('_HOME_PRODUCTS_LIMIT_', 6);
  define("_ADMIN_ITEM_PER_PAGE", 10);

//chgt du 05/01/20205
  define('DB_NAME', 'paintfab');
  define('DB_HOST', 'localhost');
  define('DB_USER', 'root');
  define('DB_PASSWORD', '');

/*
define('DB_NAME', 'cocodev_paintfab');
define('DB_HOST', 'mysql-cocodev.alwaysdata.net');
define('DB_USER', 'cocodev');
define('DB_PASSWORD', 'Vicky.10');
*/


  $mainMenu = [
    'index.php' => 'Accueil', 
    'produits.php' => 'Nos produits',
    'essais1.php' => 'Présentation',
    'consommation.php' => 'Consommation',
    'contact.php' => 'Contact',
  ];
  
  $mainMenu2 = [
    'ajout_modification_plat.php' => 'Ajout/modif plat'
  ];
  