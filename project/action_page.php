<?php
session_start();
$username = $_POST["username"];
$password = $_POST["password"];

 $DB_SERVER = "localhost";
 $DB_NAME = "zaxaroplasteio";
 $DB_USER = "root";
 $DB_PASSWORD = "";
 
  $dblink = mysqli_connect($DB_SERVER, $DB_USER, $DB_PASSWORD, $DB_NAME)
 or die('Unable to connect to database!');
 $sql_query = "SELECT * FROM `users` WHERE username='$username' AND password='$password'";
 $result = mysqli_query($dblink, $sql_query);
  if (mysqli_num_rows($result) > 0){
$_SESSION['username'] = $username;
header("Location: doctype.html");
exit();
  }else{
	  echo "Λάθος στοιχεία σύνδεσης!";
  }
?>
<html>
<head> <meta charset="utf-8" /> </head>
<body>
<br>
<td> <a href="doctype.html">Επιστροφή στην αρχική</a> </td>
</body>
</html>