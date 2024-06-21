<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>LIKHA ES</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.3/font/bootstrap-icons.min.css">
    <!--Google Fonts-->
    <link
        href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
        rel="stylesheet">
    <link rel="icon" type="image/icon" href="img/likha_bg.png">

    <!-- End Bootstrap CSS -->

    <!--Custom Css-->
    <link rel="stylesheet" href="./CSS1/style.css">
    <!--End Custom Css-->
<style>
    .top{
	color: #800000;
	position: fixed;
	bottom: 16px;
	right: 32px;
	width: 40px;
	height: 40px;
	border-radius: 50%;
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 32px;
	text-decoration: none;
	opacity: 0;
	pointer-events: none;
	transition: all .4s
}
.top.active{
	bottom: 32px;
	pointer-events: auto;
	opacity: 2;
}

</style>


</head>

<body>

   
    <!--Header Start-->
    <header>
        <section id="topbar" class="mb-2 mb-lg-0 mb-sm-0 d-none d-lg-flex align-items-center pt-2 pb-2 text-white topbar-transparent" style="background-color: #650000;">
        <div class="container">
          <div class="row">
            <div class="col-lg-6   text-start">
             <span class="px-3"><i class="bi bi-phone "></i> 472 - 4752</span>
          <i class="bi bi-clock"></i> Mon-Fri: 6:00 AM - 6:00 PM
            </div>
           
          </div>
        </div>
      </section> 
        <!--Navbar Start-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container">
            
            
             <!-- //you can use for trigger modal// <a class="navbar-brand" href="admin/index.php" data-bs-toggle="modal" data-bs-target="#exampleModal"> -->
                <!--<a class="navbar-brand" href="admin/index.php" data-bs-toggle="modal" data-bs-target="#exampleModal">-->
                
                    <img src="img/likha_bg.png" alt="Logo" width="40" height="40" class="d-inline-block align-text-top">
                    <span class="fw-bold  mb-2 mb-lg-0 mb-sm-0" style="color: #027A53;"><h2 class="fw-bold d-inline-block align-text-top" style="color: #650000;">LIKHA</h2></span>
                



                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="bi bi-list"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav m-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="index.php" style="font-size:18px">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#Announcement" style="font-size:18px">Announcements</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#about" style="font-size:18px">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#Organization" style="font-size:18px">Organization</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#Services" style="font-size:18px">Gallery</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#Contact" style="font-size:18px">Contact us</a>
                        </li>
                    </ul>
                    <ul class="navbar-nav mb-2 mb-lg-0 action-menu">
                        <li class="nav-item" style="text-decoration: none;">
                            <a class="nav-link " href="./admin/index.php">
                               <span class="bi bi-person"> Login</span></i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!--Navbar End-->
    </header>
    <!--Header End-->


    <div id="carouselExampleCaptions" class="carousel slide mb-3" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
                aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="img-fluid w-100 h-100 overflow-hidden"
                    src="img/carousel-item/likha3.jpeg"
                    class="d-block w-100" alt="...">
                <div class="carousel-caption d-block">
                    <h5>Welcome to Likha Molino IV ES</h5>
                   <p>Paglilingkod ng TAPAT at Edukasyong SAPAT para sa mga batang LIKHANIANS</p> 
                </div>
            </div>
            <div class="carousel-item">
                <img class="img-fluid w-100 h-100 overflow-hidden"
                    src="img/carousel-item/likha4.jpeg"
                    class="d-block w-100" alt="...">
                <div class="carousel-caption d-block">
                    <h5>Aspiration</h5>
                    <p>Likha Molino Elementary School as the TOP performing school in the division</p>
                </div>
            </div>
            <div class="carousel-item">
                <img class="img-fluid w-100 h-100 overflow-hidden"
                    src="img/carousel-item/likha1.jpg"
                    class="d-block w-100" alt="...">
                <div class="carousel-caption d-block">
                    <h5>Core Values</h5>
                    <p>Love - Intergrity - Kindness - Harmony - Adaptability</p>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
            data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
            data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>




    <main id="main">
