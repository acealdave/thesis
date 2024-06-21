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

	<header>
		<div class="headers">
		<form action="" method="post">
			<div class="form-box">
				<h1>Login Form</h1>
				<div class="input-box">
					<i class="icon-user"></i>
					<input type="text" name="name" placeholder="Username">
				</div>
				<div class="input-box">
					<i class="icon-key"></i>
					<input type="password" name="userpassword" placeholder="Password" id="myInput">
					<span class="eye" onclick="myFunction()">
						<i id="hide1" class="icon-eye-open"></i>
						<i id="hide2" class="icon-eye-close"></i>
					</span>
				</div>

				<a href="index.php" class="login-btns">Cancel</a>
				<button class="login-btn" type="submit" name="login">Log in</button>
			</div>
		</form>
			
		</div>
	</header>



	<section class="footer">
			<p>Copyright © 2023 HRSDC LIBRARY MANAGEMENT SYSTEM</p>
	</section>

	<script>
		function myFunction(){
			var x = document.getElementById("myInput");
			var y = document.getElementById("hide1");
			var z = document.getElementById("hide2");

			if(x.type === "password"){ 
				x.type = "text";
				y.style.display = "block";
				z.style.display = "none";
			}else{
				x.type = "password";
				y.style.display = "none";
				z.style.display = "block";
			}
		}


	</script>
</body>
</html>