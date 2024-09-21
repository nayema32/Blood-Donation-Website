<?php include 'header.php'; ?>
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Donors <small>Statistics Overview</small>
                        </h1>
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
                                <th>Update</th>
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
                                <td><a href="dupdate.php?id=<?php echo urlencode($row['id']); ?>"><button type="submit" name="update" class="btn btn-success">Update</button></a></td>
                            </tr>
                            <?php } ?>
                            <?php } else { ?>
                            <p>Data is not available !!</p>
                            <?php } ?>
                            <?php } ?>
                        </table>
                    </div>
                    </div>
                </div>
<?php include 'footer.php'; ?>