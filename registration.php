<?php
	require_once("functions.php");
	session_start();
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
						<?php
							if(isset($_SESSION['name']))
							{
								echo "<li><a href='signIn.php?signOut'>Hi ".$_SESSION['name']."! Sign out.</a></li>";
							}
							else
							{
									echo "<li><a href='signIn.php'>Sign in</a></li>";
							}
						?>
						
						<li><a href="#" class="current">Create an account</a></li>
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
				<h5>Please create an account:</h5>
			</div>
			
			<form id="signInForm" action="#" method="post">
				<div class="fields">
					<label for="name">Enter your name</label>
					<input class="fieldStyle" id="name" name="name" type="text" onmouseup="deleteWarning(this)">
					<p class="warning">Please enter your name.</p>
					<p class="warning">Please use only letters, numbers and periods.</p>
					
					<label for="lastname">Enter your last name</label>
					<input class="fieldStyle" id="lastname" name="lastname" type="text" onmouseup="deleteWarning(this)">
					<p class="warning">Please enter your last name.</p>
					<p class="warning">Please use only letters, numbers and periods.</p>
					
					<label for="email">Enter your e-mail address</label>
					<input class="fieldStyle" id="email" name="email" type="text" onmouseup="deleteWarning(this)">
					<p class="warning">Please enter your e-mail address.</p>
					<p class="warning">Your e-mail address isn&#39;t correct.</p>
					
					<label for="username">Enter your username</label>
					<input class="fieldStyle" id="username" name="username" type="text" onmouseup="deleteWarning(this)" >
					<p class="warning">Please enter your username.</p>
					<p class="warning">This username already exists.</p>
					<p class="warning">Please use only letters, numbers and periods.</p>
					
					<label for="password">Enter your password</label>
					<input class="fieldStyle" id="password" name="password" type="password" onmouseup="deleteWarning(this)">
					<p class="warning">Please enter your password.</p>
					<p class="warning">Use password with at least 8 characters.</p>
					<p class="warning">Please use only letters, numbers and periods.</p>
					
					<label for="repeatPassword">Repeat your password</label>
					<input class="fieldStyle" id="repeatPassword" name="repeatPassword" type="password" onmouseup="deleteWarning(this)">
					<p class="warning">Please repeat your password.</p>
					<p class="warning">These passwords don&#39;t match. Please try again.</p>
					
					<label>&nbsp;</label>
					<input type="button" value="Create an account" onclick="checkForm()"> 
					
					
				</div>
				
			</form> <!-- end #signInForm-->
			<div class="phpText">
			
			<?php
			
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
				if(isset($_POST['name']) and isset($_POST['lastname']) and isset($_POST['email']) and isset($_POST['username']) and isset($_POST['password']) and isset($_POST['repeatPassword']))
				{
					if(!empty($_POST['name']) and !empty($_POST['lastname']) and !empty($_POST['email']) and !empty($_POST['username']) and !empty($_POST['password']) and !empty($_POST['repeatPassword']))
					{
						$name=$_POST['name'];
						$lastname=$_POST['lastname'];
						$email=$_POST['email'];
						$username=$_POST['username'];
						$password=$_POST['password'];
						$repeatPassword=$_POST['repeatPassword'];
						
						//nedozvoljeni karakteri
						if(!checkCharacters($name) or !checkCharacters($lastname) or !checkCharacters($email) or !checkCharacters($username) or !checkCharacters($password) or !checkCharacters($repeatPassword))
						{
							echo "Please use only letters, numbers and periods";
							exit(footer()); //prikazi footer
						}
						
						//provera email adrese
						if(!checkEmail($email))
						{
							echo "Your e-mail address isn&#39;t correct.";
							exit(footer());
						}
						
						//duzina password-a
						if(strlen($password)<8)
						{
							echo "Use password with at least 8 characters.";
							exit(footer());
						}
						
						//poklapanje lozinki
						if($password!=$repeatPassword)
						{
							echo "These passwords don&#39;t match. Please try again.";
							exit(footer());
						}
						
						//provera da li vec postoji e-mail adresa
						$sql="SELECT * FROM users WHERE email='$email'";
						$result=mysqli_query($db, $sql);
						if(mysqli_num_rows($result)>0)
						{
							echo "There is already a user with this e-mail.";
							exit(footer());
						}
						
						//provera da li vec postoji korisnicko ime
						$sql="SELECT * FROM users WHERE username='$username'";
						$result=mysqli_query($db, $sql);
						if(mysqli_num_rows($result)>0)
						{
							echo "This username already exists.";
							exit(footer());
						}
						
						//sve provere ok, upisi u bazu
						$sql="INSERT INTO users(name, lastname, email, username, password, idStatus) VALUES('$name', '$lastname', '$email', '$username', PASSWORD('$password'), '1')";
						mysqli_query($db, $sql);
						header("Location: signIn.php");
					}
					else
					{
						echo "Please fill in all fields.";
						exit(footer());
					}
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
		
		//name
		var name=document.getElementById("name");
		if(name.value=="") 
		{
			name.style.border="1px solid #f00";
			a[0].style.display="block";
			return false;
		}
		if(name.value.indexOf("*")!==-1 || name.value.indexOf("=")!==-1 || name.value.indexOf("\\")!==-1 || name.value.indexOf("_")!==-1 || name.value.indexOf("'")!==-1 || name.value.indexOf('"')!==-1 || name.value.indexOf("%")!==-1) //ako sadrzi
		{
			name.style.border="1px solid #f00";
			a[1].style.display="block";
			return false;
		}
		
		
		//lastname
		var lastname=document.getElementById("lastname");
		if(lastname.value=="")
		{
			lastname.style.border="1px solid #f00";
			a[2].style.display="block";
			return false;
		}
		if(lastname.value.indexOf("*")!==-1 || lastname.value.indexOf("=")!==-1 || lastname.value.indexOf("\\")!==-1 || lastname.value.indexOf("_")!==-1 || lastname.value.indexOf("'")!==-1 || lastname.value.indexOf('"')!==-1 || lastname.value.indexOf("%")!==-1) //ako sadrzi
		{
			lastname.style.border="1px solid #f00";
			a[3].style.display="block";
			return false;
		}
		
		
		//email
		var email=document.getElementById("email");
		if(email.value=="") 
		{
			email.style.border="1px solid #f00";
			a[4].style.display="block";
			return false;
		}
		if(email.value.indexOf("@")==-1) //ako ne sadrzi
		{
			email.style.border="1px solid #f00";
			a[5].style.display="block";
			return false;
		}
	
		
		
		//username
		var username=document.getElementById("username"); //uradi proveru za ako postoji vec
		if(username.value=="") 
		{
			username.style.border="1px solid #f00";
			a[6].style.display="block";
			return false;
		}
		if(username.value.indexOf("*")!==-1 || username.value.indexOf("=")!==-1 || username.value.indexOf("\\")!==-1 || username.value.indexOf("_")!==-1 || username.value.indexOf("'")!==-1 || username.value.indexOf('"')!==-1 || username.value.indexOf("%")!==-1) //ako sadrzi
		{
			username.style.border="1px solid #f00";
			a[8].style.display="block";
			return false;
		}
		
		
		//password
		var password=document.getElementById("password");
		if(password.value=="") 
		{
			password.style.border="1px solid #f00";
			a[9].style.display="block";
			return false;
		}
		if(password.value.indexOf("*")!==-1 || password.value.indexOf("=")!==-1 || password.value.indexOf("\\")!==-1 || password.value.indexOf("_")!==-1 || password.value.indexOf("'")!==-1 || password.value.indexOf('"')!==-1 || password.value.indexOf("%")!==-1) //ako sadrzi
		{
			password.style.border="1px solid #f00";
			a[11].style.display="block";
			return false;
		}
		if(password.value.length<8)
		{
			password.style.border="1px solid #f00";
			a[10].style.display="block";
			return false;
		}
		
		
		//repeatPassword
		var repeatPassword=document.getElementById("repeatPassword"); 
		if(repeatPassword.value=="") 
		{
			repeatPassword.style.border="1px solid #f00";
			a[12].style.display="block";
			return false;
		}
		if(password.value!=repeatPassword.value)
		{
			repeatPassword.style.border="1px solid #f00";
			a[13].style.display="block";
			return false;
		}
		
		
		
		var signInForm=document.getElementById("signInForm");
		signInForm.submit();
			
	}
	
	
	function deleteWarning(b)
	{
		var a=document.getElementsByClassName("warning");
		if(b.id=="name")
		{
			b.style.border="1px solid #d4d3cf";
			a[0].style.display="none";
			a[1].style.display="none";
		}
		if(b.id=="lastname")
		{
			b.style.border="1px solid #d4d3cf";
			a[2].style.display="none";
			a[3].style.display="none";
		}
		if(b.id=="email")
		{
			b.style.border="1px solid #d4d3cf";
			a[4].style.display="none";
			a[5].style.display="none";
		}
		if(b.id=="username")
		{
			b.style.border="1px solid #d4d3cf";
			a[6].style.display="none";
			a[8].style.display="none";
		}
		if(b.id=="password")
		{
			b.style.border="1px solid #d4d3cf";
			a[9].style.display="none";
			a[10].style.display="none";
			a[11].style.display="none";
		}
		if(b.id=="repeatPassword")
		{
			b.style.border="1px solid #d4d3cf";
			a[12].style.display="none";
			a[13].style.display="none";
		}
	}
</script>
































