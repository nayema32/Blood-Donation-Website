<?php include 'header.php'; ?>
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Contact Registration <small>Statistics Overview</small>
                        </h1>
                        <form method="post" action="caction.php">
                        <div class="col-md-6 col-md-offset-3">
                            <div class="form-group">
                                <label>Name</label>
                                <input type="text" name="name" placeholder="Name" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Mobile</label>
                                <input type="text" name="phone" placeholder="Mobile Number" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input type="text" name="email" placeholder="Email" class="form-control">
                            </div>
                            <div class="form-group">
                                <button type="submit" name="submit" class="btn btn-success">Submit</button>
                                <button type="reset" class="btn btn-warning">Reset</button><br><br>
                            </div>
                        </form>
                    </div>
                </div>
<?php include 'footer.php'; ?>