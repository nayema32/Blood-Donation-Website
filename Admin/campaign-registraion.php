<?php include 'header.php'; ?>
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Campaign Registration <small>Statistics Overview</small>
                        </h1>
                        <form method="post" action="cmaaction.php">
                        <div class="col-md-6 col-md-offset-3">
                            <div class="form-group">
                                <label>Location</label>
                                <input type="text" name="location" placeholder="Location" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Date</label>
                                <div class="input-group date form_date" data-date="2017-01-16T05:25:07Z" data-date-format="dd MM yyyy" data-link-field="dtp_input1">
                                    <input class="form-control" size="16" type="text" value="" readonly  name="date">
                                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                                    <span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Start Time</label>
                                <input type="text" name="start_time" placeholder="Start Time" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>End Time</label>
                                <input type="text" name="end_time" placeholder="End Time" class="form-control">
                            </div>
                            <div class="form-group">
                                <button type="submit" name="submit" class="btn btn-success">Submit</button>
                                <button type="reset" class="btn btn-warning">Reset</button><br><br>
                            </div>
                        </form>
                    </div>
                </div>
<?php include 'footer.php'; ?>