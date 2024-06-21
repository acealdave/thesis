<!DOCTYPE html>
<html lang="en">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- Meta, title, CSS, favicons, etc. -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>HOLY REDEEMER SCHOOL</title>




  <!-- Stylesheets -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  
  
 
  <!-- Main stylesheet -->
  <link href="css/style.css" rel="stylesheet">
  <!---Other StyleSheet-->
  <link href="css/custom.css" rel="stylesheet">

 


</head>


<body style="background: url('./img/logoB.png'); background-repeat:no-repeat; background-attachment:fixed; background-size:100% 100%; background-size:cover; border-top: 0px;">

<h1 style="text-align: center; font-size: 40px;">
                    
          <i class="fa"><img src="./img/logo.png" style="height:85px; width:85px; font-family: Arial, sans-serif;"></i> <b style="color: white;">Holy Redeemer School</b></h1>

  <div class="content">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
      <div class="col-md-8 col-lg-8">
        <div class="widget">
          <div class="widget-head">
            Map Of School Location
          </div>
          <div class="widget-content">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d478.82570550134113!2d120.99185112357694!3d14.320656587113561!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397d680bedc2637%3A0xb9c3f555337c1052!2sHoly%20Redeemer%20School%20of%20Dasmari%C3%B1as%20Cavite!5e1!3m2!1sen!2sph!4v1686599464455!5m2!1sen!2sph" width="100%" height="500" frameborder="0" style="border:0" allowfullscreen></iframe>

          </div>
        </div>
      </div>
      <div class="col-md-4 col-lg-4">
        <div class="widget">
          <div class="widget-head" style="font-family: Arial, sans-serif;">
            Message/Feedback
          </div>
          <div class="widget-content">
            <div class="padd">
              <form class="form-horizontal" action="add_message.php" method="post">
                <div class="form-group" style="font-family: Arial, sans-serif;">
                  <label class="col-lg-3 control-label">Fullname</label>
                  <div class="col-lg-8">
                    <input name="fullname" type="text" class="form-control" placeholder="Please type your name" required>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-lg-3 control-label">Email</label>
                  <div class="col-lg-8">
                    <input type="email" name="email" class="form-control" placeholder="Please type your email" required>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-lg-3 control-label">Subject</label>
                  <div class="col-lg-8">
                    <input type="text" name="subject" class="form-control" placeholder="Subject" required>
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-lg-3 control-label">Comments</label>
                  <div class="col-lg-8">
                    <textarea name="message" class="form-control" rows="5" placeholder="Comments here....." required></textarea>
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-lg-offset-3 col-lg-8">
                    <button class="btn btn-sm btn-success btn-block">Send</button>
                  </div>
                </div>
              </form>

            </div>
          </div>
        </div>
      </div>
      <div class="col-md-4 pull-right">
        
        <a class="btn btn-sm btn-success btn-block" href="index.php" style="color: white; padding:10px; background-color:#2094ca;">Back</a></button>
           

        
      </div>
    </div>
  </div>

</body>

</html>