<?php include 'header.php'; ?>
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Donor Registration <small>Statistics Overview</small>
                        </h1>
                        <form method="post" action="daction.php">
                        <div class="col-md-10 col-md-offset-1">
                            <div class="form-group col-md-6">
                                <label>Name</label>
                                <input type="text" name="name" placeholder="Your Name" class="form-control">
                            </div>
                            <div class="form-group col-md-6">
                                <label>Mobile</label>
                                <input type="text" name="phone" placeholder="Your Mobile Number" class="form-control">
                            </div>
                            <div class="form-group col-md-6">
                                <label>Email</label>
                                <input type="email" name="email" placeholder="Your Email" class="form-control">
                            </div>
                            <div class="form-group col-md-6">
                                <label>Last Date of Blood Donation</label>
                                <div class="input-group date form_date" data-date="2017-01-16T05:25:07Z" data-date-format="dd MM yyyy" data-link-field="dtp_input1">
                                    <input class="form-control" size="16" type="text" value="" readonly  name="lastdate">
                                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                                </div>
                            </div>
                            <div class="form-group col-md-6">
                                <label>Division</label>
                                <select type="text" class="form-control required" name="division" id="division">
                                  <option selected="selected">--Select Division --</option>
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
                                  <option selected="selected">--Select District--</option>
                                </select>
                            </div>
                            <div class="form-group col-md-6">
                                <label>Thana</label>
                                <select type="text" class="form-control required" name="thana" id="thana">
                                  <option selected="selected">--Select Thana--</option>
                                </select>
                            </div>
                            <div class="form-group col-md-6">
                                <label>Blood Group</label>
                                <select name="blood_group" class="form-control">
                                    <option>---Select One---</option>
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
                                <input type="text" name="age" placeholder="Your Age" class="form-control">
                            </div>
                            <div class="form-group col-md-6">
                                <label>User ID</label>
                                <input type="number" readonly name="userid" 
                                value="<?php $string="0123456789"; echo substr(str_shuffle($string),0,12); ?>" 
                                class="form-control">
                            </div>
                            <div class="form-group col-md-6">
                                <label>Password</label>
                                <input type="text" name="password" 
                                value="<?php $string="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()-"; echo substr(str_shuffle($string),0,12);?>" 
                                class="form-control">
                            </div>
                            <div class="form-group col-md-6">
                                <br>
                                <button type="submit" name="submit" class="btn btn-success">Submit</button>
                                <button type="reset" class="btn btn-warning">Reset</button><br><br>
                            </div>
                        </form>
                    </div>
                </div>
<?php include 'footer.php'; ?>