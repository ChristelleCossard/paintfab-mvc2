<?php 
    require_once 'templates/header.php';

    require_once('lib/product.php');


    $products = getProducts($pdo);
  ?>  
  <div class="row flex-lg-row-reverse align-items-center g-5 py-5">
    <h1 align="center"> Voici nos produits!</h1>
  </div>

  <div class="row">

  <?php foreach ($products as $key => $product) { 
     include('templates/product_partial.php');
  } ?>

</div>

    <?php   
    require_once 'templates/footer.php';
 ?> 
