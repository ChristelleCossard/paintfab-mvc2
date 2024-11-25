<?php
require_once __DIR__ . "/../lib/config.php";
require_once __DIR__ . "/../lib/session.php";
adminOnly();

require_once __DIR__ . "/../lib/pdo.php";
require_once __DIR__ . "/../lib/tools.php";
require_once __DIR__ . "/../lib/product.php";
require_once __DIR__ . "/../lib/category.php";
require_once __DIR__ . "/templates/header.php";


//require_once('templates/header.php');

if(!isset($_SESSION['user'])) {
    header('location: login.php');
}
/*
require_once('lib/tools.php');
require_once('lib/product.php');
require_once('lib/category.php');
*/


$errors = [];
$messages = [];
/*
protected int $id;
    protected int $category_id;
    protected string $name;
    protected string $description;
    protected string $image;*/
$product = [
    'name' => '',
    'description' => '',
    'category_id' => '',
];

$categories = getCategories($pdo);

if (isset($_POST['saveProduct'])) {
    $fileName = null;
   // var_dump($_FILES['file']);
    // Si un fichier a été envoyé
    if(isset($_FILES['file']['tmp_name']) && $_FILES['file']['tmp_name'] != ''){
         // la méthode getimagessize va retourner false si le fichier n'est pas une image
         $checkImage = getimagesize($_FILES['file']['tmp_name']);
         if ($checkImage !== false) {
            // Si c'est une image on traite
            //$fileName = uniqid().'-'.slugify($_FILES['file']['name']);
            $fileName = uniqid().'-'.$_FILES['file']['name'];
          // $fileName = $_FILES['file']['name'];
            move_uploaded_file($_FILES['file']['tmp_name'], _PRODUCTS_IMG_PATH_.$fileName);
        } else {
            // Sinon on affiche un message d'erreur
            $errors[] = 'Le fichier doit être une image';
        }
    }
    
    if (!$errors) {
    $res = saveProduct($pdo, $_POST['category'], $_POST['name'], $_POST['description'], $_POST['name'], $_POST['name'], $fileName);
    //var_dump($res);
    
    if ($res) {
        $messages[] = 'Le produit a bien été sauvegardée';
    } else {
        $errors[] = 'Le produit n\'a pas été sauvegardée';
    }
}
$product = [
    'name' => $_POST['name'],
    'description' => $_POST['description'],
    'category_id' => $_POST['category'],
];

}



?>
<h1 align="center">Ajouter un produit</h1>

<?php foreach ($messages as $message) { ?>
    <div class="alert alert-success">
        <?=$message; ?>
    </div>
<?php } ?>

<?php foreach ($errors as $error) { ?>
    <div class="alert alert-danger">
        <?=$error; ?>
    </div>
<?php } ?>



<form method="POST" enctype="multipart/form-data">
    <div class="mb-3">
        <label for="name" class="form-label"">Nom</label>
        <input type="text" name="name" id="name" class="form-control" value="<?=$product['name'] ;?>">
    </div>
    <div class="mb-3">
        <label for="description" class="form-label">Description</label>
        <textarea name="description" id="description" cols="30" rows="5" class="form-control"><?=$product['description'] ;?></textarea>
    </div>
    
  
    <div class="mb-3">
        <label for="category" class="form-label">Catégorie</label>
        <select name="category" id="category" class="form-select">
            
        <?php foreach ($categories as $category) { ?>
            <option value="<?=$category['id']; ?>" <?php if ($product['category_id'] == $category['id']) { echo 'selected="selected"'; } ?>><?=$category['Famille'];?></option>
            <?php } ?>
            <?php
            /*
            <option value="1">Entrée</option>
            <option value="2">Plat</option>
            <option value="3">Dessert</option>
            */


            ?>
        </select>
    </div>
    <div align="center" class="mb-3">
        <label for="file" class="form-label">Image</label>
        <input type="file" name="file" id="file">
    </div>
    <div align="center" class="mb-3">
    <input type="submit" align="center" value="Enregistrer" name="saveProduct" class="btn btn-primary">
        </div>

</form>
<?php  ?>
<?php
require_once('templates/footer.php');
?>