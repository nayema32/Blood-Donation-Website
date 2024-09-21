<?php include 'header.php'; ?>
<?php
  $db = new Database();
  if(isset($_POST['submit'])){
 
   if($Conn->connect_error)  
     echo 'fail'; 
   else{
     $q = "Call Donor";
     mysqli_query($Conn,$q);
     $msg = "Successfully Submited";
     echo "<script type='text/javascript'>alert('$msg');</script>";
   }
}
?>
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Donor Submit <small>Statistics Overview</small>
                        </h1>
                        <div class="table-responsive">
                        <form method="post" action="">
                            <?php
                             $db = new Database();
                             $query = "SELECT * FROM donor_temp";
                             $read = $db->select($query);
                             if ($read) {
                             while($row = $read->fetch_assoc()){
                            ?>
                            <table class="table">
                                <tr>
                                  <td>Name</td>
                                  <td>Email</td>
                                  <td>Phone</td>
                                  <td>Division</td>
                                </tr>
                                <tr>
                                    <td><?php echo $row['name']; ?></td>
                                    <td><?php echo $row['email']; ?></td>
                                    <td><?php echo $row['phone']; ?></td>
                                    <td><?php echo $row['division']; ?></td>
                                </tr>
                                <tr>
                                  <td>District</td>
                                  <td>Thana</td>
                                  <td>Blood Group</td>
                                  <td>Age</td>
                                </tr>
                                <tr>
                                    <td><?php echo $row['district']; ?></td>
                                    <td><?php echo $row['thana']; ?></td>
                                    <td><?php echo $row['blood_group']; ?></td>
                                    <td><?php echo $row['age']; ?></td>
                                </tr>
                                <tr>
                                  <td>Last Date Of Donation</td>
                                  <td>User ID</td>
                                  <td>Password</td>
                                  <td>Action</td>
                                </tr>
                                <tr>
                                    <td><?php echo $row['lastdate']; ?></td>
                                    <td><?php echo $row['userid']; ?></td>
                                    <td><?php echo $row['password']; ?></td>
                                    <td>
                                        <button type="submit" name="submit" class="btn btn-success">Final Submit</button>
                                        <a href="donors-registration.php"><button class="btn btn-default">Back</a>
                                    </td>
                                </tr>
                            </table>
                            <?php } ?>
                            <?php } ?>
                        </form>
                    </div>
                    </div>
                </div>
<?php include 'footer.php'; ?>