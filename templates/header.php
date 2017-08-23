<?php
	session_start();
?>

<div id="headerTop">
	<div class="wrapper">
		<div id="headerTopRight">
			<ul>
				<?php
					if(isset($_SESSION['name']))
					{
						if($_SESSION['idStatus']==2)
						{
							echo "<li><a href='signIn.php?signOut'>Hi ".$_SESSION['name']."! Sign out</a></li>";
							echo "<li><a href='admin/administration.php'>Administration panel</a></li>";
						}
						else
						{
							echo "<li><a href='signIn.php?signOut'>Hi ".$_SESSION['name']."! Sign out</a></li>";
							echo "<li><a href='registration.php'>Create an account</a></li>";
						}
					}
					else
					{
						echo "<li><a href='signIn.php'>Sign in</a></li>";
						echo "<li><a href='registration.php'>Create an account</a></li>";
					}
				?>
				
				<!--<li><a href="registration.php">Create an account</a></li>-->
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
		<div id="searchBox">
			<form id="searchForm" action="search.php" method="get">
				<input id="searchFor" name="searchFor" class="fieldStyle" type="text" placeholder="Search for products...">
				<input type="button" value="Go!" onclick="redirect()">
			</form>
		</div>
	</div>	
</div>

<script type="text/javascript">
	function redirect()
	{
		var a=document.getElementById("searchFor");
		if(a.value.length==0)
		{
			alert("Please enter keywords.");
			return false;
		}
		else 
		{
			window.location="search.php?searchFor="+a.value;
		}
		
	}
</script>
