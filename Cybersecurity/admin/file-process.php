<?php

session_start();
include 'function.php';
include 'include/dbconnect.php';




	if(isset($_GET['id']) && $_GET['act']=="delete"){
	$id=$_GET['id'];
		$result=filesDelete($id);
		if($result){
			$_SESSION['success']=" Deleted successfully";
			header('location:viewfile.php');
		}else{
			$_SESSION['error']="File couldnot be deleted";
			header('location:file.php');
		}

	   }
	if(isset($_POST['submit']) && $_POST['submit']=="Upload"){
	
		
		
		$ext = pathinfo($_FILES['filetype']['name'],PATHINFO_EXTENSION);
		$allowed_extension= array('jpg','jpeg','png','pdf','zip');
	 if(in_array($ext,$allowed_extension)){
		$fileName = "file".rand(0,1000000).".".$ext;
		$upload=move_uploaded_file($_FILES['filetype']['tmp_name'],
					"uploads/".$fileName);
		if($upload){
				
				$data = array();
				$data['file_name']= cyber($_POST['file_name']);
				$data['message']= cyber($_POST['message']);
				
				$data['filename']= cyber($fileName);
				
				$result = uploadfiles($data);
				if($result){
					$_SESSION['success']="File uploaded";
					header('location:viewfile.php');
				}else{
					$_SESSION['error']="Failed";
					header('location:file.php');
				}
				
				
				
				
		}else{
			
			$_SESSION['error']="File couldnot be uploaded";
			header('location: file.php');
			}
	 }   
	        else{
		
				$_SESSION['error']="extension not allowded";
				header('location: file.php');
		
			}
		
		
	}


?>