<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>HOLY REDEEMER SCHOOL</title>

	<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="other.css">
</head>
<body>

	<nav class="navbar">
		<a href="./admin/logAd.php"><h1 class="logo">HRSDC</h1></a>
		<ul class="nav-links">
			<li><a href="index.php">Home</a></li>
			<li><a href="#about">About</a></li>
			<li><a href="#services">Services</a></li>
			<li><a href="contact.php">Contact</a></li>
		</ul>
		<img src="./img/menu2.png" class="menu-btn">
	</nav>

	<header>
		<div class="header-content">
			<h2>Welcome to HRSDC</h2>
			<div class="line"></div>
			<h1>Library Management System</h1>
			<a href="./user/login.php" class="ctn">Login</a>
			<a href="./user/registration.php" class="ctn">Register</a>
		</div>
	</header>

	
	<div class="container">
		<div class="header">
			<h1 style="font-size: 40px; font-family: Arial, sans-serif;">School Announcements</h1>
			<div class="line"></div>
		</div>
		<?php
			require('./admin/include/dbcon.php');
			$query = "SELECT * FROM images";
			$query_run = mysqli_query($con,$query);
			$check_post = mysqli_num_rows($query_run) > 0;

			if ($check_post) 
			{
				while ($row = mysqli_fetch_array($query_run)) 
				{
					?>
				<div class="sub-containers">
				<div class="teamss" style="width: 800px">
				<div class="names"><?php echo $row['post_mes']; ?></div>
				<?php if ($row['image'] != ""): ?>
					<img src="./admin/upload/<?php echo $row['image']; ?>"style="width: 700px; height: 500px;">
				<?php else: ?>
					
				<?php endif ?>
				</div>
				</div>
				</div>
					<?php


					
				}
			}else{
				echo "No Announcements";
			}
		?>
	</div>
	</div>


	<section class="mission">
		<div class="title">
			<h2 style="font-family: Arial, sans-serif;">Mission & Vision</h2>
			<div class="line"></div>
		</div>

		<div class="row">
			<div class="col">
				<img src="./img/slide1.png">
			</div>
		</div>
	</section>

	<section class="philo">
		<div class="title">
			<h2 style="font-family: Arial, sans-serif;">School Philosophy</h2>
			<div class="line"></div>
		</div>

		<div class="row">
			<div class="col">
				<img src="./img/slide3.png">
			</div>
		</div>

	</section>

	<section id="about">
	<div class="container">
		<div class="header">
			<h1 style="font-family: Arial, sans-serif;">School Community</h1>
			<div class="line"></div>
		</div>
		<br>
		<div class="sub-container">
		<?php
			require('./admin/include/dbcon.php');
			$query = "SELECT * FROM faculty";
			$query_run = mysqli_query($con,$query);
			$check_post = mysqli_num_rows($query_run) > 0;

			if ($check_post) 
			{
				while ($row = mysqli_fetch_array($query_run)) 
				{
					?>
				<div class="teams">
				<?php if ($row['image'] != ""): ?>
					<img src="./admin/upload/<?php echo $row['image']; ?>"style="width: 150px; height: 150px;">
				<?php else: ?>
					<img src="./img/user.png" class="img-thumbnail" width="150px" height="150px">
				<?php endif ?>
				<div style="font-family: Arial, sans-serif;" class="name"><?php echo $row['fullName']; ?></div>
				<div style="font-family: Arial, sans-serif;" class="desig"><?php echo $row['designation']; ?></div>	
				<div style="font-family: Arial, sans-serif;" class="about"><?php echo $row['sub_lec']; ?></div>
				</div>

					<?php


					
				}
			}else{
				echo "No Announcements";
			}
		?>

	</div>
	</div>
	</section>
	

	<section class="history">
	<div class="explore">
		<h1 style="font-family: Arial, sans-serif;">School History</h1>
		<div class="line"></div>
		<p style="font-family: Arial, sans-serif;">Holy Redeemer in its biblical interpretation refers to the risen CHRIST whose blood and brutal death at the cross in calvary - healed and forgave, reconciled and redeemed humanity from a sinful and darkened world.<br><br>This is also the former Beverly Christian School in Parkhomes Muntinlupa in 1996, operating as Pre-Elementary under the umbrella of Philippine Educators of the Philippines.</p>
	</div>
	</section>


	<div id="services" class="service">
		<div class="max-width">
			<h1 style="font-family: Arial, sans-serif;">System Features</h1>
			<div class="line"></div>
			<div class="content">
				<div class="card">
					<div class="box">
					<i class="icon-barcode"></i>
					<h3 style="font-family: Arial, sans-serif;">Barcode Feature</h3>
					<p>Scan books barcode for easy borrowing and returning process.</p>
				</div>
			</div>
			<div class="card">
					<div class="box">
					<i class="icon-envelope"></i>
					<h3 style="font-family: Arial, sans-serif;">Email Notification</h3>
					<p>Get notified about your transactions.</p>
				</div>
			</div>

			<div class="card">
					<div class="box">
					<i class="icon-file"></i>
					<h3 style="font-family: Arial, sans-serif;">Borrow Reservation</h3>
					<p>Reserve the book you want and wait for the librarians confirmation.</p>
				</div>
			</div>

			<div class="card">
					<div class="box">
					<i class="icon-usd"></i>
					<h3 style="font-family: Arial, sans-serif;">GCASH & Cash on Hand</h3>
					<p>Pay your penalties via GCASH payment or Cash on Hand</p>
				</div>
			</div>

			<div class="card">
					<div class="box">
					<i class="icon-user"></i>
					<h3 style="font-family: Arial, sans-serif;">Count Log In</h3>
					<p>The system will monitor how often you are using the library.</p>
				</div>
			</div>
			</div>
		</div>
	</div>

	<div class="header" style="text-align: center;">
		<h2 style="font-size: 40px; font-family: Arial, sans-serif;">Library Policies</h2>
		<div class="line"></div>
	<section class="contains">
		<div class="carder">
			<div class="card-image im1">
				
			</div>
			<h5 style="font-family: Arial, sans-serif;">General Guidelines</h5>
			<p>Only bonafide student of HRSDC are allowed to access the library.</p>
			<p>Students must have a valid school id and present it to the librarian.</p>
			<p>Return the books properly and arrange to their designated shelves.</p>
			<p>Maintain silence in the library to prevent disturbing other students.</p>
		</div>
		<div class="carder">
			<div class="card-image im2">
				
			</div>
			<h5 style="font-family: Arial, sans-serif;">Borrowing & Returning Guidelines</h5>
			<p>You can reserve a book via online using the library system.</p>
			<p>The maximum allowed days to borrow the book is three days.</p>
			<p>Failure to return the book on time will result to a penalty.</p>
			<p>If you lost the book you're required to pay the original price.</p>
		</div>
	</div>
	</section>




	<a href="#" class="top">
		<i class="icon-chevron-up"></i>
	</a>



	<section class="footer">
			<p style="font-family: Arial, sans-serif;">Copyright © 2023 HRSDC LIBRARY MANAGEMENT SYSTEM</p>
	</section>

	<script type="text/javascript" src="main.js"></script>

	<script>
		const menuBtn = document.querySelector('.menu-btn');
		const navlinks = document.querySelector('.nav-links');

		menuBtn.addEventListener('click',()=>{
			navlinks.classList.toggle('mobile-menu');
		})
	</script>
</body>
</html>

