<?php 
include 'header.php';
include 'inc/config.php';
include 'inc/Database.php';
include 'inc/depandency.php'; 
?>
<?php
  $db = new Database();
  if(isset($_POST['submit'])){
  $name = mysqli_real_escape_string($db->link, $_POST['name']);
  $phone  = mysqli_real_escape_string($db->link, $_POST['phone']);
  $email  = mysqli_real_escape_string($db->link, $_POST['email']);
  $center = mysqli_real_escape_string($db->link, $_POST['center']);
  $date  = mysqli_real_escape_string($db->link, $_POST['date']);
  $time = mysqli_real_escape_string($db->link, $_POST['time']);
  $message = mysqli_real_escape_string($db->link, $_POST['message']);
  if($name == '' || $message == '' || $date == '' || $phone == '' || $email == ''){
    $error = "Field must not be Empty !!";
  } else {
   $query = "INSERT INTO appointment (name ,phone ,email ,center ,date ,time ,message) 
           Values('$name','$phone','$email','$center','$date','$time','$message')";
  $create = $db->insert($query);
    $msg = "Successfully Submited";
    echo "<script type='text/javascript'>alert('$msg');</script>";
  }
}
?>
        <!--  HOME BANNER BLOCK  -->

        <section class="section-banner">

            <div class="container wow fadeInUp">

                <div class="row">
                    <div class="col-md-12 col-sm-12 text-center">
                        <div class="banner-content">
                            <h2>
                                Donate blood and get real blessings.
                            </h2>					
                            <h3>Blood is the most precious gift that anyone can give to another person.<br>
                                Donating blood not only saves the life also save donor's lives.
                            </h3>

                            <a href="#section-appointment" class="btn btn-slider">GET APPOINTMENT</a>   
                        </div>
                    </div> <!-- end .col-md-12  -->
                </div>

            </div>

        </section>

        <!--  SECTION DONATION PROCESS -->

        <section class="section-content-block section-process">

            <div class="container">

                <div class="row">

                    <div class="col-md-12 col-sm-12 text-center">
                        <h2 class="section-heading"><span>Donation</span> Process</h2>
                        <p class="section-subheading">The donation process from the time you arrive center until the time you leave</p>
                    </div> <!-- end .col-sm-10  -->                    

                </div> <!--  end .row  -->

                <div class="row wow fadeInUp">

                    <div class="col-lg-4 col-md-offset-0 col-md-4 col-md-offset-0 col-sm-10 col-sm-offset-1 col-xs-12">

                        <div class="process-layout">

                            <figure class="process-img">

                                <img src="images/process_1.jpg" alt="service" />
                                <div class="step">
                                    <h3>1</h3>
                                </div>
                            </figure> <!-- end .cause-img  -->

                            <article class="process-info">
                                <h2>Registration</h2>   
                                <p>You need to complete a very simple registration form. Which contains all required contact information to enter in the donation process.</p>
                            </article>

                        </div> <!--  end .process-layout -->

                    </div> <!--  end .col-lg-3 -->



                    <div class="col-lg-4 col-md-offset-0 col-md-4 col-md-offset-0 col-sm-10 col-sm-offset-1 col-xs-12">

                        <div class="process-layout">

                            <figure class="process-img">
                                <img src="images/process_2.jpg" alt="process" />
                                <div class="step">
                                    <h3>2</h3>
                                </div>
                            </figure> <!-- end .cau<h5 class="step">1</h5>se-img  -->

                            <article class="process-info">                                   
                                <h2>Screening</h2>
                                <p>A drop of blood from your finger will take for simple test to ensure that your blood iron levels are proper enough for donation process.</p>
                            </article>

                        </div> <!--  end .process-layout -->

                    </div> <!--  end .col-lg-3 -->


                    <div class="col-lg-4 col-md-offset-0 col-md-4 col-md-offset-0 col-sm-10 col-sm-offset-1 col-xs-12">

                        <div class="process-layout">

                            <figure class="process-img">
                                <img src="images/process_3.jpg" alt="process" />
                                <div class="step">
                                    <h3>3</h3>
                                </div>
                            </figure> <!-- end .cause-img  -->

                            <article class="process-info">
                                <h2>Donation</h2>
                                <p>After ensuring and passed screening test successfully you will be directed to a donor bed for donation. It will take only 6-10 minutes.</p>
                            </article>

                        </div> <!--  end .process-layout -->

                    </div> <!--  end .col-lg-3 -->

                </div> <!--  end .row --> 

            </div> <!--  end .container  -->

        </section> <!--  end .section-process -->

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

        <!--  APPOINTMENT SECTION -->

        <section class="section-appointment" id="section-appointment">

            <div class="container wow fadeInUp">

                <div class="row">

                    <div class="col-lg-6 col-md-6 hidden-sm hidden-xs"> 

                        <figure class="appointment-img">
                            <img src="images/appointment.jpg" alt="appointment image">
                        </figure>
                    </div> <!--  end col-lg-6  -->


                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12"> 

                        <div class="appointment-form-wrapper text-center clearfix">
                            <h3 class="join-heading">Request Appointment</h3>
                            <form class="appoinment-form" method="post" action="index.php"> 
                                <div class="form-group col-md-6">
                                    <input id="your_name" class="form-control" name="name" placeholder="Name" type="text">
                                </div>
                                <div class="form-group col-md-6">
                                    <input id="your_email" class="form-control" name="email" placeholder="Email" type="email">
                                </div>
                                <div class="form-group col-md-6">
                                    <input id="your_phone" class="form-control" name="phone" placeholder="Phone" type="text">
                                </div>
                                <div class="form-group col-md-6">
                                    <input id="your_phone" class="form-control" name="center" placeholder="Donation Center" type="text">
                                </div>

                                <div class="form-group col-md-6">
                                    <input id="your_date" class="form-control" name="date" placeholder="Date" type="text">
                                </div>
                                <div class="form-group col-md-6">
                                    <input id="your_time" class="form-control" name="time" placeholder="Time" type="text">
                                </div>

                                <div class="form-group col-md-12 col-sm-12 col-xs-12">
                                    <textarea id="textarea_message" class="form-control" name="message" rows="4" placeholder="Your Message..."></textarea>
                                </div>                                                          

                                <div class="form-group col-md-12 col-sm-12 col-xs-12">
                                    <button id="btn_submit" class="btn-submit" name="submit" type="submit">Get Appointment</button>
                                </div>

                            </form>

                        </div> <!-- end .appointment-form-wrapper  -->

                    </div> <!--  end .col-lg-6 -->

                </div> <!--  end .row  -->

            </div> <!--  end .container -->

        </section>  <!--  end .appointment-section  -->
        <!--  SECTION COUNTER   -->

        <section class="section-counter">

            <div class="container wow fadeInUp">

                <div class="row">

                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">

                        <div class="counter-block-1 text-center">

                            <i class="fa fa-heartbeat icon"></i>
                            <span class="counter">25078</span>                            
                            <h4>Smile</h4>

                        </div>

                    </div> <!--  end .col-lg-3  -->

                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">

                        <div class="counter-block-1 text-center">

                            <i class="fa fa-stethoscope icon"></i>
                            <span class="counter">3235</span>                            
                            <h4>Donors</h4>

                        </div>

                    </div> <!--  end .col-lg-3  -->

                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">

                        <div class="counter-block-1 text-center">

                            <i class="fa fa-users icon"></i>
                            <span class="counter">500</span>                             
                            <h4>Volunteers</h4>

                        </div>

                    </div> <!--  end .col-lg-3  -->

                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">

                        <div class="counter-block-1 text-center">

                            <i class="fa fa-building icon"></i>
                            <span class="counter">64</span>                            
                            <h4>Awards</h4>

                        </div>

                    </div> <!--  end .col-lg-3  -->


                </div> <!-- end row  -->

            </div> <!--  end .container  -->

        </section> <!--  end .section-counter -->
<?php include 'footer.php' ?>