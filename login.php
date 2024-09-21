<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Blood | Login</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <div class="container">
        <br>
          <div class="col-md-6 col-lg-offset-3" style="margin-top:150px;">
          <div class="panel panel-primary">
                        <div class="panel-heading">
                             
                             <?php 

                                $errors = array(
                                    1=>"Invalid userid or password, Try again",
                                    2=>"Please login to access this area"
                                  );

                                $error_id = isset($_GET['err']) ? (int)$_GET['err'] : 0;

                                if ($error_id == 1) {
                                        echo $errors[$error_id];
                                    }elseif ($error_id == 2) {
                                        echo $errors[$error_id];
                                    }
                               ?> 
                        </div>
                        <div class="panel-body">
                    
                            <div class="block-margin-top">
                               

                              <form action="authenticate.php" method="POST" class="form-signin col-md-8 col-md-offset-2" role="form">
                                <div class="form-group">
                                  <legend>Provie Your User ID</legend>  
                                  <input type="text" name="userid" class="form-control" placeholder="userid" required autofocus>
                                </div>
                                <div class="form-group">
                                  <legend>Provie Your Password</legend>
                                  <input type="password" name="password" class="form-control" placeholder="Password" required>
                                </div>
                                  <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
                             </form>
                           </div>
                           </div>
                           </div>
            </div>

      
     
    </div>
  

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>