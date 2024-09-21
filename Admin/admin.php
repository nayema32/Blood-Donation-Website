<?php include 'header.php'; ?>
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Admin <small>Statistics Overview</small>
                        </h1>
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <?php
                            $db = new Database();
                            $query = "SELECT * FROM users";
                            $read = $db->select($query);
                            ?>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>User Id</th>
                                <th>Password</th>
                                <th>Update</th>
                            </tr>
                            <?php if($read){?>
                            <?php 
                            $i=1;
                            while($row = $read->fetch_assoc()){
                            ?>
                            <tr>
                                <td><?php echo $i++ ?></td>
                                <td><?php echo $row['username']; ?></td>
                                <td><?php echo $row['userid']; ?></td>
                                <td><?php echo $row['password']; ?></td>
                                <td><a href="aupdate.php?id=<?php echo urlencode($row['id']); ?>"><button type="submit" name="update" class="btn btn-success">Update</button></a></td>
                            </tr>
                            <?php } ?>
                            <?php } else { ?>
                            <p>Data is not available !!</p>
                            <?php } ?>
                        </table>
                    </div>
                    </div>
                </div>
<?php include 'footer.php'; ?>