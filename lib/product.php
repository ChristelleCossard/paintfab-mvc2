<?php
/*
$products = [
    ['name' => 'cocoactiv', 'description' => 'description de ce produit à venir quick example text to build on the card title and make up the bulk of the card\'s content.', 'image' => '1-produit1.jpg'],
    ['name' => 'cocomousse', 'description' => 'description de ce produit à venir quick example text to build on the card title and make up the bulk of the card\'s content.', 'image' => '1-produit1.jpg'],
    ['name' => 'cococolle', 'description' => 'description de ce produit à venir quick example text to build on the card title and make up the bulk of the card\'s content.', 'image' => '1-produit1.jpg'],
];
*/


function getProductById(PDO $pdo, int $id) {
    
    $query = $pdo->prepare("SELECT * FROM products WHERE id = :id");
    $query->bindParam(':id', $id, $pdo::PARAM_INT);
    $query->execute();
    $product = $query->fetch();

    return $product;
}

function getProductImage (string|null $image){
    if ($image == null) {
         return _ASSETS_IMAGES_FOLDER_.'product_default.jpg';
    } else {
        return _PRODUCTS_IMG_PATH_ . $image;
    }
    }

    function getProducts(PDO $pdo, int $limit = null) {
        $sql = 'SELECT * FROM products ORDER BY id DESC';
    
        if ($limit) {
            $sql .= ' LIMIT :limit';
        }
    
        $query = $pdo->prepare($sql);
    
        if ($limit) {
            $query->bindParam(':limit', $limit, PDO::PARAM_INT);
        }
    
        $query->execute();
        return $query->fetchAll();
    }

    function saveProduct(PDO $pdo, int $category_id, string $title, string $description, string $ingredients, string $instructions, string|null $image) {
        $sql = "INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `image`) VALUES (NULL, :category_id, :name, :description, :image);";
        $query = $pdo->prepare($sql);
        $query->bindParam(':category_id', $category_id, PDO::PARAM_INT);
        $query->bindParam(':name', $name, PDO::PARAM_STR);
        $query->bindParam(':description', $description, PDO::PARAM_STR);
        $query->bindParam(':image', $image, PDO::PARAM_STR);
        return $query->execute();
    }
