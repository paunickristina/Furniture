<?php
	require_once("../functions.php");
	session_start();
	if(!isset($_SESSION['name']))
	{
		header("Location: ../signIn.php");
		exit();
	}
	if($_SESSION['idStatus']!=2)
	{
		header("Location: ../index.php");
		exit();
	}
?>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<title>Furniture by Kristina</title>

<script src="js/jquery-3.2.1.min.js"></script>

<link rel="stylesheet" type="text/css" href="../css/font-awesome.min.css">

<link href="https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,900&amp;subset=latin-ext" rel="stylesheet">

<link href="../css/style.css" rel="stylesheet" type="text/css">





</head>

<body id="administrationPage">

	<header id="header">
	
		<div id="headerBottom">
			<div class="wrapper">
				<div>
					<h1>Administration</h1>
				</div>
			</div>	
		</div>
		
		<div id="headerAdmin">
			<div class="wrapper">
				<h5>Hi <?=$_SESSION['name']?></h5>
				<p>What would you like to do?</p>
			</div>
		</div>
		
		<div id="headerTop" >
			<div class="wrapper">
				<ul>
					<li><a href="../index.php" class="button1 adminButton">Back to site</a></li>
					<li><a href="insert.php" class="button1 adminButton">Insert product</a></li>
					<li><a href="update.php" class="button1 adminButton">Update product</a></li>
					<li><a href="delete.php" class="button1 adminButton">Delete product</a></li>
					<li><a href="../signIn.php?signOut" class="button1 adminButton">Sign out</a></li> 
				</ul>
			</div>
		</div>
		
	</header> <!-- end #header-->
	
	<section class="select">
	
		<?php
			if(isset($_GET['id']))
			{
				if(is_numeric($_GET['id']))
				{
					$db=connection();
					if(!$db)
					{
						echo "Error: Database connection failed.";
						exit();
					}
					$id=$_GET['id'];
					$sql="UPDATE furniture.product SET product.deleted=1 WHERE product.id=$id";
					mysqli_query($db, $sql);
					echo "<div class='wrapper'>";
					echo "<h5>PRODUCT WAS SUCCESSFULLY DELETED.</h5>";
					echo "</div>";
				}
			}
		?>
		
	</section> <!-- end .select-->
	

	
	
	<footer id="footer">
				
		<div class="wrapper" id="footerBottom">
			<p>Copyright @ Kristina Paunić 2017.</p>
		</div>
		
	</footer> <!-- end #footer-->
	
</body>
</html>
































