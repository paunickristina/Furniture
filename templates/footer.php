<?php
	require_once("functions.php");
?>

<div class="wrapper">
			
	<div class="footerBlock">
		<ul>
			<li>Our company</li>
			<li><a href="about.php">About us</a></li>
			<li><a href="#">Privacy policy</a></li>
			<li><a href="#">Terms &amp; Conditions</a></li>
		</ul>
	</div>
	
	<div class="footerBlock">
		<ul>
			<li>Our products</li>
			
			<?php
				//dinamicki meni
				$db=connection();
				if(!$db)
				{
					echo "Error: Datebase connection failed.";
					exit();
				}
				$sql="SELECT DISTINCT roomType FROM product";
				$result=mysqli_query($db, $sql);
				while($row=mysqli_fetch_object($result))
				{
					//zameni crtice:
					$changedRow=replace_dashes($row->roomType);
					echo "<li><a href='furniture.php?roomType=$row->roomType'>$changedRow</a></li>";
				}
				mysqli_close($db);
			?>
			
		</ul>
	</div>
	
	<div class="footerBlock">
		<ul>
			<li>Customer service</li>
			<li><a href="#">Help centre</a></li>
			<li><a href="#">Delivery</a></li>
			<li><a href="contact.php">Contact us</a></li>
		</ul>
	</div>
	
	<div class="footerBlockRight">
		<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
		<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
		<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
		<a href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a>
	</div>
	
</div>

<div class="wrapper" id="footerBottom">
	<p>Copyright @ Kristina Paunić 2017.</p>
</div>