<!-- ======= Announcement Section ======= -->
    <section>
    <div class="container" id="Announcement">
        <h2 class="h1-responsive font-weight-bold text-center my-4">Announcement</h2>
        <!--Section description-->
        <!--  <p class="text-center w-responsive mx-auto mb-5">Do you have any questions? Please do not hesitate to
            contact us directly. Our team will come back to you within
            a matter of hours to help you.</p> -->
        <!-- Announcements -->
        <div class="row" id="image-container">
            <?php
            require('./admin/include/dbcon.php');
            $query = "SELECT * FROM images";
            $query_run = mysqli_query($con, $query);
            $check_post = mysqli_num_rows($query_run) > 0;
            $image_count = mysqli_num_rows($query_run); // Total number of images
            $counter = 0;

            if ($check_post) {
                while ($row = mysqli_fetch_array($query_run)) {
                    ?>
                    <div class="col-lg-4 col-md-12 mb-4 mb-lg-0 image-item">
                        <?php if ($row['image'] != ""): ?>
                            <img src="./admin/upload/<?php echo $row['image']; ?>"
                                 class="w-100 shadow-1-strong rounded mb-4" alt="Announcement"/>
                        <?php else: ?>

                        <?php endif ?>
                        <div class="card-body">
                            <p class="card-text"><?php echo $row['post_mes']; ?></p>
                        </div>
                    </div>
                    <?php
                    $counter++;
                    if ($counter >= 3) {
                        break; // Limiting the display to 3 images initially
                    }
                }
                if ($image_count > 3) { // Display "See More" button only if total images are more than 3
                    ?>
                    <div class="col-12 text-center">
                        <button class="btn btn-primary" id="see-more-button">See More</button>
                        <button class="btn btn-danger d-none" id="hide-button">Hide</button><br><br>
                    </div>
                    <?php
                }
            } else {
                ?>
                <p class="text-center w-responsive mx-auto mb-5">- No Announcement at this moment -</p>
                <?php
            }
            ?>
        </div>
        <!-- Announcements -->
    </div>
</section>

<script>
   document.getElementById('see-more-button').addEventListener('click', function () {
    var imageContainer = document.getElementById('image-container');
    var hideButton = document.getElementById('hide-button');
    var offset = document.querySelectorAll('.image-item').length; // Calculate current offset
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function () {
        if (xhr.readyState === XMLHttpRequest.DONE) {
            if (xhr.status === 200) {
                var newImages = xhr.responseText;
                imageContainer.insertAdjacentHTML('beforeend', newImages);
                document.getElementById('see-more-button').classList.add('d-none');
                hideButton.classList.remove('d-none');
            } else {
                console.error(xhr.status);
            }
        }
    };
    xhr.open('GET', 'load_more_images.php?offset=' + offset, true); // Pass offset
    xhr.send();
});


    document.getElementById('hide-button').addEventListener('click', function () {
        var imageItems = document.querySelectorAll('.image-item');
        var hideButton = document.getElementById('hide-button');
        for (var i = 3; i < imageItems.length; i++) {
            imageItems[i].remove();
        }
        document.getElementById('see-more-button').classList.remove('d-none');
        hideButton.classList.add('d-none');
    });
</script>

        <!-- ======= About Section ======= -->
        <section id="about" class="about mt-5">
            <div class="container-fluid">
                <h2 class="h1-responsive font-weight-bold text-center my-2" style="padding-top: 100px;">About</h2>
                <!--Section description-->
                
                <div class="row  pt-5 pb-5">


                    <div class="col-lg-5 align-items-stretch video-box"
    style='background-image: url("img/likha_bg.png"); background-size: contain; background-position: center; height: 100vh;' id="home_image">
