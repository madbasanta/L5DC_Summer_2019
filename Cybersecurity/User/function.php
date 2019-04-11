<?php

function cyber($data){
	
	global $conn;
	return mysqli_real_escape_string($conn,$data);

}
function addUser($data){
	
	/* debugger($data); */
	global $conn;
	$sql = " insert into adduser 
			 set
			 fname ='".$data['fname']."',
			 lname = '".$data['lname']."',
			 business = '".$data['business']."',
			 job_title = '".$data['job_title']."',
			 area = '".$data['area']."',
			 email = '".$data['email']."',
			 password = '".$data['password']."' ";
			 
			 
	$query = mysqli_query($conn,$sql);
	if($query){
		return true;
	}else{
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
function editUser($id){
	
	global $conn;
	$sql= "select * from adduser where id=$id";
	
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
function updateUser($data){
	
	/* debugger($data); */
	global $conn;
	$sql = " update adduser 
			 set
			 fname ='".$data['fname']."',
			 lname = '".$data['lname']."',
			 business = '".$data['business']."',
			 job_title = '".$data['job_title']."',
			 area = '".$data['area']."',
			 email = '".$data['email']."'
			 ,password= '".$data['password']."'
			  ";
			 
			 
	$query = mysqli_query($conn,$sql);
	if($query){
		return true;
	}else{
		return false;
	}
}
function userDelete($id){
	global $conn;
	$sql="delete from adduser where id=$id";
	
	$query=mysqli_query($conn,$sql);
	if($query){
		return true;
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