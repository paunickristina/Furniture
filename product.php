<?php
	require_once("functions.php");
	require_once("class_Comments.php");
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
	$(document).ready(function(){
		$('#showForm').click(function(){
			$('#overlay1, #popUp').fadeIn(300);
		});
		$('#overlay1').click(function(){
			$('#overlay1, #popUp').fadeOut(200);
		});
		$('.close').click(function(){
			$('#overlay1, #popUp').fadeOut(200);
		});
	});
</script>

<script>
	$(document).ready(function(){
		$(".galleryPhotos img").click(function(){
			$("#mainPhoto").attr("src", $(this).attr("src"));
		});
		
	});

</script>

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

<body id="productPage">

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
			
			<section id="breadcrumbs">
				
				<?php
					$db=connection();
					if(!$db)
					{
						echo "Error: Database connection failed.";
						exit();
					}
					//Kod za povratak na prethodne stranice
					if(!empty($_GET['id']))
					{
						if(is_numeric($_GET['id']))
						{
							$id=$_GET['id'];
							$sql="SELECT product.id, name, roomType, categoryName FROM product JOIN category ON product.idCategory=category.id WHERE product.id=$id and product.deleted=0 LIMIT 1";
							$result=mysqli_query($db, $sql);
							while($row=mysqli_fetch_object($result))
							{
								$changedRoomType=replace_dashes($row->roomType);
								$changedCategoryName=replace_dashes($row->categoryName);
								echo "<ul>";
								echo "<li><a href='furniture.php?roomType=$row->roomType'>$changedRoomType</a></li>";
								echo "<li><a href='categories.php?categoryName=$row->categoryName'>$changedCategoryName</a></li>";
								echo "<li>$row->name</li>";
								echo "</ul>";
							}
						}
					}
					
				?>
			
				
			</section>
			
			<section id="photoGallery">
			
				<?php
					//Kod koji lista sve slike jednog proizvoda
					if(!empty($_GET['id']))
					{
						if(is_numeric($_GET['id']))
						{
							$id=$_GET['id'];
							$sql="SELECT product.id, name, categoryName FROM product JOIN category ON product.idCategory=category.id WHERE product.id=$id and product.deleted=0";
							$result=mysqli_query($db, $sql);
							while($row=mysqli_fetch_object($result))
							{
								$categoryName=$row->categoryName;
								echo "<div id='onePhoto'>";
								echo "<img id='mainPhoto' src='images/product/$categoryName/".$row->id."_1.jpg' alt='$row->name'>"; 
								echo "</div>";
								
							}
							echo "<div id='smallPhotos'>";
								$sql="SELECT gallery.id, idProduct, name FROM gallery JOIN product ON gallery.idProduct=product.id WHERE product.id=$id and product.deleted=0";
								$result=mysqli_query($db, $sql);
								$i=1;
								while($row=mysqli_fetch_object($result))
								{
									echo "<div class='galleryPhotos'>";
									echo "<img src='images/product/$categoryName/".$row->idProduct."_".$i++.".jpg' alt='$row->name'>";
									echo "</div>";
								}
							echo "</div>";
						}		
					}
				?>
				
			</section>
			
			<section id="aboutProduct">
			
				<?php
					//Kod koji prikazuje informacije o proizvodu
					if(!empty($_GET['id']))
					{
						if(is_numeric($_GET['id']))
						{
							$id=$_GET['id'];
							$sql="SELECT id, name, content, price FROM product WHERE id=$id and product.deleted=0";
							$result=mysqli_query($db, $sql);
							
							if(mysqli_num_rows($result)==0)
							{
								echo "<h5>Choose product, please</h5>";
							}
							else
							{
								while($row=mysqli_fetch_object($result))
								{
									echo "<h2>$row->name</h2>";
									echo "<h5>Information</h5>";
									echo "<p>$row->content</p>";
									echo "<p>&nbsp;</p>";
									echo "<p>Price: &nbsp;&nbsp;&nbsp;<span>$row->price</span></p>";
									echo "<p>&nbsp;</p>";
								}
							}
						}
						else
							echo "<h5>Choose product, please</h5>";
					}
					else
						echo "<h5>Choose product, please</h5>";
				?>
			
				
				<p>Share via: &nbsp;&nbsp;&nbsp;
						<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a> &nbsp; &nbsp;
						<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a> &nbsp; &nbsp;
						<a href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a>
				</p>
			</section>
			
			<hr>
			<article id="banner">
				<div>
					<img src="images/015.jpg" alt="Sale">
				</div>
				<p>Etiam sit amet dolor a orci aliquet finibus. Pellentesque ac lectus at arcu ornare dignissim. Nullam volutpat lacus quis diam hendrerit bibendum.</p>
			</article>
			<hr>

			
			<section id="commentBox" class="negative">
				<h3>Reviews</h3>
				<div id="overlay1"></div>
				<a id="showForm" class="button1">Write a review</a>
				
				<article id="popUp">
					<a class="close"><i class="fa fa-times" aria-hidden="true"></i></a>
					<form id="commentForm" name="commentForm" action="product.php?id=<?= $id?>" method="post">
						<div class="fields">
							<label for="user">Name</label>
							<input id="user" name="user" class="fieldStyle" type="text">
							<label for="comment">Review</label>
							<textarea id="comment" name="comment" class="fieldStyle"></textarea>
						</div>
						<input type="button" value="Send" onclick="checkForm()">
						
					</form>
				</article>
				
					<?php
						//Snimanje komentara u bazu
						if(!empty($_GET['id']))
						{
							if(is_numeric($_GET['id']))
							{
								if(isset($_POST['user']) and isset($_POST['comment']))
								{
									if(!empty($_POST['user']) and !empty($_POST['comment']))
									{
										$user=$_POST['user']; 
										$comment=$_POST['comment']; 
										$user=htmlspecialchars($user, ENT_QUOTES); //menja html karaktere za njihove ekvivalente
										$comment=htmlspecialchars($comment, ENT_QUOTES);
										$user=mysqli_real_escape_string($db, $user); //zaobilazi specijalne karaktere u stringu
										$comment=mysqli_real_escape_string($db, $comment);	
										if(!empty($user) and !empty($comment))
										{
											if(strlen($comment)>1500)
											{
												echo "<br><h5>Maximum review length is 1500 characters!</h5>"; 
											}
											else
											{
												$obj=new Comments($db);
												$obj->insertIntoDatabase($id, $user, $comment);
											}
										}
									}
								}
								
								//Prikazivanje komentara
								Comments::showComments($db, $id);
							}
						}
												
					?>
				
								
			</section>
			
			<section class="moreProducts">
				<h4>View also:</h4>
				
				<?php
					//Kod koji prikazuje druge proizvode iz iste kategorije
					if(!empty($_GET['id']))
					{
						if(is_numeric($_GET['id']))
						{
							$id=$_GET['id'];
							//dobijem kategoriju kojoj pripada izabrani proizvod:
							$sql="SELECT categoryName FROM category JOIN product ON category.id=product.idCategory WHERE product.id=$id and product.deleted=0";
							$result=mysqli_query($db, $sql);
							if(mysqli_num_rows($result)>0)
							{
								$row=mysqli_fetch_object($result);
								$categoryName=$row->categoryName;
								
								$sql="SELECT product.id, name, price, content FROM product JOIN category ON product.idCategory=category.id WHERE categoryName='$categoryName' and product.deleted=0 and product.id<>$id ORDER BY RAND() LIMIT 3"; //da bude razlicit i da se poredjaju bez reda
								$result=mysqli_query($db, $sql);
								while($row=mysqli_fetch_object($result))
								{
									echo "<article>";
									echo "<div>";
									echo "<a href='product.php?id=$row->id'>";
									echo "<img src='images/product/$categoryName/".$row->id."_1.jpg' alt='$row->name'>"; //naziv slike
									echo "</a>";
									echo "</div>";
									echo "<div>";
									echo "<h6>$row->name</h6>";
									echo "<p>$row->price</p>";
									echo "<p>".substr($row->content, 0, 180)."...</p>";
									echo "</div>";
									echo "</article>";
								}
							}
						}
					}
									
					mysqli_close($db); //zatvaranje konekcije
					
				?>
						
			</section>
			
			
			
			
		</div>
	</section> <!-- end #central-->
	
	
	
	
	<footer id="footer">
	
		<?php include("templates/footer.php")?>
	
	</footer> <!-- end #footer-->
	
</body>
</html>

<script type="text/javascript">
	function checkForm()
	{
		var a=document.getElementById("user");
		if(a.value.length==0)
		{
			alert("Please enter your name.");
			return false;
		}
		
		var a=document.getElementById("comment");
		if(a.value.length==0)
		{
			alert("Please write your review.");
			return false;
		}
		
		var commentForm=document.getElementById("commentForm");
		commentForm.submit();
	}
</script>
































