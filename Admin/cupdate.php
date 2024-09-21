<?php 
include 'header.php';
?>
<?php
  $id = $_GET['id'];
 $db = new Database();
 $query = "SELECT * FROM contact WHERE id=$id";
 $getData = $db->select($query)->fetch_assoc();
  if(isset($_POST['submit'])){
  $name = mysqli_real_escape_string($db->link, $_POST['name']);
  $phone  = mysqli_real_escape_string($db->link, $_POST['phone']);
  $email  = mysqli_real_escape_string($db->link, $_POST['email']);
  if($name == '' || $phone == '' || $email == ''){
    $error = "Field must not be Empty !!";
  } else {
   $query = "UPDATE contact

   SET 
   name='$name',
   phone='$phone',
   email='$email'
   WHERE id = $id";
    $update = $db->update($query);
    $msg = "Successfully Updated";
    echo "<script type='text/javascript'>alert('$msg');</script>";
  }
}
?>
<?php
if(isset($_POST['delete'])){
 $query = "DELETE FROM contact WHERE id=$id";
 $deleteData = $db->delete($query);
 $msg = "Successfully Deleted";
 echo "<script type='text/javascript'>alert('$msg');</script>";
}
?>

                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Contact Update <small>Statistics Overview</small>
                            <form method="post" action="cupdate.php?id=<?php echo $id;?>">
                        <div class="col-md-6 col-md-offset-3">
                            <div class="form-group">
                                <label>Name</label>
                                <input type="text" name="name" value="<?php echo $getData['name'] ?>" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Mobile</label>
                                <input type="number" readonly name="phone" 
                                value="<?php echo $getData['phone'] ?>" 
                                class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input type="text" name="email" 
                                value="<?php echo $getData['email'] ?>" 
                                class="form-control">
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
