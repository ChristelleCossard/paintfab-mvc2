<?php
require_once('templates/header.php');
require_once('lib/tools.php');
require_once('lib/product.php');
require_once ('lib/pdo.php');



$id = (int)$_GET['id'];

$product = getProductById($pdo, $id);
if ($product) {

?>

<div class="row flex-lg-row-reverse align-items-center g-5 py-5">
    <div class="col-10 col-sm-8 col-lg-6">
    <img src="<?=getProductImage($product['image']); ?>" class="d-block mx-lg-auto img-fluid" alt="<?=$product['name']; ?>" width="700" height="500" loading="lazy">
    </div>
    <div class="col-lg-6">
        <h1 class="display-5 fw-bold lh-1 mb-3"><?=$product['name']; ?></h1>
        <p class="lead"><?=$product['description']; ?></p>
    </div>
</div>



   

    <?php } else { ?>
    <div class="row text-center my-5">
        <h1>Produit introuvable</h1>
    </div>
<?php } ?>



<?php
require_once('templates/footer.php');
?>