<?php
if(isset($_POST['submit'])){
	$file=$_FILES['file']['name'];
	$fileName=$_FILES['file']['name'];
	$fileTmpName=$_FILES['file']['tmp_name'];
	$fileSize=$_FILES['file']['size'];
	$fileError=$_FILES['file']['error'];
	$fileExt=$_FILES['file']['type'];
	
	$fileExt=explode('.',$fileName);
	$fileActualExt=strtolower(end($fileExt));
	$allowed=array('jpg','png','jpeg','pdf');
	if(in_array($fileActualExt,$allowed)){
		if($fileError===0){
			if($fileSize<1000000){
				$fileDestination='uploads/'.$fileName;
				move_uploaded_file($fileTmpName,$fileDestination);
				header('location:index.php?File uploaded successfully');
			}
			else{
				echo"your file is too big";
			}
		}
		else{
			echo"Files couldnot be uploaded!!";
		}
	}
	else{
		echo"Extension not allowed.";
	}
}

?>