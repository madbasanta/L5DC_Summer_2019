<?php
 session_start();                                                                                
include'include/dbconnect.php';
include'include/notification.php';


include 'function.php';

if (isset($_POST['signin']) && $_POST['signin']=='SignIn'){
	$data=array();
	$data['email']=cyber($_POST['email']);
	$data['password']=cyber($_POST['password']);
	


if(empty($data['email'])){
	$_SESSION['error']="email must not be empty";
	header('location: login.php');

}elseif(empty($data['password'])){

	$_SESSION['error']="password must not be empty";
	header('location: login.php');
}else{
	$result = loginUser($data);
	
	if($_COOKIE['user']>=3){
	$_SESSION['error']="Blocked for 3 min";
	header('location: login.php');
	}else{
	
	if($result){
		
		$_SESSION['user']= $data['email'];
		$_SESSION['success']= "Welcome"." Login Successfully ".$data['email'];
		
		header('location: ./user/index.php');
		
	}else{
	
		setcookie("user",1,time()+180);
		
		if(isset($_COOKIE['user'])){
				setcookie("user",$_COOKIE['user']+1,time()+180);
				$_SESSION['error']="Wrong attempt!! 1 attempt left";
				header('location: login.php');
				
		
		}else{
			
			$_SESSION['error']="Wrong attempt!! 2 attempt left";
			header('location: login.php');
		}
		
		
		
		
	}
	
	}

}



}else{
	$_SESSION['error']="invalid access!!";
	header('location: index.php');
}



?>
