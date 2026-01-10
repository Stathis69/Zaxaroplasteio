<?php
session_start();
$cart_summary = "";
if (isset($_SESSION['cart']) && !empty($_SESSION['cart'])) {
$products_list = [
        1 => "Κουραμπιέδες",
        2 => "Μελομακάρονα",
        3 => "Εκλεράκια",
        4 => "Πάστες"
    ];
foreach ($_SESSION['cart'] as $id => $qty) {
        if (isset($products_list[$id])) {
            $cart_summary .= $products_list[$id] . " (x" . $qty . ") ";
        }
    }
} else {
    $cart_summary = "Καμία παραγγελία προϊόντων";
}

$firstname = $_POST['firstname'];
$lastname  = $_POST['lastname'];
$address   = $_POST['address'];
$phone     = $_POST['phone'];
$date      = $_POST['date'];
$email     = $_POST['email'];

 $DB_SERVER = "localhost";
 $DB_NAME = "zaxaroplasteio";
 $DB_USER = "root";
 $DB_PASSWORD = "";
 $dblink = mysqli_connect($DB_SERVER, $DB_USER, $DB_PASSWORD, $DB_NAME)
 or die('Unable to connect to database!');
  $sql_query = "INSERT INTO `orders` (`firstname`, `lastname`, `address`, `phone`, `date`,`email`,`product`)";
 $sql_query .= " VALUES ('{$firstname}', '{$lastname}', '{$address}', '{$phone}', '{$date}','{$email}','{$cart_summary}')";
 $success = mysqli_query($dblink, $sql_query);
 if ($success){
	 echo "<h2>Η παραγγελία σας καταχωρήθηκε επιτυχώς!</h2>";
        echo "<p>Σύντομα θα λάβετε email επιβεβαίωσης στο email.</p>";
 }
?>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
</head>
<body>

 <br/>
<td> <a href="proionta.html">Επιστροφή στα Προϊόντα</a> </td>
</body>
</html>