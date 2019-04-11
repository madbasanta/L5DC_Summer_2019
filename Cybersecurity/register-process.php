<?php
 session_start();                                                                                
include'include/dbconnect.php';


include 'function.php';

if (isset($_POST['signup']) && $_POST['signup']=='SignUp'){
	$data=array();
	$data['fname']=cyber($_POST['fname']);
	$data['lname']=cyber($_POST['lname']);
	$data['business']=cyber($_POST['business']);
	$data['job_title']=cyber($_POST['job_title']);
	$data['area']=cyber($_POST['area']);
	$data['email']=cyber($_POST['email']);
	$data['password']=cyber($_POST['password']);
	$data['confirm_password']=cyber($_POST['confirm_password']);
if ($_POST['password'] != $_POST['confirm_password']) {
			 array($errors, "The two passwords do not match");
		}
		
	
		
		   $result=registerUser($data);
		   if ($result){
			   
			   $_SESSION['success']="Registered succussfully";
			   header('location:./user/index.php');
		   }
		   else{
			   $_SESSION['error']="Invalid Registration!!";
	header('location: index.html');
		   }
			
		}


	
	
	
?>

