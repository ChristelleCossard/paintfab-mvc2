<?php
require_once __DIR__ . "/../lib/config.php";
//require_once __DIR__ . "/../lib/session.php";
//adminOnly();

require_once __DIR__ . "/../lib/pdo.php";
require_once __DIR__ . "/../lib/product.php";
require_once __DIR__ . "/templates/header.php";

if (isset($_GET['page'])) {
  $page = (int)$_GET['page'];
} else {
  $page = 1;
}
$products = getProducts($pdo, _ADMIN_ITEM_PER_PAGE, $page);


$totalProducts = getTotalProduct($pdo);

$totalPages = ceil($totalProducts / _ADMIN_ITEM_PER_PAGE);

?>


<h1 class="display-5 fw-bold text-body-emphasis">Produits</h1>
<div class="d-flex gap-2 justify-content-left py-5">
  <a class="btn btn-primary d-inline-flex align-items-left" href="article.php">
    Ajouter un produit
  </a>
</div>
<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Titre</th>
      <th scope="col">Actions</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($products as $product) { ?>
      <tr>
        <th scope="row"><?= $product["id"]; ?></th>
        <td><?= $product["name"]; ?></td>
        <td><a href="product.php?id=<?= $product['id'] ?>">Modifier</a>
          | <a href="product_delete.php?id=<?=$product['id'] ?>" onclick="return confirm('Êtes-vous sûr de vouloir supprimer ce produit ?')">Supprimer</a></td>
      </tr>
    <?php } ?>
  </tbody>
</table>
<nav aria-label="Page navigation example">
  <ul class="pagination">
    <?php if ($totalPages > 1) { ?>
      <?php for ($i = 1; $i <= $totalPages; $i++) { ?>
        <li class="page-item">
          <a class="page-link <?php if ($i == $page) { echo " active";} ?>" href="?page=<?php echo $i; ?>" >
            <?php echo $i; ?>
          </a>
        </li>
      <?php } ?>
    <?php } ?>
  </ul>
</nav>


<?php require_once __DIR__ . "/templates/footer.php"; ?>