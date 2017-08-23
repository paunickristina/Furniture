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
					<li><a href="#" class="button1 adminButton">Insert product</a></li>
					<li><a href="update.php" class="button1 adminButton">Update product</a></li>
					<li><a href="delete.php" class="button1 adminButton">Delete product</a></li>
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
				//Kod gde korisnik bira tip sobe proizvoda koji zeli da doda
				while($row=mysqli_fetch_object($result))
				{
					$roomType=$row->roomType;
					$changedRoomType=replace_dashes($row->roomType);
					echo "<div class='category'>";
					echo "<a href='insert.php?roomType=$roomType'>";
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
							$categoryName=$row->categoryName; //treba kasnije za slike
							$changedCategoryName=replace_dashes($row->categoryName);
							echo "<div class='category'>";
							echo "<a href='insert.php?roomType=$roomType&id=$row->id'>";
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
				
		

	<section id="operation">
		<?php
			//Ako je izabrana kategorija, prikazuje se forma za dodavanje novog proizvoda
			if(isset($_GET['id'])) //id kategorije
			{
				if(is_numeric($_GET['id']))
				{
					//Forma
					echo "<div class='wrapper'>";
					echo "<h4>Insert product:</h4>";
					echo "<form id='operationForm' name='operationForm' action='' method='post' enctype='multipart/form-data'>";
					echo "<div class='fields'>";
					echo "<label for='name'>Name:</label>";
					echo "<input class='fieldStyle' id='name' name='name' type='text' onmouseup='deleteWarning(this)'>";
					echo "<p class='warning'>Please enter the product name.</p>";
					
					echo "<label for='content'>About product:</label>";
					echo "<textarea class='fieldStyle' id='content' name='content' onmouseup='deleteWarning(this)'></textarea>";
					echo "<p class='warning'>Please fill in this field.</p>";
					echo "<p class='warning'>Maximum content length is 1000 characters.</p>";
					
					echo "<label for='price'>Price:</label>";
					echo "<input class='fieldStyle' id='price' name='price' type='text' onmouseup='deleteWarning(this)'>";
					echo "<p class='warning'>Please enter the product price.</p>";
					
					echo "<label for='upload'>Insert images:<br>(Maximum 4)</label>";
					echo "<input type='file' name='upload[]' id='upload' multiple onclick='deleteWarning(this)'>";
					echo "<p class='warning'>Please upload maximum 4 images.</p>";
					
					echo "<input type='button' value='Insert product' onclick='checkForm()'>"; 
					echo "</div>";
					echo "</form>";
				
					//Dodavanje proizvoda u bazu
					if(isset($_POST['name']) and isset($_POST['content']) and isset($_POST['price']))
					{
						if(empty($_POST['name']) or empty($_POST['content']) or empty($_POST['price']))
						{
							echo "<div class='phpWarnings'>";
							echo "<p>Please fill in all fields.</p>";
							echo "</div>";
						}
						else 
						{
							$roomType=$_GET['roomType'];
							$idCategory=$_GET['id'];
							$name=$_POST['name'];
							$content=$_POST['content'];
							$price=$_POST['price'];
							
							//Upit za dodavanje proizvoda
							$sql="INSERT INTO product(name, roomType, content, idCategory, price) VALUES('$name', '$roomType', '$content', '$idCategory', '$price')";
							mysqli_query($db, $sql);
							
							//Procitam id dodatog proizvoda
							$idProduct=mysqli_insert_id($db);
							
							//Dodavanje slika							
							if(!empty($_FILES['upload']['name']))
							{
								//Broj dodatih slika
								$total=count($_FILES['upload']['name']);
								//Prolazak kroz dodate slike i dodavanje svake u bazu
								for($i=0; $i<$total; $i++)
								{
									
									$tmpFilePath=$_FILES['upload']['tmp_name'][$i];
									$newFilePath="../images/product/$categoryName/".$idProduct."_".($i+1).".".pathinfo($_FILES['upload']['name'][$i], PATHINFO_EXTENSION); 
									move_uploaded_file($tmpFilePath, $newFilePath);
									$sql="INSERT INTO gallery(idProduct) VALUES('$idProduct')";
									mysqli_query($db, $sql);
								}
							}
							
							
							if(mysqli_error($db))
								echo mysqli_error($db);
							else 
							{
								//probaj header ovde jos jednom
								echo "<div class='phpWarnings'>";
								echo "<p>PRODUCT WAS SUCCESSFULLY ADDED.</p>";
								echo "<p><a href='administration.php'>Back to administration panel.</a></p>";
								echo "</div>";				
							}
						}
					}
					
					echo "</div>";
				}
			
			}
						
			mysqli_close($db); 
		?>
		
	</section> <!-- end #operation -->
			
			
	<footer id="footer">
				
		<div class="wrapper" id="footerBottom">
			<p>Copyright @ Kristina Paunić 2017.</p>
		</div>
		
	</footer> <!-- end #footer-->
	
</body>
</html>

<script type="text/javascript">
	//Funkcija koja proverava formu
	function checkForm()
	{
		var a=document.getElementsByClassName("warning");
		//name
		var name=document.getElementById("name");
		if(name.value=="") 
		{
			name.style.border="1px solid #f00";
			a[0].style.display="block";
			return false;
		}
		
		//content
		var content=document.getElementById("content");
		if(content.value=="") 
		{
			content.style.border="1px solid #f00";
			a[1].style.display="block";
			return false;
		}
		if(content.value.length>1000)
		{
			content.style.border="1px solid #f00";
			a[2].style.display="block";
			return false;
		}
		
		//price
		var price=document.getElementById("price");
		if(price.value=="") 
		{
			price.style.border="1px solid #f00";
			a[3].style.display="block";
			return false;
		}
		
		//upload
		if(document.forms["operationForm"]['upload[]'].files.length>4)
		{
			a[4].style.display="block";
			return false;
		}
		
		//submit forme
		var operationForm=document.getElementById('operationForm');
		operationForm.submit();
		
	}
	
	//Funkcija koja brise upozorenja
	function deleteWarning(b)
	{
		var a=document.getElementsByClassName("warning");
		if(b.id=="name")
		{
			b.style.border="1px solid #d4d3cf";
			a[0].style.display="none";
		}
		
		if(b.id=="content")
		{
			b.style.border="1px solid #d4d3cf";
			a[1].style.display="none";
			a[2].style.display="none";
		}
		
		if(b.id=="price")
		{
			b.style.border="1px solid #d4d3cf";
			a[3].style.display="none";
		}
		
		if(b.id=="upload")
		{
			a[4].style.display="none";
		}
	}
</script>































