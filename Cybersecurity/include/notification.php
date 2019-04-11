<?php

if(isset($_SESSION['error']) && $_SESSION['error']!="")
{
?>
	<div class="alert alert-danger">
	<?php  echo $_SESSION['error']; ?>
	</div>

<?php

}
$_SESSION['error']="";
if(isset($_SESSION['success']) && $_SESSION['success']!="")
{
?>
	<div class="alert alert-success">
		<?php echo $_SESSION['success']; ?>
	</div>

<?php
}
$_SESSION['success']="";

?>
