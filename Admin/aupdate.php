<?php 
include 'header.php';
?>
<?php
  $id = $_GET['id'];
 $db = new Database();
 $query = "SELECT * FROM users WHERE id=$id";
 $getData = $db->select($query)->fetch_assoc();
  if(isset($_POST['submit'])){
  $username = mysqli_real_escape_string($db->link, $_POST['username']);
  $userid  = mysqli_real_escape_string($db->link, $_POST['userid']);
  $password  = mysqli_real_escape_string($db->link, $_POST['password']);
  $UGroup = mysqli_real_escape_string($db->link, $_POST['UGroup']);
  if($username == '' || $UGroup == '' || $userid == '' || $password == ''){
    $error = "Field must not be Empty !!";
  } else {
   $query = "UPDATE users

   SET 
   username='$username',
   userid='$userid',
   password='$password',
   UGroup='$UGroup'
   WHERE id = $id";
    $update = $db->update($query);
    $msg = "Successfully Updated";
    echo "<script type='text/javascript'>alert('$msg');</script>";
  }
}
?>
<?php
if(isset($_POST['delete'])){
 $query = "DELETE FROM users WHERE id=$id";
 $deleteData = $db->delete($query);
 $msg = "Successfully Deleted";
 echo "<script type='text/javascript'>alert('$msg');</script>";
}
?>

                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Admin Update <small>Statistics Overview</small>
                            <form method="post" action="aupdate.php?id=<?php echo $id;?>">
                        <div class="col-md-6 col-md-offset-3">
                            <div class="form-group">
                                <label>Name</label>
                                <input type="text" name="username" value="<?php echo $getData['username'] ?>" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>User ID</label>
                                <input type="number" readonly name="userid" 
                                value="<?php echo $getData['userid'] ?>" 
                                class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="text" name="password" 
                                value="<?php echo $getData['password'] ?>" 
                                class="form-control">
                                <input type="hidden" name="UGroup" value="<?php echo $getData['UGroup'] ?>" class="form-control">
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
