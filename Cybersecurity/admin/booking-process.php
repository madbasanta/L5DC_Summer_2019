<?php
 session_start();                                                                                
include'include/dbconnect.php';


include 'function.php';
	if(isset($_GET['id']) && $_GET['act']=="delete"){
	$id=$_GET['id'];
		$result=bookingDelete($id);
		if($result){
			$_SESSION['success']=" Deleted successfully";
			header('location:booking.php');
		}else{
			$_SESSION['error']="File couldnot be deleted";
			header('location:booking.php');
		}

	   }
	  

?>