<?php 
include 'header.php';
?>
<?php
  $id = $_GET['id'];
 $db = new Database();
 $query = "SELECT * FROM donor WHERE id=$id";
 $getData = $db->select($query)->fetch_assoc();
  if(isset($_POST['submit'])){
  $name = mysqli_real_escape_string($db->link, $_POST['name']);
  $email   = mysqli_real_escape_string($db->link, $_POST['email']);
  $phone  = mysqli_real_escape_string($db->link, $_POST['phone']);
  $division  = mysqli_real_escape_string($db->link, $_POST['division']);
  $district = mysqli_real_escape_string($db->link, $_POST['district']);
  $thana  = mysqli_real_escape_string($db->link, $_POST['thana']);
  $blood_group = mysqli_real_escape_string($db->link, $_POST['blood_group']);
  $age = mysqli_real_escape_string($db->link, $_POST['age']);
  $lastdate  = mysqli_real_escape_string($db->link, $_POST['lastdate']);
  $userid = mysqli_real_escape_string($db->link, $_POST['userid']);
  $password = mysqli_real_escape_string($db->link, $_POST['password']);
  if($password == '' || $age == '' || $userid == '' || $phone == '' || $division == ''){
    $error = "Field must not be Empty !!";
  } else {
   $query = "UPDATE donor

   SET 
   name='$name',
   email='$email',
   phone='$phone',
   division='$division',
   district='$district',
   thana='$thana',
   blood_group='$blood_group',
   age='$age',
   lastdate='$lastdate',
   userid='$userid',
   password='$password'
   WHERE id = $id";
    $update = $db->update($query);
    $msg = "Successfully Updated";
    echo "<script type='text/javascript'>alert('$msg');</script>";
  }
}
?>
<?php
if(isset($_POST['delete'])){
 $query = "DELETE FROM donor WHERE id=$id";
 $deleteData = $db->delete($query);
 $msg = "Successfully Deleted";
 echo "<script type='text/javascript'>alert('$msg');</script>";
}
?>

                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Donor Update <small>Statistics Overview</small>
                            <form method="post" action="dupdate.php?id=<?php echo $id;?>">
                        <div class="col-md-10 col-md-offset-1">
                            <div class="form-group col-md-6">
                                <label>Name</label>
                                <input type="text" name="name" value="<?php echo $getData['name'] ?>" class="form-control">
                            </div>
                            <div class="form-group col-md-6">
                                <label>Mobile</label>
                                <input type="text" name="phone" value="<?php echo $getData['phone'] ?>" class="form-control">
                            </div>
                            <div class="form-group col-md-6">
                                <label>Email</label>
                                <input type="email" name="email" value="<?php echo $getData['email'] ?>" class="form-control">
                            </div>
                            <div class="form-group col-md-6">
                                <label>Last Date of Blood Donation</label>
                                <div class="input-group date form_date" data-date="2017-01-16T05:25:07Z" data-date-format="dd MM yyyy" data-link-field="dtp_input1">
                                    <input class="form-control" size="16" type="text" value="<?php echo $getData['lastdate'] ?>" readonly  name="lastdate">
                                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                                </div>
                            </div>
                            <div class="form-group col-md-6">
                                <label>Division</label>
                                <select type="text" class="form-control required" name="division" id="division">
                                  <option selected="selected"><?php echo $getData['division'] ?></option>
                                  <?php
                                  $stmt = $DB_con->prepare("SELECT * FROM division");
                                  $stmt->execute();
                                  while($row=$stmt->fetch(PDO::FETCH_ASSOC))
                                  {
                                  ?>
                                  <option value="<?php echo $row['division_id']; ?>"><?php echo $row['division_name']; ?></option>
                                  <?php
                                  } 
                                  ?>
                                </select>
                            </div>
                            <div class="form-group col-md-6">
                                <label>District</label>
                                <select type="text" class="form-control required" name="district" id="district">
                                  <option selected="selected"><?php echo $getData['district'] ?></option>
                                </select>
                            </div>
                            <div class="form-group col-md-6">
                                <label>Thana</label>
                                <select type="text" class="form-control required" name="thana" id="thana">
                                  <option selected="selected"><?php echo $getData['thana'] ?></option>
                                </select>
                            </div>
                            <div class="form-group col-md-6">
                                <label>Blood Group</label>
                                <select name="blood_group" class="form-control">
                                    <option><?php echo $getData['blood_group'] ?></option>
                                    <option>A+</option>
                                    <option>B+</option>
                                    <option>O+</option>
                                    <option>AB+</option>
                                    <option>A-</option>
                                    <option>B-</option>
                                    <option>O-</option>
                                    <option>AB-</option>
                                </select>
                            </div>
                            <div class="form-group col-md-6">
                                <label>Age</label>
                                <input type="text" name="age" value="<?php echo $getData['age'] ?>" class="form-control">
                            </div>
                            <div class="form-group col-md-6">
                                <label>User ID</label>
                                <input type="number" name="userid" readonly=""
                                value="<?php echo $getData['userid'] ?>"
                                class="form-control">
                            </div>
                            <div class="form-group col-md-6">
                                <label>Password</label>
                                <input type="text" name="password" 
                                value="<?php echo $getData['password'] ?>"
                                class="form-control">
                            </div>
                            <div class="form-group col-md-6">
                                <br>
                                <button type="submit" name="submit" class="btn btn-success">Submit</button>
                                <button type="submit" name="delete" class="btn btn-success">Delete</button>
                            </div>
                        </form>
                        </h1>
                    </div>
                </div>
<?php include 'footer.php'; ?>
