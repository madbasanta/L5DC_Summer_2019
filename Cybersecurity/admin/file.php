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
  <title>Admin Pannel</title>

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
            <a href="../index.html"><h1>Admin Pannel</h1></a>
          </div>
        </div>
        <div class="navbar-collapse collapse">
          <div class="menu">
            <ul class="nav nav-tabs" role="tablist">
                <li role="presentation"><a href="index.php">Dashboard</a></li>
             <li role="presentation"><a href="file.php" class="active">File Upload</a></li>
			  <li role="presentation"><a href="viewfile.php" >View Upload Files</a></li>
			  <li role="presentation"><a href="view.php">View User Record</a></li>
              <li role="presentation"><a href="booking.php"  > Manage Booking</a></li>
            </ul>
          </div>
        </div>
      </div>
      <!--/.container-->
    </nav>
    <!--/nav-->
  </header>
  <!--/header-->
  
  <?php
  include('include/notification.php');
  ?>
   <section class="contact-page">
    <div class="container">
        <div class="text-center">
        <h2>File Upload</h2>
        <p>Upload Files through here.</p>
      </div>
      <div class="row contact-wrap">
        <div class="col-md-6 col-md-offset-3">
  
     <form action="file-process.php" method="post" role="form" class="contactForm" enctype="multipart/form-data">
            <div class="form-group">
			  <Label>Files Name</label>
              <input type="text" name="file_name" class="form-control" placeholder="File Name">
            
            </div>
           
             
           
            <div class="form-group">
			  <Label>Message</label>
              <textarea class="form-control" name="message" rows="5" required data-msg="Please write something for us"
                placeholder="Message"></textarea>
              
            </div>
			 <div class="form-group">
			  <Label>Files</label>
              <input type="file" name="filetype" class="form-control">
            
            </div>
			
            
				 <div class="text-center"><input type="submit" name="submit" value="Upload" class="btn btn-primary btn-lg "></div>
          </form>
		  </div>
		   </div>
		    </div>
		  </section>
		  
  

</body>
</html>