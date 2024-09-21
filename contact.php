<?php 
include 'header.php';
include 'inc/config.php';
include 'inc/Database.php';
include 'inc/depandency.php'; 
?>

        <!--  MAIN CONTENT  -->

        <section class="section-content-block section-contact-block no-bottom-padding">

            <div class="container">

                <div class="row">

                    <div class ="col-md-12">
                        <h2 class="contact-title">Contact us</h2>                           
                    </div>               
                    <?php
                    $db = new Database();
                    $query = "SELECT * FROM contact";
                    $read = $db->select($query);
                    ?>
                    <?php if($read){?>
                    <?php 
                    $i=1;
                    while($row = $read->fetch_assoc()){
                    ?>
                    <div class="col-md-4">

                        <ul class="contact-info contact-title">
                            <li>
                                <span class="icon-container"><i class="fa fa-user"></i></span>
                                <address><?php echo $row['name']; ?></address>
                            </li>
                        </ul>                        

                    </div>

                    <div class="col-md-4">

                        <ul class="contact-info contact-title">

                            <li>
                                <span class="icon-container"><i class="fa fa-phone"></i></span>
                                <address><a href=""><?php echo $row['phone']; ?></a></address>
                            </li>

                        </ul>                        

                    </div>

                    <div class="col-md-4">
                        <ul class="contact-info contact-title">
                            <li>
                                <span class="icon-container"><i class="fa fa-envelope"></i></span>
                                <address><a href="mailto:<?php echo $row['email']; ?>"><?php echo $row['email']; ?></a></address>
                            </li>
                        </ul>                        

                    </div>                
                    <?php } ?>
                    <?php } else { ?>
                    <p>Data is not available !!</p>
                    <?php } ?>
                </div> 

            </div>

        </section>
<?php include 'footer.php' ?>