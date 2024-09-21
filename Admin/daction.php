<?php
include '../inc/config.php';
include '../inc/Database.php';
include '../inc/depandency.php'; 
?>
<?php
  $db = new Database();
  if(isset($_POST['submit'])){
  $name = mysqli_real_escape_string($db->link, $_POST['name']);
  $phone  = mysqli_real_escape_string($db->link, $_POST['phone']);
  $email  = mysqli_real_escape_string($db->link, $_POST['email']);
  $division = mysqli_real_escape_string($db->link, $_POST['division']);
  $district  = mysqli_real_escape_string($db->link, $_POST['district']);
  $thana = mysqli_real_escape_string($db->link, $_POST['thana']);
  $blood_group = mysqli_real_escape_string($db->link, $_POST['blood_group']);
  $age  = mysqli_real_escape_string($db->link, $_POST['age']);
  $lastdate  = mysqli_real_escape_string($db->link, $_POST['lastdate']);
  $userid  = mysqli_real_escape_string($db->link, $_POST['userid']);
  $password = mysqli_real_escape_string($db->link, $_POST['password']);
  if($userid == '' || $blood_group == '' || $password == '' || $phone == '' || $email == ''){
    $error = "Field must not be Empty !!";
  } else {
   $query = "INSERT INTO donor_temp (name ,phone ,email ,division ,district ,thana ,blood_group ,age ,lastdate ,userid ,password) 
           Values('$name','$phone','$email','$division','$district','$thana','$blood_group','$age','$lastdate','$userid','$password')";
  $create = $db->insert($query);
    header("Location: donors_submit.php");
  }
}
?>