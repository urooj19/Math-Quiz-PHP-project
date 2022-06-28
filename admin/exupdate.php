<?php
 $con= new mysqli('localhost','admingst','getsolutry','getsolutry_db');
   if($con->connect_error){
       echo "errorconne".$con->connect_error;
   }
   
  session_start();
  $email=$_SESSION['email'];

  if(isset($_SESSION['key']))
  {
    if(@$_GET['q']== 'addquiz'&& $_SESSION['key']=='admin') 
    {
      $name = $_POST['name'];
      $chname=$_POST['chname'];
      $total = $_POST['total'];
      $eid=uniqid();
      $q3=mysqli_query($con,"INSERT INTO exercise VALUES  ('$eid','$chname','$name','$total', NOW())");
      header("location:quiz.php?eq=4&step=2&eid=$id&n=$total");
    }
  }

  if(isset($_SESSION['key']))
  {
   if(@$_GET['q']== 'addqns'&& $_SESSION['key']=='admin') 
    {
      $n=@$_GET['n'];
      $name=@$_GET['name'];
      $ch=@$_GET['ch'];
      for($i=1;$i<=$n;$i++)
      {
        $qid=uniqid();
        $qns=$_POST['qns'.$i];
        $q3=mysqli_query($con,"INSERT INTO equestion VALUES  ('$name','$qid','$qns' , '$ch' , '$i')");
        $a=$_POST[$i.'1'];
        $b=$_POST[$i.'2'];
        $c=$_POST[$i.'3'];
        $d=$_POST[$i.'4'];
        $qa=mysqli_query($con,"INSERT INTO eoption VALUES  ('$name','$qns','$a')") or die('Error61');
        $qb=mysqli_query($con,"INSERT INTO eoption VALUES  ('$name','$qns','$b')") or die('Error62');
        $qc=mysqli_query($con,"INSERT INTO eoption VALUES  ('$name','$qns','$c')") or die('Error63');
        $qd=mysqli_query($con,"INSERT INTO eoption VALUES  ('$name','$qns','$d')") or die('Error64');
        $e=$_POST['ans'.$i];
        switch($e)
        {
          case 'a': $ansid=$a; break;
          case 'b': $ansid=$b; break;
          case 'c': $ansid=$c; break;
          case 'd': $ansid=$c; break;
          default: $ansid=$a;
        }
        $qans=mysqli_query($con,"INSERT INTO eanswer VALUES  ('$name','$qns','$ansid')");
      }
      header("location:quiz.php?eq=5");
    }
  }
  
  if(@$_GET['q']== 'quiz' && @$_GET['step']== 2) 
  {
    $name=@$_GET['name'];
    $sn=@$_GET['n'];
    $total=@$_GET['t'];
    $ans=$_POST['ans'];
    $qid=@$_GET['qid'];
    $q=mysqli_query($con,"SELECT * FROM eanswer WHERE name='$name' " );
    while($row=mysqli_fetch_array($q) )
    {  $ansid=$row['ansid']; }
    if($ans == $ansid)
    {
      $q=mysqli_query($con,"SELECT * FROM exercise WHERE name='$name' " );
      while($row=mysqli_fetch_array($q) )
      {
        $sahi=$row['sahi'];
      }
      if($sn == 1)
      {
        $q=mysqli_query($con,"INSERT INTO history VALUES('$email','$eid' ,'0','0','0','0',NOW())")or die('Error');
      }
      $q=mysqli_query($con,"SELECT * FROM history WHERE eid='$eid' AND email='$email' ")or die('Error115');
      while($row=mysqli_fetch_array($q) )
      {
        $s=$row['score'];
        $r=$row['sahi'];
      }
      $r++;
      $s=$s+$sahi;
      $q=mysqli_query($con,"UPDATE `history` SET `score`=$s,`level`=$sn,`sahi`=$r, date= NOW()  WHERE  email = '$email' AND eid = '$eid'")or die('Error124');
    } 
    else
    {
      $q=mysqli_query($con,"SELECT * FROM exercise WHERE name='$name' " )or die('Error129');
      while($row=mysqli_fetch_array($q) )
      {
        $wrong=$row['wrong'];
      }
      if($sn == 1)
      {
        $q=mysqli_query($con,"INSERT INTO history VALUES('$email','$eid' ,'0','0','0','0',NOW() )")or die('Error137');
      }
      $q=mysqli_query($con,"SELECT * FROM history WHERE eid='$eid' AND email='$email' " )or die('Error139');
      while($row=mysqli_fetch_array($q) )
      {
        $s=$row['score'];
        $w=$row['wrong'];
      }
      $w++;
      $s=$s-$wrong;
      $q=mysqli_query($con,"UPDATE `history` SET `score`=$s,`level`=$sn,`wrong`=$w, date=NOW() WHERE  email = '$email' AND eid = '$eid'")or die('Error147');
    }
    if($sn != $total)
    {
      $sn++;
      header("location:welcome1.php?q=quiz&step=2&eid=$eid&n=$sn&t=$total")or die('Error152');
    }
    else if( $_SESSION['key']!='suryapinky')
    {
      $q=mysqli_query($con,"SELECT score FROM history WHERE eid='$eid' AND email='$email'" )or die('Error156');
      while($row=mysqli_fetch_array($q) )
      {
        $s=$row['score'];
      }
      $q=mysqli_query($con,"SELECT * FROM rank WHERE email='$email'" )or die('Error161');
      $rowcount=mysqli_num_rows($q);
      if($rowcount == 0)
      {
        $q2=mysqli_query($con,"INSERT INTO rank VALUES('$email','$s',NOW())")or die('Error165');
      }
      else
      {
        while($row=mysqli_fetch_array($q) )
        {
          $sun=$row['score'];
        }
        $sun=$s+$sun;
        $q=mysqli_query($con,"UPDATE `rank` SET `score`=$sun ,time=NOW() WHERE email= '$email'")or die('Error174');
      }
      header("location:welcome1.php?q=result&eid=$eid");
    }
    else
    {
      header("location:welcome1.php?q=result&eid=$eid");
    }
  }


  if(isset($_SESSION['key']))
  {

    if(@$_GET['q']== 'rmquiz'&& $_SESSION['key']=='admin') 
    {
      $name=@$_GET['name'];
      $result = mysqli_query($con,"SELECT * FROM equestion WHERE name='$name' ") or die('Error');
      while($row = mysqli_fetch_array($result)) 
      {
        $name = $row['name'];
        $r1 = mysqli_query($con,"DELETE FROM eoption WHERE name='$name'") or die('Error');
        $r2 = mysqli_query($con,"DELETE FROM eanswer WHERE name='$name' ") or die('Error');
      }
      $r3 = mysqli_query($con,"DELETE FROM equestion WHERE name='$name' ") or die('Error');
      $r4 = mysqli_query($con,"DELETE FROM exercise WHERE name='$name' ") or die('Error');
      header("location:quiz.php?eq=5");
    }
  }
  
  if(@$_GET['q']== 'quizre' && @$_GET['step']== 25 ) 
  {
    $eid=@$_GET['eid'];
    $n=@$_GET['n'];
    $t=@$_GET['t'];
    $q=mysqli_query($con,"SELECT score FROM history WHERE eid='$eid' AND email='$email'" )or die('Error156');
    while($row=mysqli_fetch_array($q) )
    {
      $s=$row['score'];
    }
    $q=mysqli_query($con,"DELETE FROM `history` WHERE eid='$eid' AND email='$email' " )or die('Error184');
    $q=mysqli_query($con,"SELECT * FROM rank WHERE email='$email'" )or die('Error161');
    while($row=mysqli_fetch_array($q) )
    {
      $sun=$row['score'];
    }
    $sun=$sun-$s;
    $q=mysqli_query($con,"UPDATE `rank` SET `score`=$sun ,time=NOW() WHERE email= '$email'")or die('Error174');
    header("location:welcome1.php?q=quiz&step=2&eid=$eid&n=1&t=$t");
  }
?>

  
  
?>