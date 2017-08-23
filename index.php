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
  $(function() {
    $('a[href*="#"]:not([href="#"])').click(function() {
      if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
        var target = $(this.hash);
        target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
        if (target.length) {
          $('html, body').animate({
            scrollTop: target.offset().top
          }, 1000);
          return false;
        }
      }
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

<body>

	<div id="overlay"></div>

	<header id="header">
	
		<?php include("templates/header.php");?>
		
				
		<div id="headerNav">
			<div class="wrapper">
				<nav id="nav" class="negative">
					<ul>
						<li><a href="index.php" class="current">Home</a></li>
						<li><a href="about.php">About us</a></li>
						<li><a href="#" id="button">Our furniture</a>
							
							<div id="menu">
							
								<?php include("templates/menu.php")?>
							
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
	
	<article id="hero">
		<div class="wrapper">
			<h1>Furniture Shop</h1>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
			<p><a href="#news" class="button1">Read more...</a></p>
		</div>
	</article> <!-- end #hero-->
	
	<section id="news">
		<div class="wrapper">
			<header>
				<div class="horizontalLine">
					<span>Upcoming events</span>
				</div>
			</header>
			<article class="oneNews">
				
				<div class="photos">
					<img src="images/005.jpg" alt="Photo">
				</div>
				<div class="photos">
					<img src="images/007.jpg" alt="Photo">
				</div>
				<div class="text">
					<h3>Visit us at the Belgrade Furniture Fair</h3>
					<p>Pellentesque mattis ornare eros, at vestibulum purus viverra a. Pellentesque vitae est risus. Donec finibus odio sit amet aliquam hendrerit. Etiam sit amet dolor a orci aliquet finibus. Pellentesque ac lectus at arcu ornare dignissim. Nullam volutpat lacus quis diam hendrerit bibendum.</p>
					<p>Nullam consectetur semper dui. Praesent placerat condimentum enim. Donec sed auctor nibh. Integer mollis egestas bibendum. Nunc metus magna, porta sed congue id, scelerisque id enim. Proin pharetra augue a risus pharetra hendrerit. Vivamus molestie, augue in eleifend condimentum, ligula arcu auctor tellus, ac maximus sem risus et purus. Suspendisse auctor porta arcu sed gravida. Duis malesuada quis mi quis lobortis.</p>
					<p>Pellentesque mattis ornare eros, at vestibulum purus viverra a. Pellentesque vitae est risus. Donec finibus odio sit amet aliquam hendrerit. Etiam sit amet dolor a orci aliquet finibus. Pellentesque ac lectus at arcu ornare dignissim.</p>
				</div>

			</article>
			
			<article class="oneNews">
			
				<div class="photos">
					<img src="images/007.jpg" alt="">
				</div>
				<div class="photos">
					<img src="images/005.jpg" alt="">
				</div>
				<div class="text">
					<h3>Visit us at the Belgrade Furniture Fair</h3>
					<p>Pellentesque mattis ornare eros, at vestibulum purus viverra a. Pellentesque vitae est risus. Donec finibus odio sit amet aliquam hendrerit. Etiam sit amet dolor a orci aliquet finibus. Pellentesque ac lectus at arcu ornare dignissim. Nullam volutpat lacus quis diam hendrerit bibendum.</p>
					<p>Nullam consectetur semper dui. Praesent placerat condimentum enim. Donec sed auctor nibh. Integer mollis egestas bibendum. Nunc metus magna, porta sed congue id, scelerisque id enim. Proin pharetra augue a risus pharetra hendrerit. Vivamus molestie, augue in eleifend condimentum, ligula arcu auctor tellus, ac maximus sem risus et purus. Suspendisse auctor porta arcu sed gravida. Duis malesuada quis mi quis lobortis.</p>
				</div>

			</article>
			<hr>
			<article id="banner">
				<div>
					<img src="images/015.jpg" alt="Sale">
				</div>
				<p>Etiam sit amet dolor a orci aliquet finibus. Pellentesque ac lectus at arcu ornare dignissim. Nullam volutpat lacus quis diam hendrerit bibendum.</p>
			</article>
			<hr>
		</div>
	</section> <!-- end #news-->
	
	<section id="inspiration">
		<div class="wrapper">
			<header>
				<div class="horizontalLine">
					<span>Find inspiration</span>
				</div>
			</header>
			
			<article class="inspireBox negative">
				<img src="images/004.jpg" alt="Inspiration">
				<div>
					<h4>Lorem ipsum</h4>
					<p>Pellentesque mattis ornare eros, at vestibulum purus viverra a. Pellentesque vitae est risus.</p>
					<p><a href="inspiration.php" class="button1">Read more...</a></p>
				</div>
			</article>
			
			<article class="inspireBox negative">
				<img src="images/004.jpg" alt="Inspiration">
				<div>
					<h4>Lorem ipsum</h4>
					<p>Pellentesque mattis ornare eros, at vestibulum purus viverra a. Pellentesque vitae est risus.</p>
					<p><a href="inspiration.php" class="button1">Read more...</a></p>
				</div>
			</article>
			
			<article class="inspireBox negative">
				<img src="images/004.jpg" alt="Inspiration">
				<div>
					<h4>Lorem ipsum</h4>
					<p>Pellentesque mattis ornare eros, at vestibulum purus viverra a. Pellentesque vitae est risus.</p>
					<p><a href="inspiration.php" class="button1">Read more...</a></p>
				</div>
			</article>
			
			<article class="inspireBox negative">
				<img src="images/004.jpg" alt="Inspiration">
				<div>
					<h4>Lorem ipsum</h4>
					<p>Pellentesque mattis ornare eros, at vestibulum purus viverra a. Pellentesque vitae est risus.</p>
					<p><a href="inspiration.php" class="button1">Read more...</a></p>
				</div>
			</article>
			
		</div>
	</section> <!-- end #inspiration-->
	
		
	<footer id="footer">
	
		<?php include("templates/footer.php")?>
		
	</footer> <!-- end #footer-->
	
	
</body>
</html>

































