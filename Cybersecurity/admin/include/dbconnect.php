<?php
$conn=mysqli_connect("localhost","root","") or die("couldnot connect database");
$db=mysqli_select_db($conn,"cybersecurity") or die (mysqli_error($conn));

?>