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
			
			  <li role="presentation"><a href="map.php"  class="active">Location</a></li>
              <li role="presentation"><a href="contact.php">contact</a></li>
			                 <li role="presentation"><div class="dropdown">

  <button class="dropbtn">Login<i class="fa fa-caret-down"></button></i>
  <div class="dropdown-content">
    <a href="loginadmin.php">Login Admin</a>
    <a href="login.php">Login User</a>
    <a href="index.html">Logout</a>
  </div>
</div>
              
            </ul>
          </div>
        </div>
      </div>
      <!--/.container-->
    </nav>
    <!--/nav-->
  </header>
  <!--/header-->
   <div class="map">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d19108.04515263079!2d-1.6175660632633742!3d53.226711667051006!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x487987939bc89db5%3A0xfe8bb7638b340fe9!2zQ2hhdHN3b3J0aCwg4KS44KSC4KSv4KWB4KSV4KWN4KSkIOCkheCkp-Ckv-CksOCkvuCknOCljeCkrw!5e0!3m2!1sne!2snp!4v1554424868343!5m2!1sne!2snp" width="1500" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>
  </div>

  <section class="contact-page">
    <div class="container">
      <div class="text-center">
        <h2>Drop Your Message</h2>
        <p>Contact us through here.</p>
      </div>
      <div class="row contact-wrap">
        <div class="col-md-6 col-md-offset-3">
         
          <?php
				include 'include/notification.php';
				
				?>
          <form action="location-process.php" method="post" role="form" class="contactForm">
            <div class="form-group">
              <Label>Name</label>
			  <input type="text" name="name" class="form-control" placeholder="Your Name" data-rule="minlen:4"
                data-msg="Please enter at least 4 chars" />
            
            </div>
            <div class="form-group">
			 <Label>Email</label>
              <input type="email" class="form-control" name="email"  placeholder="Your Email" data-rule="email"
                data-msg="Please enter a valid email" />
             
            </div>
			<div class="form-group">
			 <Label>Contact NO.</label>
              <input type="text" class="form-control" name="phone"  placeholder="Your Contact NO." />
             
            </div>
             <div class="form-group">
			  <Label>Subject of Interest</label>
              <select type="text" class="form-control" name="subject"  placeholder="Subject Of Interest" data-rule="minlen:4"                             
                data-msg="Please enter at least 10 character of Number" required>  
				 <option></option>
				  <option>Word Press</option>
				   <option>Ethical Hacking</option>
                    <option>Programming</option>
                     <option>CSS</option>
					 <option>PHP</option>
					 
			  </select>
            </div>
			<div class="form-group">
			  <Label>Date OF Issue</label>
              <input type="date" class="form-control" name="date"  placeholder="Date Of Booking" data-rule="email"
                data-msg="Please enter a valid email" />
             
            </div>
            <div class="form-group">
			  <Label>Message</label>
              <textarea class="form-control" name="message" rows="5" required data-msg="Please write something for us"
                placeholder="Message"></textarea>
              
            </div>
            
				 <div class="text-center"><input type="submit" name="submit" value="Submit Message" class="btn btn-primary btn-lg "></div>
          </form>
        </div>
      </div>
      <!--/.row-->
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
