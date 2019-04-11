<?php
 session_start();                                                                                
include'include/dbconnect.php';


include 'function.php';

if (isset($_POST['submit']) && $_POST['submit']=='Submit Message'){
	$data=array();
	$data['name']=cyber($_POST['name']);
	$data['email']=cyber($_POST['email']);
	$data['subject']=cyber($_POST['subject']);
	$data['message']=cyber($_POST['message']);
	
		
		   $result=contact($data);
		   if ($result){
			   $_SESSION['user']=$data['name'];
			   $_SESSION['success']="Your message has been sent!! Thank you";
			   header('location:index.html');
		   }
		   else{
			   $_SESSION['error']="Failed";
            	header('location: contact.html');
		   }
			
		
}

	
	
	
?>

