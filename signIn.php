<?php
	require_once("functions.php");
	require_once("class_Log.php");
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

</head>

<body id="signInPage">

	<div id="overlay"></div>

	<header id="header">
	
		<div id="headerTop">
			<div class="wrapper">
				<div id="headerTopRight">
					<ul>
						<li><a href="#" class="current">Sign in</a></li>
						<li><a href="registration.php">Create an account</a></li>
					</ul>
				</div>
			</div>
		</div>
		
		<div id="headerBottom">
			<div class="wrapper">
				<div id="logo">
					<a href="index.php">
						<img src="images/logo.png" alt="Logo">
					</a>
				</div>
			</div>	
		</div>
		
	</header> <!-- end #header--> 
	
	
	<section id="signIn">
		<div class="wrapper">
			<div class="fields">
				<h5>Please sign in:</h5>
			</div>
			
			<form id="signInForm" action="" method="post">
				<div class="fields">
					<label for="email">Enter your e-mail address</label>
					<input class="fieldStyle" id="email" name="email" type="text" onmouseup="deleteWarning(this)">
					<p class="warning">Please enter your e-mail address.</p>
					<p class="warning">There is no account with this e-mail address.</p>
					
					<label for="password">Enter your password</label>
					<input class="fieldStyle" id="password" name="password" type="password" onmouseup="deleteWarning(this)">
					<p class="warning">Please enter your password.</p>
					<p class="warning">Please check your password.</p>
					
					<label>&nbsp;</label>
					<input type="button" value="Sign in" onclick="checkForm()"> 
				</div>
				
			</form>
			
			
			<div class="phpText">
			
			<?php
			
				if(isset($_GET['signOut']))
				{
					session_start();
					unset($_SESSION['name']);
					unset($_SESSION['username']);
					unset($_SESSION['idStatus']);
					session_destroy();
				}
			
				function footer() //funkcija koja stampa footer kad mi treba
				{
					$string="</div>";
					$string.="</div>";
					$string.="</section> <!-- end #signIn-->";
					$string.="<footer id='footer'>";
					ob_start(); 
					include ("templates/footer.php");
					$string.=ob_get_clean();
					$string.="</footer>";
					return $string;
				}
				$db=connection();
				if(!$db)
				{
					echo "Error: Database connection failed.";
					exit();
				}
				if(isset($_POST['email']) and isset($_POST['password']))
				{
					if(!empty($_POST['email']) and !empty($_POST['password']))
					{
						$email=$_POST['email'];
						$password=$_POST['password'];
						$sql="SELECT * FROM users WHERE email='$email' and password=PASSWORD('$password')";
						$result=mysqli_query($db, $sql);
						if(mysqli_num_rows($result)==0)
						{
							echo "Incorrectly entered data.";
							//Upisivanje u log datoteku
							$obj=new Log("Unsuccessful log in with email: '$email' and password: '$password'");
							$obj->writeLog();
							
							exit(footer());
						}
						else
						{
							session_start();
							$row=mysqli_fetch_object($result);
							$_SESSION['name']=$row->name;
							$_SESSION['username']=$row->username;
							$_SESSION['idStatus']=$row->idStatus;
							
							//Upisivanje u log datoteku
							$obj=new Log("Successful user '".$row->username."' log in");
							$obj->writeLog();
							
							if($_SESSION['idStatus']==1)
							{
								header("Location: index.php");
							}
							else
							{
								header ("Location: admin/administration.php");
							}
						}
					}
					else 
						echo "Please fill in all fields.";
					
				}
				
				echo footer();
				mysqli_close($db); //zatvaram konekciju
				
			?>
			
	
</body>
</html>

<script type="text/javascript">

	function checkForm()
	{
		var a=document.getElementsByClassName("warning");
		var email=document.getElementById("email");
		if(email.value=="") 
		{
			email.style.border="1px solid #f00";
			a[0].style.display="block";
			return false;
		}
		var password=document.getElementById("password");
		if(password.value=="") 
		{
			password.style.border="1px solid #f00";
			a[2].style.display="block";
			return false;
		}
		
		var signInForm=document.getElementById("signInForm");
		signInForm.submit();
	}
	
	
	function deleteWarning(b)
	{
		var a=document.getElementsByClassName("warning");
		if(b.id=="email")
		{
			b.style.border="1px solid #d4d3cf";
			a[0].style.display="none";
		}
		if(b.id=="password")
		{
			b.style.border="1px solid #d4d3cf";
			a[2].style.display="none";
		}
	}
	
	
</script>
































