<?php 
session_start();
include 'include/dbconnect.php';
include 'function.php';
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
  <title>User Dashboard</title>

  <!-- Bootstrap -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="css/font-awesome.min.css">
  <link rel="stylesheet" href="css/animate.css">
  <link href="css/animate.min.css" rel="stylesheet">
  <link href="css/style.css" rel="stylesheet" />
  
</head>

<body>
  <header id="header">
    <nav class="navbar navbar-default navbar-static-top" role="banner">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
          <div class="navbar-brand">
            <a href="../index.html"><h1>User Dashboard</h1></a>
          </div>
        </div>
        <div class="navbar-collapse collapse">
          <div class="menu">
            <ul class="nav nav-tabs" role="tablist">
                 <li role="presentation"><a href="index.php">Dashboard</a></li>
              <li role="presentation"><a href="adduser.php"  class="active" >Add New Record</a></li>
              
			  <li role="presentation"><a href="view.php">View Record</a></li>
              <li role="presentation"><a href="booking.php" >Booking</a></li>
			   <li role="presentation"><a href="viewfile.php">View Upload Files</a></li>
            </ul>
          </div>
        </div>
      </div>
      <!--/.container-->
    </nav>
    <!--/nav-->
  </header>
  <!--/header-->

  <section class="contact-page">
    <div class="container">
	 <?php
				include 'include/notification.php';
				
				?>
				<?php 
					if(isset($_GET['id']) && $_GET['act']=="edit")
					{
					$id=$_GET['id'];
					$result = editUser($id);
				/* 	 debugger($result);
					exit;  */
				?>
	      <div class="text-center">
        
        <h3>Update User Information</h3>
      </div>
      <div class="row contact-wrap">
        <div class="col-md-6 col-md-offset-3">
        
          <form action="userprocess.php" method="post" role="form" class="contactForm">
          
            <div class="form-group">
						<label for="fullname" >First Name</label>
						<input type="text" name="fname"  placeholder="First Name" value="<?php echo $result[0]['fname']; ?>" required  class="form-control">
					</div>
					<div class="form-group">
                        <label for="name">Last Name</label><br>
                        <input type="text" name="lname" placeholder="Last Name" value="<?php echo $result[0]['lname']; ?>" required  class="form-control">
                    </div>
					<div class="form-group">
				        <label for="name">Business name</label><br>
						<input type="text" name="business" placeholder="Business Name" value="<?php echo $result[0]['business']; ?>" required  class="form-control" >
				            
				    </div>
				    <div class="form-group">
                       <label for="name">Job Title</label>
					   <input type="text" name="job_title" placeholder="Job Title" value="<?php echo $result[0]['job_title']; ?>" required  class="form-control" >
              
                    </div>
					<div class="form-group">
					   <label for="fullname">Area of Cybersecurity Interest</label>
					   <input type="text" name="area"  placeholder="Area of Cybersecurity Interest" value="<?php echo $result[0]['area']; ?>" required class="form-control">
					</div>
				    <div class="form-group">
						<label for="fullname">Email</label>
						<input type="text" name="email"  placeholder="Email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" title="Please write correct email" value="<?php echo $result[0]['email']; ?>"class="form-control">
					</div>
            <div class="form-group">
						<label for="password">Password</label>
						<input type="password" name="password"  placeholder="Password" value="<?php echo $result[0]['password']; ?>" required  class="form-control">
					</div>
            <!--End form-group-->
             <div class="form-inline">
              <input type="checkbox" name="term" value="true" required style="margin-left:10px;">
              <span style="margin-left:10px; color:black;"><b>I agree with<a href="../terms and condition.html" style="color:blue;"><u> terms and condition.</u></a></b></span>
            </div>
			
					<div class="text-center"> <input type="submit" name="submit" value="Upload" class="btn btn-danger btn-lg center-aligned"></div>
					
          </form>
        </div>
      </div>
      <!--/.row-->
	
		<?php
					}
					else{
				?>
	   
      <div class="text-center">
        
        <h3>Insert New Information</h3>
      </div>
      <div class="row contact-wrap">
        <div class="col-md-6 col-md-offset-3">
         <?php
				include 'include/notification.php';
				
				?>
          <form action="userprocess.php" method="post" role="form" class="contactForm">
          
            <div class="form-group">
						<label for="fullname" >First Name</label>
						<input type="text" name="fname"  placeholder="First Name" required  class="form-control">
					</div>
					<div class="form-group">
                        <label for="name">Last Name</label><br>
                        <input type="text" name="lname" placeholder="Last Name" required  class="form-control">
                    </div>
					<div class="form-group">
				        <label for="name">Business name</label><br>
						<input type="text" name="business" placeholder="Business Name" required  class="form-control" >
				            
				    </div>
				    <div class="form-group">
                       <label for="name">Job Title</label>
					   <input type="text" name="job_title" placeholder="Job Title" required  class="form-control" >
              
                    </div>
					<div class="form-group">
					   <label for="fullname">Area of Cybersecurity Interest</label>
					   <input type="text" name="area"  placeholder="Area of Cybersecurity Interest"  class="form-control">
					</div>
				    <div class="form-group">
						<label for="fullname">Email</label>
						<input type="text" name="email"  placeholder="Email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" title="Please write correct email" class="form-control">
					</div>
            <div class="form-group">
						<label for="password">Password</label>
						<input type="password" name="password"  placeholder="Password" required  class="form-control">
					</div>
            <!--End form-group-->
             <div class="form-inline">
              <input type="checkbox" name="term" value="true" required style="margin-left:10px;">
              <span style="margin-left:10px; color:black;"><b>I agree with<a href="../terms and condition.html" style="color:blue;"><u> terms and condition.</u></a></b></span>
            </div>
			
					<div class="text-center"> <input type="submit" name="add" value="Insert" class="btn btn-danger btn-lg center-aligned"></div>
					
          </form>
        </div>
      </div>
      <!--/.row-->
	  
	  <?php
	}

?>
		
    </div>
    <!--/.container-->
  </section>
  <!--/#contact-page-->

  </footer>

  <div class="sub-footer">
    <div class="container">
      <div class="social-icon">
        <div class="col-md-4">
          <ul class="social-network">
            <li><a href="#" class="fb tool-tip" title="Facebook"><i class="fa fa-facebook"></i></a></li>
            <li><a href="#" class="twitter tool-tip" title="Twitter"><i class="fa fa-twitter"></i></a></li>
            <li><a href="#" class="gplus tool-tip" title="Google Plus"><i class="fa fa-google-plus"></i></a></li>
            <li><a href="#" class="linkedin tool-tip" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
            <li><a href="#" class="ytube tool-tip" title="You Tube"><i class="fa fa-youtube-play"></i></a></li>
          </ul>
        </div>
      </div>

      <div class="col-md-4 col-md-offset-4">
        <div class="copyright">
      
          &copy; Curious Cybersecurity. All Rights Reserved.
          <div class="credits">
       
            Designed by <a href="#">Nischal</a>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src="js/jquery.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="js/bootstrap.min.js"></script>
  <script src="js/wow.min.js"></script>
  <script>
    wow = new WOW({}).init();
  </script>

</body>

</html>
