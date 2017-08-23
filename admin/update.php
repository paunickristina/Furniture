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
					<li><a href="#" class="button1 adminButton">Update product</a></li>
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
				//Kod gde korisnik bira tip sobe proizvoda koji zeli da promeni
				while($row=mysqli_fetch_object($result))
				{
					$roomType=$row->roomType;
					$changedRoomType=replace_dashes($row->roomType);
					echo "<div class='category'>";
					echo "<a href='update.php?roomType=$roomType'>";
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
						$changedCategoryName=replace_dashes($row->categoryName);
						echo "<div class='category'>";
						echo "<a href='update.php?roomType=$roomType&categoryName=$row->categoryName'>";
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
				
		
		
	<section class="select">
	
		<?php
			//Prikazuju se proizvodi iz odabrane kategorije
			if(isset($_GET['categoryName']))
			{
				echo "<div class='wrapper'>";
				echo "<h4>Select product:</h4>";
					$categoryName=$_GET['categoryName'];
					$sql="SELECT product.id, name, categoryName FROM product JOIN category ON product.idCategory=category.id WHERE categoryName='$categoryName' and product.deleted=0";
					$result=mysqli_query($db, $sql);
					if(mysqli_num_rows($result)==0)
					{
						echo "Choose another category please.";
					}
					else
					{
						while($row=mysqli_fetch_object($result))
						{
							echo "<div class='category'>";
							echo "<a href='update.php?roomType=$roomType&categoryName=$categoryName&id=$row->id'>";
							echo "<img src='../images/product/$categoryName/".$row->id."_1.jpg' alt='$row->name'>";
							echo "<span>$row->name</span>";
							echo "</a>";
							echo "</div>";
						}
					}
				echo "<hr>";	
				echo "</div>";
			}
		?>

	</section> <!-- end .select-->
				

	<section id="operation">
	
		<?php
			//Update proizvoda
			$name="";
			$content="";
			$price="";
			if(isset($_GET['id']))
			{
				if(is_numeric($_GET['id']))
				{
					$id=$_GET['id'];
					$sql="SELECT name, content, price FROM product WHERE product.id=$id and product.deleted=0 LIMIT 1"; //kad nadje jedan, ne trazi dalje
					$result=mysqli_query($db, $sql);
					$row=mysqli_fetch_object($result);
					//Procitam vrednosti iz baze i unesem ih u formu
					$name=$row->name;
					$content=$row->content;
					$price=$row->price;
					echo "<div class='wrapper'>";
					echo "<h4>Update product:</h4>";
					
					echo "<form id='operationForm' name='operationForm' action='' method='post' enctype='multipart/form-data'>";
					echo "<div class='fields'>";
					
					echo "<label for='name'>Name:</label>";
					echo "<input class='fieldStyle' id='name' name='name' type='text' value='$name' onmouseup='deleteWarning(this)'>";
					echo "<p class='warning'>Please enter the product name.</p>";
					
					echo "<label for='content'>About product:</label>";
					echo "<textarea class='fieldStyle' id='content' name='content' onmouseup='deleteWarning(this)'>$content</textarea>";
					echo "<p class='warning'>Please fill in this field.</p>";
					echo "<p class='warning'>Maximum content length is 1000 characters.</p>";
					
					echo "<label for='price'>Price:</label>";
					echo "<input class='fieldStyle' id='price' name='price' type='text' value='$price' onmouseup='deleteWarning(this)'>";
					echo "<p class='warning'>Please enter the product price.</p>";
					
					echo "<label>Update images:</label>";
					echo "<div id='updateImages'>";
					$sql="SELECT * FROM gallery WHERE gallery.idProduct=$id";
					$result=mysqli_query($db, $sql);
					$total=mysqli_num_rows($result);
					
					//Prikazuju se slike koje postoje
					for($i=0; $i<$total; $i++)
					{
						echo "<div class='updateImages'>";
						echo "<img src='../images/product/$categoryName/".$id."_".($i+1).".jpg' alt='No photo'>";
						echo "<span><input type='file' name='updatePhoto[$i]' multiple></span>";
						echo "</div>";
					}
					//I koje ne postoje, do 4
					if($total<4)
					{
						for($i=$total; $i<4; $i++)
						{
							echo "<div class='updateImages'>";
							echo "<img src='../images/product/$categoryName/".$id."_".($i+1).".jpg' alt='No photo'>";
							echo "<span><input type='file' name='uploadPhoto[$i]'></span>";
							echo "</div>";
						}
					}
					
					echo "</div>"; //end #updateImages
					
					echo "<label>&nbsp;</label>";
					echo "<input type='button' value='Update product' onclick='checkForm()'>"; 
					echo "</div>"; //end .fields
					echo "</form>";
					
					//Update ako su poslati svi podaci
					if(isset($_POST['name']) and isset($_POST['content']) and isset($_POST['price']))
					{
						$name=$_POST['name'];
						$content=$_POST['content'];
						$price=$_POST['price'];
						
						//Update postojecih slika
						for($i=0; $i<$total; $i++)
						{
							if(!empty($_FILES['updatePhoto']['tmp_name'][$i]))
							{
								//Menjam samo sliku, ime ostaje isto
								$tmpFilePath=$_FILES['updatePhoto']['tmp_name'][$i];
								$newFilePath="../images/product/$categoryName/".$id."_".($i+1).".".pathinfo($_FILES['updatePhoto']['name'][$i], PATHINFO_EXTENSION); 
								move_uploaded_file($tmpFilePath, $newFilePath);
							}
						}
						
						//Upload novih slika
						for($i=$total; $i<4; $i++)
						{
							if(!empty($_FILES['uploadPhoto']['tmp_name'][$i])) //ako nije prazna putanja do slike, izvrsava upit
							{
								$tmpFilePath=$_FILES['uploadPhoto']['tmp_name'][$i];
								$newFilePath="../images/product/$categoryName/".$id."_".($i+1).".".pathinfo($_FILES['uploadPhoto']['name'][$i], PATHINFO_EXTENSION); 
								move_uploaded_file($tmpFilePath, $newFilePath);
								$sql="INSERT INTO gallery(idProduct) VALUES('$id')";
								mysqli_query($db, $sql);
							}
						}
						
						//Update proizvoda
						$sql="UPDATE product SET name='$name', content='$content', price='$price' WHERE id=$id";
						mysqli_query($db, $sql);
						
						if(mysqli_error($db))
							echo mysqli_error($db);
						else 
						{
							echo "<div class='phpWarnings'>";
							echo "<p>PRODUCT WAS SUCCESSFULLY UPDATED.</p>";
							echo "<p><a href='administration.php'>Back to administration panel.</a></p>";
							echo "</div>";
						}
					}
					
					echo "</div>"; //end .wrapper
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
	}
</script>






























