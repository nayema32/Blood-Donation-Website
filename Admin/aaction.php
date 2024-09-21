<?php
include '../inc/config.php';
include '../inc/Database.php';
include '../inc/depandency.php'; 
?>
<?php
  $db = new Database();
  if(isset($_POST['submit'])){
  $username = mysqli_real_escape_string($db->link, $_POST['username']);
  $userid  = mysqli_real_escape_string($db->link, $_POST['userid']);
  $password  = mysqli_real_escape_string($db->link, $_POST['password']);
  $UGroup = mysqli_real_escape_string($db->link, $_POST['UGroup']);
  if($username == '' || $UGroup == '' || $userid == '' || $password == ''){
    $error = "Field must not be Empty !!";
  } else {
   $query = "INSERT INTO users (username ,userid ,password ,UGroup) 
           Values('$username','$userid','$password','$UGroup')";
  $create = $db->insert($query);
    header("Location: admin.php");
  }
}
?>