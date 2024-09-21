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
                            $query = "SELECT * FROM campaign ORDER BY id DESC";
                            $read = $db->select($query);
                            ?>
                            <tr>
                                <th>ID</th>
                                <th>Location</th>
                                <th>Date</th>
                                <th>Start Time</th>
                                <th>End Time</th>
                                <th>Update</th>
                            </tr>
                            <?php if($read){?>
                            <?php 
                            $i=1;
                            while($row = $read->fetch_assoc()){
                            ?>
                            <tr>
                                <td><?php echo $i++ ?></td>
                                <td><?php echo $row['location']; ?></td>
                                <td><?php echo $row['date']; ?></td>
                                <td><?php echo $row['start_time']; ?></td>
                                <td><?php echo $row['end_time']; ?></td>
                                <td><a href="cmupdate.php?id=<?php echo urlencode($row['id']); ?>"><button type="submit" name="update" class="btn btn-success">Update</button></a></td>
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