</div>



                    <div class="col-lg-7 d-flex flex-column justify-content-center align-items-stretch">
                      
                        

                        <div class="content">
                            <ul>
                            <h4>School History</h4>
                                <li><i class="bx bx-check-double"></i> 
                                    Like most public schools, Likha Molino IV Elementary School is a realization of the vision of a retired government employee in the name of Mrs. Sexon, a resident of Molino IV, Bacoor, Cavite. She dreamt of a free education for the children of this barangay. She took the initiative of securing all the needed documents with the District Supervisor, Dr. Susan S. Guinto, taking part in the processing of requirements with the Schools Division Superintendent, Dr. Leonora B. Ignacio,  playing as the key to its approval of operation.
                                </li>
                                <br>
                            <h4>Mission & Vision</h4>
                                <li><i class="bx bx-check-double"></i> 
                                    "MATATAG" stands for "MAke the curriculum relevant to produce job-ready, active, and responsible citizens; TAke steps to accelerate the delivery of basic education services and provision facilities; TAke good care of learners by promoting learner well-being, inclusiveness learning, and positive learning environment; and Give support for teachers to teach better."
                                </li>
                                
                            </ul>
                        </div>

                    </div>

                </div>

            </div>
        </section><!-- End About Section -->


        <section id="Organization">
            <div class="container course pb-5 pt-5">
                <h2 class="h1-responsive font-weight-bold text-center my-4">Principal</h2>
                <!--Section description-->
               <!-- <p class="text-center w-responsive mx-auto mb-5">Do you have any questions? Please do not hesitate to
                    contact us directly. Our team will come back to you within
                    a matter of hours to help you.</p>-->
                <div class="row">

                    <?php
                        require('./admin/include/dbcon.php');
                        $query = "SELECT * FROM faculty WHERE designation = 'School Principal' OR designation = 'Principal' ";
                        $query_run = mysqli_query($con,$query);
                        $check_post = mysqli_num_rows($query_run) > 0;

                        if ($check_post) 
                        {
                            while ($row = mysqli_fetch_array($query_run)) 
                            {
                                ?>


                            <div class="col-md-4">
                                <div class="text-center">
                                    <div class="bg-image hover-overlay ripple">
                                      
                                    </div>
                                    <div class="card-body">
                                                
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4" style='margin-bottom: 10px;'>
                                <div class="card box text-center">
                                    <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                                        <?php if ($row['image'] != ""): ?>
                                            <img src="./admin/upload/<?php echo $row['image']; ?>" class="img-fluid" style="width: 150px; height: 150px;"/>
                                        <?php else: ?>
                                            <img src="img/user.png" class="img-thumbnail" class="img-fluid" />
                                        <?php endif ?>
                                        <a href="#!">
                                            <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                        </a>
                                    </div>
                                    <div class="card-body">
                                                <h5 class="card-title"><?php echo $row['fullName']; ?></h5>
                                                <p class="card-text"><?php echo $row['designation']; ?></p>
                                                <i class="card-text"><?php echo $row['sub_lec']; ?></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                    <div class="text-center">
                        <div class="bg-image hover-overlay ripple"></div>
                        <div class="card-body"></div>
                    </div>
                </div>

					<?php

				}
			}else{
				echo "No data to be seen";
			}
		?>
                </div>
            </div>
        </section>


      



        <section id="Faculty">
            <div class="container course pb-5 pt-5">
                <h2 class="h1-responsive font-weight-bold text-center my-4">Staff</h2>
                <!--Section description-->
               <!-- <p class="text-center w-responsive mx-auto mb-5">Do you have any questions? Please do not hesitate to
                    contact us directly. Our team will come back to you within
                    a matter of hours to help you.</p>-->
                <div class="row justify-content-center">

                    <?php
                        require('./admin/include/dbcon.php');
                        $query = "SELECT * FROM faculty WHERE designation = 'Faculty' OR designation = 'Head Faculty' ";
                        $query_run = mysqli_query($con,$query);
                        $check_post = mysqli_num_rows($query_run) > 0;

                        if ($check_post) 
                        {
                            while ($row = mysqli_fetch_array($query_run)) 
                            {
                                ?>
                            <div class="col-md-4" style='margin-bottom: 5px;'>
                                <div class="card box text-center">
                                    <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                                        <?php if ($row['image'] != ""): ?>
                                            <img src="./admin/upload/<?php echo $row['image']; ?>" class="img-fluid" style="width: 150px; height: 150px;"/>
                                        <?php else: ?>
                                            <img src="img/user.png" class="img-thumbnail" class="img-fluid" />
                                        <?php endif ?>
                                        <a href="#!">
                                            <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                        </a>
                                    </div>
                                    <div class="card-body">
                                                <h5 class="card-title"><?php echo $row['fullName']; ?></h5>
                                                <p class="card-text"><?php echo $row['designation']; ?></p>
                                                <i class="card-text"><?php echo $row['sub_lec']; ?></i>
                                    </div>

                                </div>
                            </div>

					<?php

				}
			}else{
				echo "No data to be seen";
			}
		?>
                </div>
            </div>
        </section>

