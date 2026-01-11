<?php
$products =  [ 1 => ["name"=>"Κουραμπιέδες", "price"=>12],
  2 => ["name"=>"Μελομακάρονα", "price"=>10],
  3 => ["name"=>"Εκλεράκια", "price"=>12],
  4 => ["name"=>"Πάστες", "price"=>10]
];
$id = $_GET['id'];
$product = $products[$id];
?>
<!DOCTYPE html>
<html lang="el">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css">
<title><?= $product['name'] ?></title>
</head>
<body>

<h2><?= $product['name'] ?></h2>
<p>Τιμή: <?= $product['price'] ?>€</p>

<form method="post" action="cart.php">
  <input type="hidden" name="id" value="<?= $id ?>">
  <input type="number" name="qty" value="1" min="1">
  <button type="submit">Προσθήκη στο καλάθι</button>
</form>
</html>