<div class="col-md-4">
    <div class="card">
    <img src="<?= getProductImage($product['image']); ?>" class="card-img-top" alt="<?= $product['name']; ?>">
        <div class="card-body">
            <h5 class="card-title"><?= $product['name']; ?></h5>
            <p class="card-text"><?= $product['description']; ?></p>
            <a href="produit.php?id=<?=$product['id']; ?>" class="btn btn-primary">Voir le produit</a>
        </div>
    </div>
</div>