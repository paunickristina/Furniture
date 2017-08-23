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

<body id="inspirationPage">

	<div id="overlay"></div>

	<header id="header">
	
		<?php include("templates/header.php");?>
	
				
		<div id="headerNav">
			<div class="wrapper">
				<nav id="nav" class="negative">
					<ul>
						<li><a href="index.php">Home</a></li>
						<li><a href="about.php">About us</a></li>
						<li><a href="#" id="button">Our furniture</a>
							<div id="menu">
							
								<?php include("templates/menu.php");?>
							
							</div>
						</li>
						<li><a href="inspiration.php" class="current">Inspiration</a></li>
						<li><a href="contact.php">Contact</a></li>
					</ul>
					
					<a href="#" id="respmenu" class="button1"><i class="fa fa-lg fa-navicon"></i>&nbsp;&nbsp;&nbsp;&nbsp;Navigation</a>
					
				</nav>
			</div>
		</div>
	</header> <!-- end #header-->
	
	<article id="bigPhoto">
		<div class="wrapper" id="aboutBox">
			<h1>Find inspiration</h1>
			<p>Lorem ipsum dolor sit amet</p>
		</div>
	</article> <!-- end #bigPhoto-->
	
	
	<section id="central">
		<div class="wrapper">
		
			<div id="main">
				<article>
					<header>
						<h2>Lorem ipsum dolor sit</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim earum corrupti fugit sit inventore architecto saepe doloremque libero exercitationem veritatis.</p>
					</header>
					<hr>
					<img src="images/inspiration/002.jpg" alt="inspiration">
					<p>&nbsp;</p>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa natus minima veritatis, expedita veniam autem nostrum obcaecati hic sequi, odio. A esse natus perspiciatis officia tenetur obcaecati voluptatibus beatae voluptatum illo voluptas, sunt temporibus veritatis possimus commodi blanditiis laboriosam ipsum ut ab doloremque facere saepe perferendis, aspernatur neque? Explicabo harum vel, unde, inventore corporis assumenda consectetur laborum cumque quasi quia tenetur dolore voluptatibus. Ullam ab qui aut suscipit, molestiae nemo ipsa eligendi quam non, pariatur nam facilis itaque illum eum illo cupiditate deleniti vel numquam. <a href="">Read&nbsp;more...</a></p>
				</article>
				
				<article>
					<header>
						<h2>Lorem ipsum dolor sit</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim earum corrupti fugit sit inventore architecto saepe doloremque libero exercitationem veritatis.</p>
					</header>
					<hr>
					<img src="images/inspiration/003.jpg" alt="inspiration">
					<p>&nbsp;</p>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa natus minima veritatis, expedita veniam autem nostrum obcaecati hic sequi, odio. A esse natus perspiciatis officia tenetur obcaecati voluptatibus beatae voluptatum illo voluptas, sunt temporibus veritatis possimus commodi blanditiis laboriosam ipsum ut ab doloremque facere saepe perferendis, aspernatur neque? Explicabo harum vel, unde, inventore corporis assumenda consectetur laborum cumque quasi quia tenetur dolore voluptatibus. Ullam ab qui aut suscipit, molestiae nemo ipsa eligendi quam non, pariatur nam facilis itaque illum eum illo cupiditate deleniti vel numquam. <a href="">Read&nbsp;more...</a></p>
				</article>
				
				<article>
					<header>
						<h2>Lorem ipsum dolor sit</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim earum corrupti fugit sit inventore architecto saepe doloremque libero exercitationem veritatis.</p>
					</header>
					<hr>
					<img src="images/inspiration/002.jpg" alt="inspiration">
					<p>&nbsp;</p>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa natus minima veritatis, expedita veniam autem nostrum obcaecati hic sequi, odio. A esse natus perspiciatis officia tenetur obcaecati voluptatibus beatae voluptatum illo voluptas, sunt temporibus veritatis possimus commodi blanditiis laboriosam ipsum ut ab doloremque facere saepe perferendis, aspernatur neque? Explicabo harum vel, unde, inventore corporis assumenda consectetur laborum cumque quasi quia tenetur dolore voluptatibus. Ullam ab qui aut suscipit, molestiae nemo ipsa eligendi quam non, pariatur nam facilis itaque illum eum illo cupiditate deleniti vel numquam. <a href="">Read&nbsp;more...</a></p>
				</article>
				
			</div> <!-- end #main-->
			
			<aside id="sidebar">
			
				<h3>Similar articles</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit. <a href="">Read&nbsp;more...</a></p>
				<img src="images/inspiration/004.jpg" alt="inspiration">
				<p>&nbsp;</p>
				
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus, repudiandae. <a href="">Read&nbsp;more...</a></p>
				<img src="images/inspiration/005.jpg" alt="inspiration">
				<p>&nbsp;</p>
				
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit numquam. <a href="">Read&nbsp;more...</a></p>
				<img src="images/inspiration/004.jpg" alt="inspiration">
				<p>&nbsp;</p>
				
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus, repudiandae. <a href="">Read&nbsp;more...</a></p>
				<img src="images/inspiration/005.jpg" alt="inspiration">
				
			</aside>
			
		</div>
	</section> <!-- end #central-->
	
	
	<footer id="footer">
	
		<?php include("templates/footer.php");?>
	
	</footer> <!-- end #footer-->
	
</body>
</html>


































