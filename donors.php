<?php 
include 'header.php';
include 'inc/config.php';
include 'inc/Database.php';
include 'inc/depandency.php'; 
?>
        <!-- SECTION CTA  -->   

        <section class="cta-section-2">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12 col-xs-12">
                        <h2>We are helping people from 4 years</h2>
                        <p>
                            You can give blood at any of our blood donation venues all over the world. We have total sixty thousands donor centers and visit thousands of other venues on various occasions.                            
                        </p>
                        <a class="btn btn-cta-2" href="donors-registraion.php">BECOME DONOR</a>
                    </div> <!--  end .col-md-8  -->
                </div> <!--  end .row  -->
            </div>
        </section> 
        <section class="section-content-block">
            <div class="container">
                <div class="row">
                    <div class="table-responsive">
                        <form method="post" action="">
                            <table class="table table-bordered">
                                <tr>
                                    <td>Division</td>
                                    <td>District</td>
                                    <td>Thana</td>
                                    <td>Blood Group</td>
                                    <td>Action</td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="form-group">
                                            <select type="text" class="form-control required" name="division" id="division">
                                              <option selected="selected"></option>
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
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <select type="text" class="form-control required" name="district" id="district">
                                              <option selected="selected"></option>
                                            </select>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <select type="text" class="form-control required" name="thana" id="thana">
                                              <option selected="selected"></option>
                                            </select>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <select name="blood_group" class="form-control">
                                                <option></option>
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
                                    </td>
                                    <td>
                                        <button type="submit" name="submit" class="btn btn-success">Search</button>
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <?php
                            if(isset($_POST['submit'])){
                            $division = $_POST['division'];
                            $district = $_POST['district'];
                            $thana = $_POST['thana'];
                            $blood_group = $_POST['blood_group'];
                            $db = new Database();
                            $query = "SELECT * FROM donor WHERE division LIKE '%" .$division. "%' AND district LIKE '%" .$district. "%' AND thana LIKE '%" .$thana. "%' AND blood_group LIKE '%" .$blood_group. "%'";
                            $read = $db->select($query);
                            ?>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Phone</th>
                                <th>Email</th>
                                <th>Division</th>
                                <th>District</th>
                                <th>Thana</th>
                                <th>Blood Group</th>
                                <th>Last Date of Donation</th>
                            </tr>
                            <?php if($read){?>
                            <?php 
                            $i=1;
                            while($row = $read->fetch_assoc()){
                            ?>
                            <tr>
                                <td><?php echo $i++ ?></td>
                                <td><?php echo $row['name']; ?></td>
                                <td><?php echo $row['phone']; ?></td>
                                <td><?php echo $row['email']; ?></td>
                                <td><?php echo $row['division']; ?></td>
                                <td><?php echo $row['district']; ?></td>
                                <td><?php echo $row['thana']; ?></td>
                                <td><?php echo $row['blood_group']; ?></td>
                                <td><?php echo $row['lastdate']; ?></td>
                            </tr>
                            <?php } ?>
                            <?php } else { ?>
                            <p>Data is not available !!</p>
                            <?php } ?>
                            <?php } ?>
                        </table>
                    </div>
                </div> <!--  end .row  -->
            </div> <!--  end container -->
        </section> <!-- end .section-content-block  -->   
<?php include 'footer.php' ?>