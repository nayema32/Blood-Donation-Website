<?php
include '../inc/config.php';
include '../inc/Database.php';
include '../inc/depandency.php'; 
?>
<?php
  $db = new Database();
  if(isset($_POST['submit'])){
  $location = mysqli_real_escape_string($db->link, $_POST['location']);
  $date  = mysqli_real_escape_string($db->link, $_POST['date']);
  $start_time  = mysqli_real_escape_string($db->link, $_POST['start_time']);
  $end_time = mysqli_real_escape_string($db->link, $_POST['end_time']);
  if($location == '' || $end_time == '' || $date == '' || $start_time == ''){
    $error = "Field must not be Empty !!";
  } else {
   $query = "INSERT INTO campaign (location ,date ,start_time ,end_time) 
           Values('$location','$date','$start_time','$end_time')";
  $create = $db->insert($query);
    header("Location: campaign.php");
  }
}
?>