<!-- ======= Services Section ======= -->
<section>
    <div class="container" id="Services">
        <h2 class="h1-responsive font-weight-bold text-center my-4">Gallery</h2>
        <!--Section description-->
        <!--  <p class="text-center w-responsive mx-auto mb-5">Do you have any questions? Please do not hesitate to
            contact us directly. Our team will come back to you within
            a matter of hours to help you.</p> -->
        <!-- Announcements -->
        <div class="row" id="image-containers">
            <?php
            require('./admin/include/dbcon.php');
            $query = "SELECT * FROM gallery";
            $query_run = mysqli_query($con, $query);
            $check_post = mysqli_num_rows($query_run) > 0;
            $image_count = mysqli_num_rows($query_run); // Total number of images
            $counter = 0;

            if ($check_post) {
                while ($row = mysqli_fetch_array($query_run)) {
                    ?>
                    <div class="col-lg-4 col-md-12 mb-4 mb-lg-0 image-items">
                        <?php if ($row['image'] != ""): ?>
                            <img src="./admin/upload/<?php echo $row['image']; ?>"
                                 class="w-100 shadow-1-strong rounded mb-4" alt="Announcement"/>
                        <?php else: ?>

                        <?php endif ?>
                        <div class="card-body">
                            <p class="card-text"><?php echo $row['post_mes']; ?></p>
                        </div>
                    </div>
                    <?php
                    $counter++;
                    if ($counter >= 3) {
                        break; // Limiting the display to 3 images initially
                    }
                }
                if ($image_count > 3) { // Display "See More" button only if total images are more than 3
                    ?>
                    <div class="col-12 text-center">
                        <button class="btn btn-primary" id="see-more-buttons">See More</button>
                        
                    </div>
                    <?php
                }
            } else {
                ?>
                <p class="text-center w-responsive mx-auto mb-5">- No Uploads at this moment -</p>
                <?php
            }
            ?>
        </div>
        <!-- Announcements -->
    </div>
</section>

<script>
    document.getElementById('see-more-buttons').addEventListener('click', function () {
        var imageContainer = document.getElementById('image-containers');
        var hideButton = document.getElementById('hide-buttons');
        var offset = document.querySelectorAll('.image-items').length; // Calculate current offset
        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function () {
            if (xhr.readyState === XMLHttpRequest.DONE) {
                if (xhr.status === 200) {
                    var newImages = xhr.responseText;
                    imageContainer.insertAdjacentHTML('beforeend', newImages);
                    document.getElementById('see-more-buttons').classList.add('d-none');
                    hideButton.classList.remove('d-none');
                } else {
                    console.error(xhr.status);
                }
            }
        };
        xhr.open('GET', 'load_more_gallery.php?offset=' + offset, true); // Pass offset
        xhr.send();
    });

    document.getElementById('hide-buttons').addEventListener('click', function () {
        var imageItems = document.querySelectorAll('.image-items');
        var hideButton = document.getElementById('hide-buttons');
        for (var i = 3; i < imageItems.length; i++) {
            imageItems[i].remove();
        }
        document.getElementById('see-more-buttons').classList.remove('d-none');
        hideButton.classList.add('d-none');
    });
</script>

<br>
<br>


<!-- ======= Contact us Section ======= -->
        <section id="Contact">
            <div class="container mb-5">
                <!--Section: Contact v.2-->
                <section class="mb-4">

                    <!--Section heading-->
                    <h2 class="h1-responsive font-weight-bold text-center my-4">Contact us</h2>
                    <!--Section description-->
                    <p class="text-center w-responsive mx-auto mb-5">Do you have any questions? Please do not hesitate
                        to contact us directly. Our team will come back to you within
                        a matter of hours to help you.</p>

                    <div class="row">

                        <!--Grid column-->
                        <div class="col-md-6 mb-md-0 mb-5">
                            <form id="contact-form" name="contact-form" action="mail.php" method="POST">

                                <!--Grid row-->
                                <div class="row">

                                    <!--Grid column-->
                                    <div class="col-md-6">
                                        <div class="md-form mb-0">
                                            <label for="name" class="">Full Name</label>
                                            <input type="text" id="name" name="name" class="form-control" placeholder="ex. Juan Dela Cruz">
                                        </div>
                                    </div>
                                    <!--Grid column-->

                                    <!--Grid column-->
                                    <div class="col-md-6">
                                        <div class="md-form mb-0">
                                            <label for="email" class="">Email</label>
                                            <input type="text" id="email" name="email" class="form-control" placeholder="Enter your email address">
                                            
                                        </div>
                                    </div>
                                    <!--Grid column-->

                                </div>
                                <!--Grid row-->

                                <!--Grid row-->
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="md-form mb-0">
                                            <label for="subject" class="">Subject</label>
                                            <input type="text" id="subject" name="subject" class="form-control" placeholder="Enter your subject here...">
                                        
                                        </div>
                                    </div>
                                </div>
                                <!--Grid row-->

                                <!--Grid row-->
                                <div class="row">

                                    <!--Grid column-->
                                    <div class="col-md-12">

                                        <div class="md-form">
                                            <label for="message">Message</label>
                                            <textarea type="text" id="message" name="message" rows="2" placeholder="Enter your message here..."
                                                class="form-control md-textarea"></textarea>
                                            
                                        </div>

                                    </div>
                                </div>
                                <!--Grid row-->

                            </form>
