<?php 
	require_once("functions.php");
?>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<title>Furniture by Kristina</title>

<script src="js/jquery-3.2.1.min.js"></script>

<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">

<link href="https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,900&amp;subset=latin-ext" rel="stylesheet">

<link href="css/style.css" rel="stylesheet" type="text/css">



<script>
	$(document).ready(function() {

		var respmenu 		= $('#respmenu');
		var	menu 			= $('#nav>ul');

		$(respmenu).on('click', function(e) {
			e.preventDefault();
			menu.slideToggle();
		});

		$(window).resize(function(){
			var sirina = $(window).width();
			if(sirina > 768 && menu.is(':hidden')) {
				menu.removeAttr('style');
			}	
		});
	});	
</script>


</head>

<body id="furniturePage">

	<div id="overlay"></div>

	<header id="header">
	
		<?php include("templates/header.php")?>
	
		
		<div id="headerNav">
			<div class="wrapper">
				<nav id="nav" class="negative">
					<ul>
						<li><a href="index.php">Home</a></li>
						<li><a href="about.php">About us</a></li>
						<li><a href="#" id="button" class="current">Our furniture</a>
							<div id="menu">
							
								<?php include("templates/menu.php");?>
							
							</div>
						</li>
						<li><a href="inspiration.php">Inspiration</a></li>
						<li><a href="contact.php">Contact</a></li>
					</ul>
					
					<a href="#" id="respmenu" class="button1"><i class="fa fa-lg fa-navicon"></i>&nbsp;&nbsp;&nbsp;&nbsp;Navigation</a>
					
				</nav>
			</div>
		</div>
	</header> <!-- end #header-->
	

	
	<section id="central">
		<div class="wrapper">
		
			<aside id="sidebar">
				<ul>
				
				
					<?php
						//Dinamicki sidebar
						$db=connection();
						if(!$db)
						{
							echo "Error: Database connection failed.";
							exit();
						}
						$sql="SELECT DISTINCT roomType FROM product WHERE product.deleted=0";
						$result=mysqli_query($db, $sql);
						
						while($row=mysqli_fetch_object($result))
						{
							$roomType=$row->roomType;
							for($i=0; $i<count($roomType); $i++)
							{
								$changedRoomType=replace_dashes($row->roomType);
								echo "<li><a href='furniture.php?roomType=$roomType'>$changedRoomType</a>"; 
								echo "<ul>";
									$sql1="SELECT DISTINCT category.id, categoryName FROM category JOIN product ON category.id=product.idCategory WHERE product.roomType='$roomType' and product.deleted=0";
									$result1=mysqli_query($db, $sql1);
									while($row=mysqli_fetch_object($result1)) 
									{
										$changedCategoryName=replace_dashes($row->categoryName); //menjam crtice
										echo "<li><a href='categories.php?categoryName=$row->categoryName'>$changedCategoryName</a></li>"; 
									}
								echo "</ul>";
								echo "</li>";
							}
						}
						
					?>
				
										
				</ul>
				
			</aside>
			
			
			<div id="main">
			
				<?php
					//Kod koji prikazuje proizvode iz odredjene kategorije
					if(!empty($_GET['searchFor']))
					{
						$searchFor=$_GET['searchFor'];
						$sql="SELECT product.id, name, categoryName FROM product JOIN category ON product.idCategory=category.id WHERE name LIKE ('%".$searchFor."%') or roomType LIKE ('%".$searchFor."%') or categoryName LIKE ('%".$searchFor."%') and product.deleted=0";
						$result=mysqli_query($db, $sql);
						if(mysqli_num_rows($result)==0)
						{
							echo "<h5>No results found.</h5>";
						}
						else
						{
							echo "<h4>Products</h4>";
							while($row=mysqli_fetch_object($result))
							{
								$categoryName=$row->categoryName;
								echo "<div class='category'>";
								echo "<a href='product.php?id=$row->id'>"; 
								echo "<img src='images/product/$categoryName/".$row->id."_1.jpg' alt='$row->name'>"; 
								echo "<span>$row->name</span>"; 
								echo "</a>";
								echo "</div>";
							}
						}
					}
					else echo "<h5>Search for product, please.</h5>";
					
					mysqli_close($db);
					
					
				?>
			
							
			</div> <!-- end #main-->
			
		</div>
	</section> <!-- end #central-->
	
	
	
	
	<footer id="footer">
	
		<?php include("templates/footer.php")?>
		
	</footer> <!-- end #footer-->
	
</body>
</html>



