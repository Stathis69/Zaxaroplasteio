<?php 
session_start();
?>
<!DOCTYPE html>
<html lang="el">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css">
<h2>Ολοκλήρωση Παραγγελίας</h2>
</head>
<body>

<form method="post" action="order.php">
  <input type="text" name="firstname" placeholder="Όνομα" required>
  <input type="text" name="lastname" placeholder="Επώνυμο" required>
  <input type="email" name="email" placeholder="Email" required>
  <input type="text" name="address" placeholder="Διεύθυνση" required>
  <input type="text" name="phone" placeholder="Τηλέφωνο" required>
  <input type="date" name="date" placeholder="Ημερομηνία Παράδοσης" required>
  <button type="submit">Υποβολή Παραγγελίας</button>
</form>
</body>
</html>