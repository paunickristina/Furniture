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

<body id="contactPage">

	<div id="overlay"></div>

	<header id="header">
	
		<?php include("templates/header.php");?>
		
		<div id="headerNav">
			<div class="wrapper">
				<nav id="nav" class="negative">
					<ul>
						<li><a href="index.php" >Home</a></li>
						<li><a href="about.php">About us</a></li>
						<li><a href="#" id="button">Our furniture</a>
							<div id="menu">
							
								<?php include("templates/menu.php");?>
							
							</div>
						</li>
						<li><a href="inspiration.php">Inspiration</a></li>
						<li><a href="contact.php" class="current">Contact</a></li>
					</ul>
					
					<a href="#" id="respmenu" class="button1"><i class="fa fa-lg fa-navicon"></i>&nbsp;&nbsp;&nbsp;&nbsp;Navigation</a>
					
				</nav>
			</div>
		</div>
	</header> 
	
	<section id="central">
		<div class="wrapper">
			
				<h1>Contact us</h1>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione similique numquam totam dolorum nulla temporibus iusto voluptas libero enim nisi minus velit accusantium a nihil eaque pariatur illo, commodi beatae reiciendis sint culpa dignissimos porro quibusdam voluptatem. Quo, illum, tenetur. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et commodi possimus, suscipit, quae deleniti earum atque. Cupiditate, inventore distinctio! Error, culpa voluptas itaque ipsa ea accusantium minima. Reprehenderit alias, itaque.</p>
				<p>&nbsp;</p>
				<p class="bold">Working hours:</p>
				<p>Monday- Friday, 08:00-21:00</p>
				<p>Saturday, 08:00-20:00</p>
				<p>Sunday, closed</p>
				<p class="bold">Call us:</p>
				<p>0077 777 7777</p>
				<p class="bold">Email us:</p>
				<p>furniture@shop.rs</p>
				<p class="bold">Visit us:</p>
				<p>Terazije, Belgrade</p>
				
		</div>
		
		<div id="wideWrapper">
			<div class="wrapper">
				<iframe id="map" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d2830.429536419687!2d20.4605127!3d44.8128133!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x475a7aae746ce8b7%3A0x1e557c4360cc6848!2sTerazije%2C+Belgrade!5e0!3m2!1sen!2srs!4v1495478684795" width="1020" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>
			</div>
		</div>
			
					
	</section> <!-- end #central-->

	
	<footer id="footer">
	
		<?php include("templates/footer.php");?>
	
	</footer> <!-- end #footer-->
	
</body>
</html>


































