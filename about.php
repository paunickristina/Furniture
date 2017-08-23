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

<body id="aboutPage">

	<div id="overlay"></div>

	<header id="header">
	
		<?php include("templates/header.php")?>
	
		<div id="headerNav">
			<div class="wrapper">
				<nav id="nav" class="negative">
					<ul>
						<li><a href="index.php" >Home</a></li>
						<li><a href="about.php" class="current">About us</a></li>
						<li><a href="#" id="button">Our furniture</a>
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
	
	<article id="hero1">
		<div class="wrapper">
			
		</div>
	</article> <!-- end #hero-->
	
	<article>
		<div class="wrapper">
			<h2>Who we are</h2>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut corporis veritatis minima esse in facilis quos magni modi provident amet itaque quasi temporibus voluptatum eos minus, placeat error, praesentium ut quaerat incidunt corrupti expedita? Recusandae voluptatem et mollitia placeat, totam illum reprehenderit adipisci deleniti labore. Fugit a pariatur repellat rem harum nihil, ab quisquam consectetur quidem magni distinctio expedita, nam deleniti ea vel provident hic eius sed fugiat quam! Soluta quo, sint ratione incidunt optio alias veritatis nisi voluptate eum officia nulla quis rem accusamus earum quasi perspiciatis, minima. Voluptates blanditiis doloribus dignissimos quas animi vel architecto itaque enim nostrum neque aspernatur odio nulla obcaecati asperiores ab, fugiat, deleniti saepe earum nemo, a ullam. Earum aspernatur consequuntur quaerat eum odio iste cupiditate fugiat dolorum a nobis fugit quas obcaecati magnam officiis, repudiandae hic minus provident, sed beatae porro? Laudantium consectetur, molestiae deserunt amet, illum id vero. Quaerat a, nulla, ab labore sint laborum doloribus possimus eum omnis facere. Debitis et voluptatibus earum eum, dolor nihil esse placeat iusto odio, eos. Nisi neque illum enim nostrum ducimus aperiam perferendis qui culpa commodi obcaecati aliquam porro, ut consequuntur, dolorum in libero quae reiciendis magni eum dicta ab non suscipit accusantium esse quam.</p>
			<hr>
			<p>&nbsp;</p>
		</div>
	</article>
		
	<article id="wideWrapper">
		<div class="wrapper">
			<img src="images/about/002.jpg" alt="design">
		</div>
	</article>
			
	<article>
		<div class="wrapper">
			<h2>Our design</h2>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam dolor maxime, iusto eius sunt explicabo sequi earum eos amet, sit similique nesciunt voluptates vel. Quo cum, eos reprehenderit illo aperiam, architecto laboriosam delectus, iste adipisci debitis exercitationem inventore. Voluptas doloremque error, quae eum tenetur. Quaerat adipisci ex culpa, eveniet, eius illum, fugiat ratione itaque in inventore molestiae sequi magnam esse fuga tenetur officiis nemo provident omnis. Harum consequatur possimus omnis similique, quisquam. Eos amet dignissimos unde velit vel! Illo deleniti non placeat laboriosam molestias reprehenderit quisquam neque rerum optio. Quo unde deleniti ullam itaque expedita rerum error necessitatibus excepturi facilis sapiente sed harum rem quod magnam temporibus, saepe reprehenderit laborum iure officiis architecto placeat animi culpa cupiditate recusandae inventore. Odit omnis quidem, totam quas dignissimos commodi sequi nulla suscipit enim voluptas sapiente consectetur ducimus rem quod fugiat eos qui nam ex, similique incidunt eligendi praesentium cupiditate itaque placeat. Rem, aspernatur.</p>
			<hr>
		</div>
	</article>		
			
	<article id="partners">
		<div class="wrapper">
			<h2>Our partners</h2>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur deleniti quisquam sapiente, ullam nostrum exercitationem. Aspernatur esse error expedita, fuga impedit consequatur incidunt qui rerum nobis fugit. Accusamus eius recusandae esse, iste laboriosam, expedita cupiditate.</p>
			<p>&nbsp;</p>
			<div class="partner">
				<img src="images/about/003.jpg" alt="partner">
				<div class="partnerText">
					<h4>Lorem ipsum</h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Suscipit hic assumenda delectus voluptatem fuga? Saepe ipsam, nobis architecto voluptates quisquam!</p>
					<p><a href="#" class="button1">Read more...</a></p>
					
				</div>
			</div>
			
			<div class="partner">
				<img src="images/about/004.jpg" alt="partner">
				<div class="partnerText">
					<h4>Lorem ipsum</h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Suscipit hic assumenda delectus voluptatem fuga? Saepe ipsam, nobis architecto voluptates quisquam!</p>
					<p><a href="#" class="button1">Read more...</a></p>
				</div>
			</div>
			
			<div class="partner">
				<img src="images/about/005.jpg" alt="partner">
				<div class="partnerText">
					<h4>Lorem ipsum</h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Suscipit hic assumenda delectus voluptatem fuga? Saepe ipsam, nobis architecto voluptates quisquam!</p>
					<p><a href="#" class="button1">Read more...</a></p>
				</div>
			</div>
			
			<div class="partner">
				<img src="images/about/006.jpg" alt="partner">
				<div class="partnerText">
					<h4>Lorem ipsum</h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Suscipit hic assumenda delectus voluptatem fuga? Saepe ipsam, nobis architecto voluptates quisquam!</p>
					<p><a href="#" class="button1">Read more...</a></p>
				</div>
			</div>
			
			
		</div>
	</article> <!-- end #partners-->
	
	
	
	
	<footer id="footer">
	
		<?php include("templates/footer.php")?>
	
	</footer> <!-- end #footer-->
	
</body>
</html>


































