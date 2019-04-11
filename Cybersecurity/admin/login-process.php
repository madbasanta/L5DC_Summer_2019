<?php
 session_start();                                                                                
include'include/dbconnect.php';
include'include/notification.php';


include 'function.php';

if (isset($_POST['signin']) && $_POST['signin']=='SignIn'){
	$data=array();
	$data['username']=cyber($_POST['username']);
	$data['password']=cyber($_POST['password']);
	if(empty($data['username'])){
			$_SESSION['error']="Username mustnot be empty!!";
	header('location: index.php');
	}
		elseif(empty($data['password'])){
				$_SESSION['error']="Password is empty!!";
	header('location: index.php');
		}
		else{
		   $result=loginAdmin($data);
		   if ($result){
			   $_SESSION['admin']=$data['username'];
			   $_SESSION['success']="Welcome";
			   header('location:index.php');
		   }
		   else{
			   $_SESSION['error']="Invalid username/password!!";
	header('location: ../loginadmin.php');
		   }
			
		}
}

	



?>
