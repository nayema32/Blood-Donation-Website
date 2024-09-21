<?php 
include 'header.php';
include 'inc/config.php';
include 'inc/Database.php';
include 'inc/depandency.php'; 
?>
      <center><h2 class="section-heading" style="margin-top: 15px;"><span>Campaign</span></h2></center>
      <section class="section-content-block">

            <div class="container">

                <div class="row">
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
                            </tr>
                            <?php } ?>
                            <?php } else { ?>
                            <p>Data is not available !!</p>
                            <?php } ?>
                        </table>
                    </div>
                </div> <!--  end .row  -->

            </div> <!--  end container -->

        </section> <!-- end .section-content-block  -->   
<?php include 'footer.php' ?>