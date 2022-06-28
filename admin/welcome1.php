<?php
$con= new mysqli('localhost','admingst','getsolutry','getsolutry_db')
or die("Could not connect to mysql".mysqli_error($con));
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title> Exercise </title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="../assets/img/gst_logo1.png" rel="icon">
  <link href="../assets/img/gst_logo1.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="../assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="../assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="../assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="../assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="../assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="../assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="../assets/css/style.css" rel="stylesheet">
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top header-inner-pages">
    <div class="container d-flex align-items-center justify-content-lg-between">

      <!--<h1 class="logo me-auto me-lg-0"><a href="index.html">GetSoluTry<span>.</span></a></h1>-->
      <a href="index.php" class="logo me-auto me-lg-0"><img src="../assets/img/gst_logo1.png" alt="GetSoluTry" class="img-fluid"></a>

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="nav-link scrollto active" href="../index.php">Home</a></li>
          <li class="dropdown"><a href="../suject.php"><span>Subject</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="../chapter.php">Mathematics</a></li>
            </ul>
          </li>
          <li><a class="nav-link scrollto" href="../index.php?#about">About</a></li>
          <li><a class="nav-link scrollto" href="../index.php?#step">How to Process</a></li>
          <li><a class="nav-link scrollto" href="../index.php?#contact">Contact</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

      <a href="userpannel/register.php" class="get-started-btn scrollto">Practice</a>
      
    </div>
  </header><!-- End Header -->
<section id="hero" class="d-flex align-items-center">
    <div class="container position-relative" data-aos="fade-up" data-aos-delay="100">
      <div class="row justify-content-center">
        <div class="col-xl-7 col-lg-9 text-center">
          <h1>SELECT A EXERCISE</h1>
        </div>
      </div>
    <?php if(@$_GET['q']==1) 
                {
                    $result = mysqli_query($con,"SELECT * FROM exercise ORDER BY date DESC") or die('Error');
                    echo  '<div class="panel" style="color:white">
                    <div class="table-responsive" style="color:white">
                    <table class="table table-striped title1" style="color:white; background-color:white;">
                    <tr>
                    <td><center><b>Exercise no.</b></center></td>
                    <td><center><b>Total question</b></center></td>
                    <td><center><b>Action</b></center></td>
                    </tr>';
                    $c=1;
                    while($row = mysqli_fetch_array($result)) {
                        $title = $row['name'];
                        $total = $row['total'];
                        $eid = $row['eid']; 
                        $q12=mysqli_query($con,"SELECT score FROM history WHERE eid='$eid'" )or die('Error98');
                    $rowcount=mysqli_num_rows($q12);
                    if($rowcount == 0){
                        echo '<tr>
                        <td><center>'.$title.'</center></td>
                        <td><center>'.$total.'</center></td>
                        <td><center><b><a href="welcome1.php?q=quiz&step=2&name='.$title.'&n=1&t='.$total.'" class="btn sub1" style="color:black;margin:0px;background:#1de9b6"><span class="glyphicon glyphicon-new-window" aria-hidden="true"></span>&nbsp;<span class="title1"><b>Start</b></span></a></b></center></td></tr>';
                    }
                    else
                    {
                    echo '<tr style="color:#99cc32">
                    <td><center>'.$ctitle.'</center></td>
                    <td><center>'.$title.'&nbsp;<span title="This quiz is already solve by you" class="glyphicon glyphicon-ok" aria-hidden="true"></span></center></td>
                    <td><center>'.$total.'</center></td>
                    <td><center><b><a href="exupdate.php?q=quizre&step=25&name='.$title.'&n=1&t='.$total.'" class="pull-right btn sub1" style="color:black;margin:0px;background:red"><span class="glyphicon glyphicon-repeat" aria-hidden="true"></span>&nbsp;<span class="title1"><b>Restart</b></span></a></b></center></td></tr>';
                    }
                    }
                    $c=0;
                    echo '</table></div></div>';
                }?>

                <?php
                    if(@$_GET['q']== 'quiz' && @$_GET['step']== 2) 
                    {
                        $name=@$_GET['name'];
                        $sn=@$_GET['n'];
                        $total=@$_GET['t'];
                        $q=mysqli_query($con,"SELECT * FROM equestion WHERE name='$name' AND sn='$sn' " );
                        echo '<div class="panel" style="margin:5%">';
                        while($row=mysqli_fetch_array($q) )
                        {
                            $qns=$row['qans'];
                            $name=$row['name'];
                            echo '<b>Question &nbsp;'.$sn.'&nbsp;::<br /><br />'.$qns.'</b><br /><br />';
                        }
                        $q=mysqli_query($con,"SELECT * FROM eoption WHERE name='$name' " );
                        echo '<form action="exupdate.php?q=quiz&step=2&name='.$name.'&n='.$sn.'&t='.$total.'" method="POST"  class="form-horizontal">
                        <br />';

                        while($row=mysqli_fetch_array($q) )
                        {
                            $option=$row['qans'];
                            $optionid=$row['eopt'];
                            echo'<input type="radio" name="ans" value="'.$optionid.'">&nbsp;'.$option.'<br /><br />';
                        }
                        echo'<br /><button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span>&nbsp;Submit</button></form></div>';
                    }
?>
</div>
</section>
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
  <script src="../assets/vendor/purecounter/purecounter.js"></script>
  <script src="../assets/vendor/aos/aos.js"></script>
  <script src="../assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="../assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="../assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="../assets/vendor/swiper/swiper-bundle.min.js"></script>

  <!-- Template Main JS File -->
  <script src="../assets/js/main.js"></script>

</body>

</html>