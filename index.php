<?php
  require('database.php');
  if(isset($_POST['submit'])){

$name=$_POST['name'];
$email=$_POST['email'];
$message=$_POST['message'];


$myqry="insert into contact
(name,email,message) 
values('$name','$email','$message')";

/*$connect->query($myqry);

/*if($connect->query($myqry)===true){
  echo"data inseted";
}
else{
  'error occured' .$myqry .$connect->error;
}*/
 }
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>GetSoluTry</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/gst_logo1.png" rel="icon">
  <link href="assets/img/gst_logo1.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top ">
    <div class="container d-flex align-items-center justify-content-lg-between">
      <!--<h1 class="logo me-auto me-lg-0"><a href="index.html">GetSoluTry<span>.</span></a></h1>-->
      <a href="index.php" class="logo me-auto me-lg-0"><img src="assets/img/gst_logo1.png" alt="GetSoluTry" class="img-fluid"></a>

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="nav-link scrollto active" href="index.php">Home</a></li>
          <li class="dropdown"><a href="subject.php"><span>Subject</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="chapter.php">Mathematics</a></li>
            </ul>
          </li>
          <li><a class="nav-link scrollto" href="#about">About</a></li>
          <li><a class="nav-link scrollto" href="#step">How to Process</a></li>
          <!--<li><a class="nav-link scrollto" href="#team">Team</a></li>-->
          <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

      <a href="userpannel/register.php" class="get-started-btn scrollto">Practice</a>

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center justify-content-center">
    <div class="container" data-aos="fade-up">

      <div class="row justify-content-left" data-aos="fade-up" data-aos-delay="150">
        <div class="col-xl-6 col-lg-8">
          <h1>Welcome.<span>.</span></h1>
          <h2>Get your solution by trying</h2>
        </div>
      <div class="row justify-content-left" data-aos="zoom-in" data-aos-delay="150">
        <div class="col-xl-6 col-lg-8">
          <div class="icon-box">
            <h3><a href="subject.php">Get Started</a></h3>
          </div>
        </div>
      </div>

    </div>
  </div>
  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container" data-aos="fade-up">

        <div class="row">
          <div class="col-lg-6 order-1 order-lg-2 text-center" data-aos="fade-left" data-aos-delay="100">
            <img src="assets/img/maths.png" class="img-fluid" alt=""style="height: 400px; width: 400px;">
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1 content" data-aos="fade-right" data-aos-delay="100">
            <div class="section-title">
              <h2>About us</h2>
            </div>
            <h3>We Create Ease!</h3>
            <p class="fst-italic">
              For those who are the students of Sindh Board Pakistan.
              Right now we are on mathematics book detail 
            </p>
            <ul>
              <li><i class="ri-check-double-line"></i> We design and develop quiz for students.</li>
              <li><i class="ri-check-double-line"></i>Creating 9th class mathematics multiple choice questions. </li>
              <li><i class="ri-check-double-line"></i> Can see their scores.</li>
              <li><i class="ri-check-double-line"></i> These quiz assessments can help to learn in quick way.</li>
              <li><i class="ri-check-double-line"></i>  You can take unlimited quizzes absolutely for free.</li>
              <li><i class="ri-check-double-line"></i>  It self-assessment tool which gives learners freedom to fail..</li>
              <li><i class="ri-check-double-line"></i>  This allows learners to figure out what they do know, what they don’t, what they need to focus on, and how to improve.</li>
            </ul>
            <p>
               Our purpose is that we give quality and meaningful education via M.C.Qs.
            </p>
          </div>
        </div>
      </div>
    </section><!-- End About Section -->

    <!-- ======= Cta Section ======= -->
    <section id="cta" class="cta">
      <div class="container" data-aos="zoom-in">

        <div class="text-center">
          <h3>Call for practice</h3>
          <p> For practice quiz of all chapters click here</p>
          <a class="cta-btn" href="#">click here</a>
        </div>

      </div>
    </section><!-- End Cta Section -->

    <!--HOW TO PROCESS-->

    <section class="page-section" id="step">
    <div class="container">
    <div class="text-center">
        <h2 class="section-heading text-uppercase">How to process</h2>
         <blockquote> Get Solution, Try! </blockquote>
    </div>
    <br/>
    <ul class="timeline">
        <li>
            <div class="timeline-image"style="width:100px; height:100px"><img class="rounded-circle img-fluid" src="assets/img/gst3_logo.jpeg" alt="..." style="width:110px; height:85px"></div>
            <div class="timeline-panel">
            <div class="timeline-heading">
                <h4 class="subheading">Step 01</h4>
            </div>
             <div class="timeline-body"><p class="text-muted"> click on "get started" button</p></div>
            </div>
            </li>
            <li class="timeline-inverted">
                <div class="timeline-image"style="width:100px; height:100px"><img class="rounded-circle img-fluid" src="assets/img/gst3_logo.jpeg" alt="..." style="width:110px; height:85px"></div>
                    <div class="timeline-panel">
                        <div class="timeline-heading">
                        <h4 class="subheading">Step 02</h4>
                        </div>
                    <div class="timeline-body"><p class="text-muted"> click on subject  </p></div>
                    </div>
            </li>
            <li>
                 <div class="timeline-image"style="width:100px; height:100px"><img class="rounded-circle img-fluid" src="assets/img/gst3_logo.jpeg" alt="..." style="width:110px; height:85px"></div>
                    <div class="timeline-panel">
                        <div class="timeline-heading">
                        <h4 class="subheading">Step 03</h4>
                        </div>
                   <div class="timeline-body"><p class="text-muted">Select your
                            desire chapter </p></div>
                 </div>
            </li>
            
            <li class="timeline-inverted"> 
            <div class="timeline-image"style="width:100px; height:100px"><img class="rounded-circle img-fluid" src="assets/img/gst3_logo.jpeg" alt="..." style="width:110px; height:85px"></div> 
            <div class="timeline-panel"> 
            <div class="timeline-heading">
                <h4 class="subheading">Step 04</h4> </div> 
            <div class="timeline-body">
                <p class="text-muted"> Then select exercise   </p>
                </div> 
            </div> 
            </li>
            
            <li class="timeline-inverted">
                <div class="timeline-image" style="width:100px; height:100px">
                        <h4 style="padding: 0px; margin: 12px;"><a href="subject.php" style="color: white;">  Lets<br/>
                        do it!</a>
                        <br/>         
                   </h4>
                </div>
            </li>
        </ul>
    </div>

