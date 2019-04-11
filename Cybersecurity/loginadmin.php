<?php 
session_start();
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
  <title>Curious CyberSecurity</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/topnav.css">
<link rel="stylesheet" href="css/dropdown.css">

<div class="icon-bar">
<div class="wow slideInLeft" data-wow-offset="0" data-wow-delay="1.5s">
  <a class="active" href="http://www.facebook.com"target="_blank"><i class="fa fa-facebook"></i></a>  
  <a href="http://www.google.com" target="_blank"><i class="fa fa-globe"></i></a>
  <a href="http://www.youtube.com" target="_blank" ><i class="fa fa-youtube" ></i></a> 

 <a href="http://www.youtube.com" target="_blank" ><i class="fa fa-twitter" ></i></a> 
 <a href="http://www.youtube.com" target="_blank" ><i class="fa fa-search" ></i></a>   
  </div>
</div>
</div>

  <!-- Bootstrap -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="css/font-awesome.min.css">
  <link rel="stylesheet" href="css/animate.css">
  <link href="css/animate.min.css" rel="stylesheet">
  <link href="css/style.css" rel="stylesheet" />
  
</head>

<body>
  <header id="header">
    <nav class="navbar navbar-default  navbar-static-top" role="banner">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
          <div class="navbar-brand">
            <a href="index.html">
			<h1>Curious CyberSecurity</h1></a>
			
          </div>
        </div>
		
        <div class="navbar-collapse collapse">
          <div class="menu">
            <ul class="nav nav-tabs" role="tablist">
             <li role="presentation"><a href="index.html" >Home</a></li>
              <li role="presentation"><a href="ourapproach.php">Our Approach</a></li>
             			 			          <li role="presentation"><div class="dropdown">

  <button class="dropbtn"><a href="services.php"><font color="White">SERVICES</font><i class="fa fa-caret-down"></button></i>
  <div class="dropdown-content">
    <a href="./user/booking.php">View Booking</a>
    <a href="login.php">Login User</a>
    <a href="./user/index.php">User Dashboard</a>
  </div>
</div>
</li>
			  <li role="presentation"><a href="location.php">Location</a></li>
              <li role="presentation"><a href="contact.php" >contact</a></li>
			  			   <li role="presentation"><div class="dropdown">

  <button class="dropbtn">Login<i class="fa fa-caret-down"></button></i>
  <div class="dropdown-content">
    <a href="loginadmin.php">Login Admin</a>
    <a href="login.php">Login User</a>
    <a href="index.html">Logout</a>
  </div>
</div>
			  </a>
			  </li>
              
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
      <div class="text-center">
         <h2>Login</h2>
        <p>To go to Admin Panel</p>
      </div>
      <div class="row contact-wrap">
        <div class="col-md-6 col-md-offset-3">
         
          <?php
				include 'include/notification.php';
				
				?>
         <form action="./admin/login-process.php" method="post" role="form" class="contactForm">
          
            <div class="form-group">
			<label>Username</label>
              <input type="email" class="form-control" name="username"  placeholder="Your Username" />
            
            </div>
            <div class="form-group">
			<label>Password</label>
              <input type="Password" class="form-control" name="password" placeholder="Password" data-rule="minlen:4"
                data-msg="Please enter at least 8 chars of Password" />
              <div class="validation"></div>
            </div>
				<div class="form-group">
				  <input type="checkbox" name="remember">
					<label>Remember-me</label>
				</div>			
			 <div class="text-center"><input type="submit" name="signin" value="SignIn" class="btn btn-primary btn-lg "></div>
            
           
			 
            
          </form>
        </div>
      </div>
      <!--/.row-->
    </div>
    <!--/.container-->
  </section>
  <!--/#contact-page-->
  

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
       
             Designed by <a href="https://www.facebook.com/nischal.tripathi.92">Nischal</a>
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
