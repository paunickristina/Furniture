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
					<li><a href="#" class="button1 adminButton">Delete product</a></li>
					<li><a href="../signIn.php?signOut" class="button1 adminButton">Sign out</a></li> 
				</ul>
			</div>
		</div>
		
	</header> <!-- end #header-->
	

			
	<section class="select">

		<div class="wrapper">

			<h4>Select room type:</h4>
			
			<?php
				$db=connection();
				if(!$db)
				{
					echo "Error: Database connection failed.";
					exit();
				}
				$sql="SELECT DISTINCT roomType FROM product WHERE product.deleted=0";
				$result=mysqli_query($db, $sql);
				//Kod gde korisnik bira tip sobe proizvoda koji zeli da obrise
				while($row=mysqli_fetch_object($result))
				{
					$roomType=$row->roomType;
					$changedRoomType=replace_dashes($row->roomType);
					echo "<div class='category'>";
					echo "<a href='delete.php?roomType=$roomType'>";
					echo "<img src='../images/room/$row->roomType.jpg' alt='$row->roomType'>";
					echo "<span>$changedRoomType</span>";
					echo "</a>";
					echo "</div>";
				}
				
			?>

			<hr>
		
		</div> <!-- end .wrapper-->
		
	</section> <!-- end .select-->
				
				

	<section class="select">

			<?php
				//Ako je izabran tip sobe, prikazuju se kategorije proizvoda
				if(isset($_GET['roomType']))
				{
					echo "<div class='wrapper'>";
					echo "<h4>Select category:</h4>";
						$roomType=$_GET['roomType'];
						$sql="SELECT DISTINCT category.id, categoryName FROM category JOIN product ON category.id=product.idCategory WHERE product.roomType='$roomType' and product.deleted=0";
						$result=mysqli_query($db, $sql);
						while($row=mysqli_fetch_object($result))
						{
							$categoryName=$row->categoryName; 
							$changedCategoryName=replace_dashes($row->categoryName);
							echo "<div class='category'>";
							echo "<a href='delete.php?roomType=$roomType&categoryName=$row->categoryName'>";
							echo "<img src='../images/category/$row->categoryName.jpg' alt='$row->categoryName'>";
							echo "<span>$changedCategoryName</span>";
							echo "</a>";
							echo "</div>";
						}
					echo "<hr>";
					echo "</div>";
				}
			
			?>

	</section> <!-- end .select-->
				
		
		
	<section class="delete">
	
	<?php
		//Ako je izabrana kategorija, prikazuju se proizvodi iz te kategorije
		if(isset($_GET['categoryName']))
		{
			echo "<div class='wrapper'>";
			echo "<h4>Delete product:</h4>";
				$categoryName=$_GET['categoryName'];
				$sql="SELECT product.id, name, categoryName FROM product JOIN category ON product.idCategory=category.id WHERE categoryName='$categoryName' and product.deleted=0";
				$result=mysqli_query($db, $sql);
				if(mysqli_num_rows($result)==0)
				{
					echo "Choose another category please.";
				}
				else
				{
					$changedCategoryName=replace_dashes($categoryName);
					while($row=mysqli_fetch_object($result))
					{
						echo "<div class='category'>";
						echo "<div>"; 
						echo "<img src='../images/product/$categoryName/".$row->id."_1.jpg' alt='$row->name'>";
						echo "<span>$row->name</span>";
						echo "</div>";
						echo "<a href='administration.php?id=$row->id' class='button1 deleteButton'>Delete</a>";
						echo "</div>";
					}
				}
			
			echo "<hr>";	
			echo "</div>";
			
		}
	
		mysqli_close($db);
	?>


	</section> <!-- end .delete-->
			
	
	<footer id="footer">
				
		<div class="wrapper" id="footerBottom">
			<p>Copyright @ Kristina Paunić 2017.</p>
		</div>
		
	</footer> <!-- end #footer-->
	
</body>
</html>
































