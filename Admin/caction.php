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
  if($name == '' || $phone == '' || $email == ''){
    $error = "Field must not be Empty !!";
  } else {
   $query = "INSERT INTO contact (name ,phone ,email) 
           Values('$name','$phone','$email')";
  $create = $db->insert($query);
    header("Location: contact.php");
  }
}
?>