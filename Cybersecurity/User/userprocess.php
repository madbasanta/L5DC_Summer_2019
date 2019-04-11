<?php
 session_start();                                                                                
include'include/dbconnect.php';


include 'function.php';




if (isset($_POST['add']) && $_POST['add']=='Insert'){
	$data=array();
	$data['fname']=cyber($_POST['fname']);
	$data['lname']=cyber($_POST['lname']);
	$data['business']=cyber($_POST['business']);
	$data['job_title']=cyber($_POST['job_title']);
	$data['area']=cyber($_POST['area']);
	$data['email']=cyber($_POST['email']);
	$data['password']=cyber($_POST['password']);
	
		   $result=addUser($data);
		   if ($result){
			   
			   $_SESSION['success']="New record added successfully";
			   header('location:view.php');
		   }
		   else{
			   $_SESSION['error']="Invalid !!";
	header('location:adduser.php');
		   }
			
    }
		
		
		if(isset($_GET['id']) && $_GET['act']=="delete"){
		$id=$_GET['id'];
		$result=userDelete($id);
		if($result){
			$_SESSION['success']=" Deleted successfully";
			header('location: view.php');
		}else{
			$_SESSION['error']="File couldnot be deleted";
			header('location: view.php');
		}

	   }
	   
if(isset($_POST['submit']) && $_POST['submit']=="Upload"){
	
	$data=array();
	$data['fname']=cyber($_POST['fname']);
	$data['lname']=cyber($_POST['lname']);
	$data['business']=cyber($_POST['business']);
	$data['job_title']=cyber($_POST['job_title']);
	$data['area']=cyber($_POST['area']);
	$data['email']=cyber($_POST['email']);
	$data['password']=cyber($_POST['password']);
	
		   $result=updateUser($data);
		   if ($result){
			   
			   $_SESSION['success']="Updated successfully";
			   header('location:view.php');
		   }
		   else{
			   $_SESSION['error']="Invalid !!";
	           header('location:adduser.php');
		   }
	
	}

	
	
	
?>

