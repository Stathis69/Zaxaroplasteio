<?php
 function PostValue($key, $emptyValue){
 if (key_exists($key, $_POST)) {
 $value = $_POST[$key];
 } else {
 $value = $emptyValue;
 }
 return $value;
 }
 function ErrorExit($message){
 echo "<p>Σφάλμα: {$message}</p>\n";
 echo "<p><a href=\"doctype.html\">Επιστροφή</a></p>\n";
 exit;
 }
 function AddError($message){
 global $data_ok, $error_message;
 $error_message .= "{$message}</br/>\n";
 $data_ok = false;
 }
?>