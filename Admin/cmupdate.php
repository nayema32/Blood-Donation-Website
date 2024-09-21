<?php 
include 'header.php';
?>
<?php
  $id = $_GET['id'];
 $db = new Database();
 $query = "SELECT * FROM campaign WHERE id=$id";
 $getData = $db->select($query)->fetch_assoc();
  if(isset($_POST['submit'])){
  $location = mysqli_real_escape_string($db->link, $_POST['location']);
  $date  = mysqli_real_escape_string($db->link, $_POST['date']);
  $start_time  = mysqli_real_escape_string($db->link, $_POST['start_time']);
  $end_time = mysqli_real_escape_string($db->link, $_POST['end_time']);
  if($location == '' || $end_time == '' || $date == '' || $start_time == ''){
    $error = "Field must not be Empty !!";
  } else {
   $query = "UPDATE campaign

   SET 
   location='$location',
   date='$date',
   start_time='$start_time',
   end_time='$end_time'
   WHERE id = $id";
    $update = $db->update($query);
    $msg = "Successfully Updated";
    echo "<script type='text/javascript'>alert('$msg');</script>";
  }
}
?>
<?php
if(isset($_POST['delete'])){
 $query = "DELETE FROM campaign WHERE id=$id";
 $deleteData = $db->delete($query);
 $msg = "Successfully Deleted";
 echo "<script type='text/javascript'>alert('$msg');</script>";
}
?>

                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Admin Update <small>Statistics Overview</small>
                            <form method="post" action="cmupdate.php?id=<?php echo $id;?>">
                        <div class="col-md-6 col-md-offset-3">
                            <div class="form-group">
                                <label>Location</label>
                                <input type="text" name="location" value="<?php echo $getData['location'] ?>" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Date</label>
                                <div class="input-group date form_date" data-date="2017-01-16T05:25:07Z" data-date-format="dd MM yyyy" data-link-field="dtp_input1">
                                    <input class="form-control" size="16" type="text" value="<?php echo $getData['date'] ?>" readonly  name="date">
                                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                                    <span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Start Time</label>
                                <input type="text" name="start_time" value="<?php echo $getData['start_time'] ?>" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>End Time</label>
                                <input type="text" name="end_time" value="<?php echo $getData['end_time'] ?>" class="form-control">
                            </div>
                            <div class="form-group">
                                <button type="submit" name="submit" class="btn btn-success">Submit</button>
                                <button type="submit" name="delete" class="btn btn-success">Delete</button>
                            </div>
                        </form>
                        </h1>
                    </div>
                </div>
<?php include 'footer.php'; ?>
