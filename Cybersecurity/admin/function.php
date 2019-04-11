<?php

function cyber($data){
	
	global $conn;
	return mysqli_real_escape_string($conn,$data);

}
function loginAdmin($data){
	//debugger($data);
	global $conn;
	$sql="select * from adminpannel where username='".$data['username']."' and password='".$data['password']."'";
	$query=mysqli_query($conn,$sql);
	
	$count=mysqli_num_rows($query);
	
	if($count){
		return true;
	}
	else{
		return false;
	}
}
function viewUser(){
	global $conn;
	$sql= "select * from adduser order by id desc";
	$query=mysqli_query($conn,$sql);
	$count=mysqli_num_rows($query);
	
	if($count!=0){
		$data=array();
		while($row=mysqli_fetch_assoc($query)){
			$data[]=$row;
		}
		return $data;
		
	
	}else{
		return false;
	}
}
	
function viewBooked(){
	global $conn;
	$sql= "select * from booking order by id desc";
	$query=mysqli_query($conn,$sql);
	$count=mysqli_num_rows($query);
	
	if($count!=0){
		$data=array();
		while($row=mysqli_fetch_assoc($query)){
			$data[]=$row;
		}
		return $data;
		
	
	}else{
		return false;
	}
}

function bookingDelete($id){
	global $conn;
	$sql="delete from booking where id=$id";
	
	$query=mysqli_query($conn,$sql);
	if($query){
		return true;
	}else{
		return false;
	}
	
}

function uploadfiles($data){
	
	/* debugger($data); */
	global $conn;
	$sql = " insert into files
			 set
			 file_name ='".$data['file_name']."',
			 message = '".$data['message']."',
			 filetype = '".$data['filename']."'  ";
	$query = mysqli_query($conn,$sql);
	if($query){
		return true;
	}else{
		return false;
	}
}
function filesDelete($id){
	global $conn;
	$sql="delete from files where id=$id";
	
	$query=mysqli_query($conn,$sql);
	if($query){
		return true;
	}else{
		return false;
	}
	
}
function viewfiles(){
	global $conn;
	$sql= "select * from files order by id desc";
	$query=mysqli_query($conn,$sql);
	$count=mysqli_num_rows($query);
	
	if($count!=0){
		$data=array();
		while($row=mysqli_fetch_assoc($query)){
			$data[]=$row;
		}
		return $data;
		
	
	}else{
		return false;
	}
}



?>


	
	



