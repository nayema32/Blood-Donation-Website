<?php include 'header.php'; ?>
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Admin Registration <small>Statistics Overview</small>
                        </h1>
                        <form method="post" action="aaction.php">
                        <div class="col-md-6 col-md-offset-3">
                            <div class="form-group">
                                <label>Name</label>
                                <input type="text" name="username" placeholder="Admin Name" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>User ID</label>
                                <input type="number" readonly name="userid" 
                                value="<?php $string="0123456789"; echo substr(str_shuffle($string),0,12); ?>" 
                                class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="text" name="password" 
                                value="<?php $string="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()-"; echo substr(str_shuffle($string),0,12);?>" 
                                class="form-control">
                                <input type="hidden" name="UGroup" value="15" class="form-control">
                            </div>
                            <div class="form-group">
                                <button type="submit" name="submit" class="btn btn-success">Submit</button>
                                <button type="reset" class="btn btn-warning">Reset</button><br><br>
                            </div>
                        </form>
                    </div>
                </div>
<?php include 'footer.php'; ?>