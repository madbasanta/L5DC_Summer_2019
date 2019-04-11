
	
	<?php
 session_start();                                                                                
include'include/dbconnect.php';


include 'function.php';

if (isset($_POST['submit']) && $_POST['submit']=='Submit Message'){
	$data=array();
	$data['name']=cyber($_POST['name']);
	$data['email']=cyber($_POST['email']);
	$data['phone']=cyber($_POST['phone']);
	$data['subject']=cyber($_POST['subject']);
	$data['date']=cyber($_POST['date']);
	
	$data['message']=cyber($_POST['message']);
	
		
		   $result=booked($data);
		   if ($result){
			   $_SESSION['user']=$data['name'];
			   $_SESSION['success']="Booking has been done successfully!! Thank you";
			   header('location:./user/booking.php');
		   }
		   else{
			   $_SESSION['error']="Failed";
            	header('location:location.php');
		   }
			
		
}
						


	
	
	
?>