</section>

    <!--END OF PROCESS-->

    <!-- ======= Team Section ======= -->
    <!--<section id="team" class="team">
      <div class="container" data-aos="fade-up">
<center>
        <div class="section-title">
          <h2>Team</h2>
          <p>Check our Team</p>
        </div>

        <div class="row justify-content-center">

          <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
            <div class="member" data-aos="fade-up" data-aos-delay="200">
              <div class="member-img">
                <img src="assets/img/team/team1.jpeg" class="img-fluid" alt="">
                <div class="social">-->
                  <!--<a href=""><i class="bi bi-twitter"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>-->
                  <!--<a href=""><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
              <div class="member-info">
                <h4>Tehreem</h4>-->
                <!--<span>Product Manager</span>-->
              <<!--/div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
            <div class="member" data-aos="fade-up" data-aos-delay="400">
              <div class="member-img">
                <img src="assets/img/team/team2.jpeg" class="img-fluid" alt="">
                <div class="social">-->
                 <!--<a href=""><i class="bi bi-twitter"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>-->
                  <!--<a href=""><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
              <div class="member-info">
                <h4>Urooj Nadeem</h4>-->
                <!--<span>Accountant</span>-->
              <!--</div>
            </div>
          </div>

        </div>
        </center>
      </div>
    </section>
    End Team Section -->

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <center>
          <h2>Contact us</h2>
          <p>Feedback Form</p>
        </center>
        </div>
            <form action="index.php" method="post" role="form" class="php-email-form">
              <div class="row">
                <div class="col-md-6 form-group">
                  <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required>
                </div>
                <div class="col-md-6 form-group mt-3 mt-md-0">
                  <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required>
                </div>
              </div>
              <div class="form-group mt-3">
                <textarea class="form-control" name="message" rows="5" placeholder="Message" required></textarea>
              </div>
              <div class="my-3">
                <div class="loading">Loading</div>
                <div class="error-message"></div>
                <div class="sent-message">Your message has been sent. Thank you!</div>
              </div>
              <div class="text-center"><button type="submit" name="submit">Send Message</button></div>
            </form>

          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>GetSoluTry</span></strong>. All Rights Reserved
        <div class="social-links mt-3">
          <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
          <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
          <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
      </div>
    </div>
   </div>
  </footer><!-- End Footer -->

  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/purecounter/purecounter.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>