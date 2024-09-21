<?php 
    session_start();
    $role = $_SESSION['sess_userrole'];
    if(!isset($_SESSION['sess_userid']) && $role!="5"){
      header('Location: ../index.php?err=2');
    }
    else{
       $UId = $_SESSION['sess_userid'];
     }
?>
<?php
include '../inc/config.php';
include '../inc/Database.php';
include '../inc/depandency.php'; 
include '../inc/store.php'; 
?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin - Dashboard</title>

    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
    <link rel="stylesheet" href="css/bootstrap-theme.min.css" type="text/css" />

    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet">
    <link rel="shortcut icon" href="../images/favicon.png" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">

        <?php include 'nav.php'; ?>

        <div id="page-wrapper" class="Dashboard">

            <div class="container-fluid">

                <!-- Page Heading -->