<br>
                            <div class="text-center text-md-left">
                                <a class="btn btn-primary"
                                    onclick="document.getElementById('contact-form').submit();">Send</a>
                            </div>

                            <div class="status"></div>
                        </div>
                        <!--Grid column-->

                        <!--Grid column-->
                        <div class="col-md-6 text-center">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3864.777110477791!2d120.97351698001467!3d14.38230395018316!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397d3a65088e0f1%3A0x362aa8b2055d1c1c!2sLikha%20village%20molino%204%20bacoor%20cavite!5e0!3m2!1sen!2sph!4v1712541498789!5m2!1sen!2sph" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                        </div>
                        <!--Grid column-->

                    </div>

                </section>
                <!--Section: Contact v.2-->
            </div>
        </section>


        <!-- Footer -->
        <footer class="text-center text-lg-start py-3 text-white" style="background-color: #650000;">
          
            <!-- Section: Social media -->

            <!-- Section: Links  -->
            <section class="">
                <div class="container text-center text-md-start mt-5">
                    <!-- Grid row -->
                    <div class="row mt-3">
                        <!-- Grid column -->
                        <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
                            <!-- Content -->
                            <h6 class="text-uppercase fw-bold mb-4">
                                <i class="bi bi-building me-3"></i>Likha Molino IV ES
                            </h6>
                            <p>Please visit us at Likha Molino IV, Bacoor City</p>
                           
                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                            <!-- Links -->
                            <h6 class="text-uppercase fw-bold mb-4">
                                Offers
                            </h6>
                            <p>
                                Quality Teaching and Education
                            </p>
                            <p>
                                Healthy Learning Environment
                            </p>
                            <p>
                                Bright Future
                            </p>
                            <p>
                                Child Friendly Environment
                            </p>
                            <p>
                                Fun Events
                            </p>
                           
                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                            <!-- Links -->
                            <h6 class="text-uppercase fw-bold mb-4">
                                
                            </h6>
                            <!--<p>
                                <a href="#!" class="text-reset">Pricing</a>
                            </p>
                            <p>
                                <a href="#!" class="text-reset">Settings</a>
                            </p>
                            <p>
                                <a href="#!" class="text-reset">Orders</a>
                            </p>
                            <p>
                                <a href="#!" class="text-reset">Help</a>
                            </p>-->
                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                            <!-- Links -->
                            <h6 class="text-uppercase fw-bold mb-4">
                                Contact
                            </h6>
                            <p><i class="bi bi-geo me-3"></i>
                                Likha Molino IV Elementary School, Bacoor City
                             </p>
                            <p>
                                <i class="bi bi-envelope me-3"></i>
                                likha@gmail.com
                            </p>
                            <p><i class="bi bi-phone me-3"></i> 472 - 4752</p>
                        </div>
                        <!-- Grid column -->
                    </div>
                    <!-- Grid row -->
                </div>
            </section>
            <!-- Section: Links  -->



            <a href="#" class="top">
                <i class="bi bi-caret-up-square-fill"></i>
            </a>




            <!-- Copyright -->
            <div class="text-center py-4" style="background-color: rgba(0, 0, 0, 0.05);">
                © <?php echo date('Y'); ?>
                <a class="text-reset fw-bold" href="#">LIKHA ES</a>
            </div>
            <!-- Copyright -->
        </footer>
        <!-- Footer -->
        <!-- Option 1: Bootstrap Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous">
 
// <!-- ======= Modal======= -->

// <!-- ======= Modal======= -->
          </script>

</body>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="main.js"></script>
    <script>
		const menuBtn = document.querySelector('.navbar-brand');
		const navlinks = document.querySelector('.navbar-nav');

		menuBtn.addEventListener('click',()=>{
			navlinks.classList.toggle('mobile-menu');
		})
	</script>
        

</html>