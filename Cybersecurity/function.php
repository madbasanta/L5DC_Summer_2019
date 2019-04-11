<?php

function cyber($data){
	
	global $conn;
	return mysqli_real_escape_string($conn,$data);

}
function loginUser($data){
	//debugger($data);
	global $conn;
	$sql="select * from register where email='".$data['email']."' and password='".$data['password']."'";
	$query=mysqli_query($conn,$sql);
	
	$count=mysqli_num_rows($query);
	
	if($count){
		return true;
	}
	else{
		return false;
	}
}	

function registerUser($data){
	//debugger($data);
	global $conn;
	$sql = " insert into register 
			 set
			 fname ='".$data['fname']."',
			 lname = '".$data['lname']."',
			 business = '".$data['business']."',
			 job_title = '".$data['job_title']."',
			 area = '".$data['area']."',
			 email = '".$data['email']."',
			 password = '".$data['password']."',
			 
			 confirm_password = '".$data['confirm_password']."'  ";
	$query = mysqli_query($conn,$sql);
	if($query){
		return true;
	}else{
		return false;
	}
}

function contact($data){
	//debugger($data);
	global $conn;
	$sql = " insert into contact 
			 set
			 name ='".$data['name']."',
			 
			 email = '".$data['email']."',
			 subject= '".$data['subject']."',
			 
			 message= '".$data['message']."'  ";
	$query = mysqli_query($conn,$sql);
	if($query){
		return true;
	}else{
		return false;
	}
}
function booked($data){
	//debugger($data);
	global $conn;
	$sql = " insert into booking 
			 set
			 name ='".$data['name']."',
			 
			 email = '".$data['email']."',
			 phone= '".$data['phone']."',
			 subject= '".$data['subject']."',
			 date= '".$data['date']."',
			 
			 message= '".$data['message']."'  ";
	$query = mysqli_query($conn,$sql);
	if($query){
		return true;
	}else{
		return false;
	}
}








	
	



?>