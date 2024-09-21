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
                            $query = "SELECT * FROM appointment ORDER BY id DESC";
                            $read = $db->select($query);
                            ?>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Phone</th>
                                <th>Center</th>
                                <th>Date</th>
                                <th>Time</th>
                                <th>Message</th>
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
                                <td><?php echo $row['center']; ?></td>
                                <td><?php echo $row['date']; ?></td>
                                <td><?php echo $row['time']; ?></td>
                                <td><?php echo $row['message']; ?></td>
                                <td><a href="apupdate.php?id=<?php echo urlencode($row['id']); ?>"><button type="submit" name="update" class="btn btn-success">Update</button></a></td>
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