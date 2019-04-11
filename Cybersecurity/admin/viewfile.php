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
             <li role="presentation"><a href="file.php">File Upload</a></li>
			  <li role="presentation"><a href="viewfile.php" class="active">View Upload Files</a></li>
			  <li role="presentation"><a href="view.php" >View User Record</a></li>
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
  <style>
						th{color:black}
						</style>
  <div class="container">
			<div class="row">
				<div class="col-lg-12"  id="section">
				<?php
				include 'include/notification.php';
				
				?>
                
				<h2>VIEW FILE RECORD</h2>
				<table class="table table-bordered table-hover">
					<thead class="thead-dark">
						<tr>
						
							<th>SN</th>
							<th>File Name</th>
							<th>Message</th>
							
							<th>Files</th>
							<th>ACTION</th>
							
					</thead>
					
					<style>
						tbody{color:black}
						</style>
					<tbody>
					
					
					<?php
					$result=viewfiles();
					$i=1;
					
					foreach($result as $user)
					{
						
					/* debugger($event); */
					?>
					<tr>
							<td><?php echo $i; ?></td>
							
							<td><?php	echo $user['file_name']; ?></td>
							<td><?php echo $user['message']; ?></td>
							<td><?php echo $user['filetype']; ?></td>
							<td>						
							<?php
							$url1="file-process.php?id=".$user['id']."&act=delete";
							?>
								
								<a href="" class="btn btn-success" style="border-radius:50%">EDIT</a>
								<a href="<?php echo $url1?>" style="border-radius:50%" class="btn btn-danger">DELETE</i></a>
							
							</td>
						</tr>
						
					<?php
						$i++;
						}
					?>
						
						
						
					</tbody>
				
				</table>
			
                   
                    
                   
                    
          
					 
					
				</div>
			</div>
		</div>
</body>
</html>