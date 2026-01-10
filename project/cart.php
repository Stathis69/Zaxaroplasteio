<?php
session_start();
$id = $_POST['id'];
$qty = $_POST['qty'];

$_SESSION['cart_summary'][$id] = $qty;
header("Location: checkout.php");
exit();
?>
<form method="post" action="checkout.php">
</form>