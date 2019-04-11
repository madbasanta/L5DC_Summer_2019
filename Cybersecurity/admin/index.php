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
            <a href="../index.html"><h1>Admin Pannel</h1></a>
          </div>
        </div>
        <div class="navbar-collapse collapse">
          <div class="menu">
             <ul class="nav nav-tabs" role="tablist">
                <li role="presentation"><a href="index.php" class="active">Dashboard</a></li>
             <li role="presentation"><a href="file.php">File Upload</a></li>
			  <li role="presentation"><a href="viewfile.php" >View Upload Files</a></li>
			  <li role="presentation"><a href="view.php">View User Record</a></li>
              <li role="presentation"><a href="booking.php"  > Manage Booking</a></li>
            </ul>
          </div>
        </div>
      </div>
      <!--/.container-->
	  
	  
	  

	  <img src="img/slide.jpg" alt="Trulli" width="1700" height="800">
    </nav>
	
    <!--/nav-->
  </header>
  <!--/header-->

              
    <section id="main-content">
     <section class="wrapper main-wrapper row">        
          <div class="col-md-12">      
<!-- notification message -->
		<?php if (isset($_SESSION['success'])) : ?>
			<div class="error success" >
				<h3>
					<?php 
						echo $_SESSION['success']; 
						unset($_SESSION['success']);
					?>
				</h3>
			</div>
		<?php endif ?>


          <?php  if (isset($_SESSION['username'])) : ?>
			<h2>Welcome to Dashboard</h2>
			
		<?php endif ?>        
              
         </div>
         
         
        </section>
 

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
