<?php 
include 'header.php';
?>
<?php
  $id = $_GET['id'];
 $db = new Database();
 $query = "SELECT * FROM appointment WHERE id=$id";
 $getData = $db->select($query)->fetch_assoc();
  if(isset($_POST['submit'])){
}
?>
<?php
if(isset($_POST['delete'])){
 $query = "DELETE FROM appointment WHERE id=$id";
 $deleteData = $db->delete($query);
 $msg = "Successfully Deleted";
 echo "<script type='text/javascript'>alert('$msg');</script>";
}
?>

                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Appointment Update <small>Statistics Overview</small>
                            <form method="post" action="apupdate.php?id=<?php echo $id;?>">
                        <div class="col-md-6 col-md-offset-3">
                            <div class="form-group">
                                <button type="submit" name="delete" class="btn btn-success">Delete</button>
                            </div>
                        </form>
                        </h1>
                    </div>
                </div>
<?php include 'footer.php'; ?>
