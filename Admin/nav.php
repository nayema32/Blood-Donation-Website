<!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.php">Admin</a>
            </div>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">
                <li class="dropdown">
                    <?php
                        $db = new Database();
                        $query = "SELECT * FROM users WHERE userid=$UId";
                        $read = $db->select($query);
                        if ($read) {
                        while($row = $read->fetch_assoc()){
                    ?>
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <?php echo $row['username']; ?><b class="caret"></b></a>
                    <?php } ?>
                    <?php } ?>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="../logout.php"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li>
                        <a href="index.php"><i class="fa fa-tachometer" aria-hidden="true"></i> Dashboard</a>
                    </li>
                    <li>
                        <a href="appoinment.php"><i class="fa fa-bookmark-o" aria-hidden="true"></i> Appointment</a>
                    </li>
                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#Donors"><i class="fa fa-heart-o" aria-hidden="true"></i> Donors<b class="caret"></b></a>
                        <ul id="Donors" class="collapse">
                            <li>
                                <a href="donors-registraion.php"><i class="fa fa-fw fa-list"></i>Add Donor</a>
                            </li>
                            <li>
                                <a href="donors.php"><i class="fa fa-fw fa-table"></i>Donors List</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#Campaign"><i class="fa fa-calendar" aria-hidden="true"></i> Campaigns<b class="caret"></b></a>
                        <ul id="Campaign" class="collapse">
                            <li>
                                <a href="campaign-registraion.php"><i class="fa fa-fw fa-list"></i>Add Campaign</a>
                            </li>
                            <li>
                                <a href="campaign.php"><i class="fa fa-fw fa-table"></i>Campaigns List</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#Contact"><i class="fa fa-envelope" aria-hidden="true"></i> Contact<b class="caret"></b></a>
                        <ul id="Contact" class="collapse">
                            <li>
                                <a href="contact-registraion.php"><i class="fa fa-fw fa-list"></i>Add Contact</a>
                            </li>
                            <li>
                                <a href="contact.php"><i class="fa fa-fw fa-table"></i>Contact list</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#Admin"><i class="fa fa-users" aria-hidden="true"></i> Admin<b class="caret"></b></a>
                        <ul id="Admin" class="collapse">
                            <li>
                                <a href="admin-registraion.php"><i class="fa fa-fw fa-list"></i>Add Admin</a>
                            </li>
                            <li>
                                <a href="admin.php"><i class="fa fa-fw fa-table"></i>Admins List</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>