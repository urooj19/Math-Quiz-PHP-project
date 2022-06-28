<?php
    $con= new mysqli('localhost','admingst','getsolutry','getsolutry_db') or die("Could not connect to mysql".mysqli_error($con));
    session_start();
    if(!(isset($_SESSION['email'])))
    {
        header("location:login.php");
    }
    else
    {
        $name = $_SESSION['name'];
        $email = $_SESSION['email'];
        include_once '../database.php';
    }
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title> Admin Panel </title>
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
      <div class="sidenav">
        <ul>
            <!--<h1 class="logo me-auto me-lg-0"><a href="index.html">GetSoluTry<span>.</span></a></h1>-->
                <center><a href="welcome.php" class="logo me-auto me-lg-0"><img src="../assets/img/gst_logo1.png" alt="GetSoluTry" class="img-fluid" style="margin-left: -40px;"></a></center>
                    <?php if(@$_GET['q']==0)?><a href="welcome.php?q=0">Home</a>
                    <?php if(@$_GET['q']==1)?><a href="welcome.php?q=1">User</a>
                    <?php if(@$_GET['q']==2)?><a href="welcome.php?q=2">Ranking</a>

                    <?php if(@$_GET['eq']==4 || @$_GET['eq']==5) ?>
                    <a href="./quiz.php?eq=4">Add exercise Quiz</a>
                    <a href="./quiz.php?eq=5">Remove exercise Quiz</a>

                    <?php if(@$_GET['q']==4 || @$_GET['q']==5) ?>
                    <a href="welcome.php?q=4">Add Quiz</a>
                    <a href="welcome.php?q=5">Remove Quiz</a>

                    <?php echo''; ?><a href="logout1.php?q=welcome.php">Log out</a>
                </ul>
                <i class="bi bi-list mobile-nav-toggle"></i>
            </div>

    <div style="padding-top:50px ; margin-left: 300px; margin-right: 100px;">
        <?php 

        if(@$_GET['q']==0)
                {
                   echo "<br><br>
                   <h1><center>WELCOME 
                   <br>TO Admin Page!!
                    </center></h1>"; 
                }
            ?>


            <?php

                if(@$_GET['q']== 2) 
                {
                    $q=mysqli_query($con,"SELECT * FROM rank  ORDER BY score DESC " )or die('Error223');
                    echo  '<div class="table-responsive">
                    <table class="table table-striped table-hover" >
                    <h1 style="color: #ffc107"><center>USER RANKING</center></h1>
                    <tr style="color:red">
                    <td><center><b>Rank</b></center></td>
                    <td><center><b>Name</b></center></td>
                    <td><center><b>Score</b></center></td>
                    </tr>';
                    $c=0;
                    while($row=mysqli_fetch_array($q) )
                    {
                        $e=$row['email'];
                        $s=$row['score'];
                        $q12=mysqli_query($con,"SELECT * FROM user WHERE email='$e' " )or die('Error231');
                        while($row=mysqli_fetch_array($q12) )
                        {
                            $name=$row['name'];
                            $college=$row['college'];
                        }
                        $c++;
                        echo '<tr>
                        <td style="color:#99cc32"><center><b>'.$c.'</b></center></td>
                        <td><center>'.$e.'</center></td>
                        <td><center>'.$s.'</center></td>
                        </tr>';
                    }
                    echo '</table></div></div>';
                }
                ?>

                <?php 
                    if(@$_GET['q']==1) 
                    {
                        $result = mysqli_query($con,"SELECT * FROM user") or die('Error');
                        echo  '<div class="panel">
                        <div class="table-responsive">
                        <table class="table table-striped title1">
                        <h1 style="color: #ffc107"><center>USER DETAILS</center></h1>
                        <tr><td><center><b>S.N.</b></center></td>
                        <td><center><b>Name</b></center></td>
                        <td><center><b>College</b></center></td>
                        <td><center><b>Email</b></center></td>
                        <td><center><b>Action</b></center></td>
                        </tr>';
                        $c=1;
                        while($row = mysqli_fetch_array($result)) 
                        {
                            $name = $row['name'];
                            $email = $row['email'];
                            $college = $row['college'];
                            echo '<tr>
                            <td><center>'.$c++.'</center></td>
                            <td><center>'.$name.'</center></td>
                            <td><center>'.$college.'</center></td>
                            <td><center>'.$email.'</center></td>
                            <td><center><b><a href="update.php?demail='.$email.'" class="pull-right btn sub1" style="margin:0px;background: #ffc107;color:black"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span>Remove</b></a></center></td>
                            </tr>';
                        }
                        $c=0;
                        echo '</table></div></div>';
                    }
                ?>

                <?php
                    if(@$_GET['q']==4 && !(@$_GET['step']) ) 
                    {
                        echo '<div class="row">
                        <h1 style="color: #ffc107"><center>Enter Quiz Details</center></h1>
                        <div class="col-md-3"></div>
                        <div class="col-md-6">   
                        <form class="form-horizontal title1" name="form" action="update.php?q=addquiz"  method="POST">
                            <fieldset>
                                <div class="form-group">
                                    <label class="col-md-12 control-label" for="name"></label>  
                                    <div class="col-md-12">
                                        <input id="name" name="name" placeholder="Enter Quiz title" class="form-control input-md" type="text">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-12 control-label" for="total"></label>  
                                    <div class="col-md-12">
                                        <input id="total" name="total" placeholder="Enter total number of questions" class="form-control input-md" type="number">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-12 control-label" for="right"></label>  
                                    <div class="col-md-12">
                                        <input id="right" name="right" placeholder="Enter marks on right answer" class="form-control input-md" min="0" type="number">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-12 control-label" for="wrong"></label>  
                                    <div class="col-md-12">
                                        <input id="wrong" name="wrong" placeholder="Enter minus marks on wrong answer without sign" class="form-control input-md" min="0" type="number">
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label class="col-md-12 control-label" for=""></label>
                                    <div class="col-md-12"> 
                                        <input  type="submit" style="margin-left:45%" class="btn btn-primary" value="Submit" class="btn btn-primary"/>
                                    </div>
                                </div>

                            </fieldset>
                        </form></div>';
                    }
                ?>

                <?php
                    if(@$_GET['q']==4 && (@$_GET['step'])==2 ) 
                    {
                        echo ' 
                        <div class="row">
                        <span class="title1" style="margin-left:40%;font-size:30px;">
                        <b>Enter Question Details</b></span>
                        <br/><br/>
                        <div class="col-md-3"></div>
                        <div class="col-md-6"><form class="form-horizontal title1" name="form" action="update.php?q=addqns&n='.@$_GET['n'].'&eid='.@$_GET['eid'].'&ch=4 "  method="POST">
                        <fieldset>
                        ';
                
                        for($i=1;$i<=@$_GET['n'];$i++)
                        {
                            echo '<b>Question number&nbsp;'.$i.'&nbsp;:</><br /><!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-12 control-label" for="qns'.$i.' "></label>  
                                        <div class="col-md-12">
                                            <textarea rows="3" cols="5" name="qns'.$i.'" class="form-control" placeholder="Write question number '.$i.' here..."></textarea>  
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12 control-label" for="'.$i.'1"></label>  
                                        <div class="col-md-12">
                                            <input id="'.$i.'1" name="'.$i.'1" placeholder="Enter option a" class="form-control input-md" type="text">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12 control-label" for="'.$i.'2"></label>  
                                        <div class="col-md-12">
                                            <input id="'.$i.'2" name="'.$i.'2" placeholder="Enter option b" class="form-control input-md" type="text">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12 control-label" for="'.$i.'3"></label>  
                                        <div class="col-md-12">
                                            <input id="'.$i.'3" name="'.$i.'3" placeholder="Enter option c" class="form-control input-md" type="text">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12 control-label" for="'.$i.'4"></label>  
                                        <div class="col-md-12">
                                            <input id="'.$i.'4" name="'.$i.'4" placeholder="Enter option d" class="form-control input-md" type="text">
                                        </div>
                                    </div>
                                    <br />
                                    <b>Correct answer</b>:<br />
                                    <select id="ans'.$i.'" name="ans'.$i.'" placeholder="Choose correct answer " class="form-control input-md" >
                                    <option value="a">Select answer for question '.$i.'</option>
                                    <option value="a"> option a</option>
                                    <option value="b"> option b</option>
                                    <option value="c"> option c</option>
                                    <option value="d"> option d</option> </select><br /><br />'; 
                        }
                        echo '<div class="form-group">
                                <label class="col-md-12 control-label" for=""></label>
                                <div class="col-md-12"> 
                                    <input  type="submit" style="margin-left:45%" class="btn btn-primary" value="Submit" class="btn btn-primary"/>
                                </div>
                              </div>

                        </fieldset>
                        </form></div>';
                    }
                ?>

                <?php 
                    if(@$_GET['q']==5) 
                    {
                        $result = mysqli_query($con,"SELECT * FROM quiz ORDER BY date DESC") or die('Error');
                        echo  '<div class="panel">
                        <div class="table-responsive">
                        <table class="table table-striped title1">
                        <h1 style="color: #ffc107"><center>REMOVE QUIZ</center></h1>
                        <tr>
                        <td><center><b>S.N.</b></center></td>
                        <td><center><b>Topic</b></center></td>
                        <td><center><b>Total question</b></center></td>
                        <td><center><b>Marks</b></center></td>
                        <td><center><b>Action</b></center></td>
                        </tr>';
                        $c=1;
                        while($row = mysqli_fetch_array($result)) {
                            $title = $row['title'];
                            $total = $row['total'];
                            $sahi = $row['sahi'];
                            $eid = $row['eid'];
                            echo '<tr>
                            <td><center>'.$c++.'</center></td>
                            <td><center>'.$title.'</center></td>
                            <td><center>'.$total.'</center></td>
                            <td><center>'.$sahi*$total.'</center></td>
                            <td>
                            <center><b><a href="update.php?q=rmquiz&eid='.$eid.'" class="pull-right btn sub1" style="margin:0px;background: #ffc107;color:black"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span>&nbsp;<span class="title1"><b>Remove</b></span></a></b></center>
                            </td>
                            </tr>';
                        }
                        $c=0;
                        echo '</table></div></div>';
                    }
                ?>
    </div>

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