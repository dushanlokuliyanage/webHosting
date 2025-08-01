<?php
session_start();
if (!isset($_SESSION["u"])) {
    header("Location: signUp.php");
    exit();
}

include "connection.php";
?>


<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
    <title> <?php echo $productName; ?> - Fruitables </title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">


    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">


    <!-- Favicon -->
    <link rel="icon" href="img/1F331.png" />
</head>

<body>
    <div class="container rounded bg-white mt-5">
        <div class="row">
            <div class="col-md-4 border-right">
                <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" src="https://i.imgur.com/0eg0aG0.jpg" width="90"><span class="font-weight-bold">John Doe</span><span class="text-black-50">john_doe12@bbb.com</span><span>United States</span></div>
            </div>
            <div class="col-md-8">
                <div class="p-3 py-5">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <div class="d-flex flex-row align-items-center back"><i class="fa fa-long-arrow-left mr-1 mb-1"></i>
                            <h6>Back to home</h6>

                            <a style="margin-left: 600px;" href="signOut.php">Sign Out</a>
                        </div>
                    </div>

                    <?php

                    $rs = Database::search("SELECT * FROM user WHERE email = '" . $_SESSION['nemail'] . "'");
                    $num = $rs->num_rows;

                    $row = $rs->fetch_assoc();

                    ?>

                    <div class="row mt-2">

                        <div class="col-md-6">
                            <label>First Name</label>
                            <input type="text" class="form-control" value="<?php echo ($row["fname"]); ?>" disabled>
                        </div>
                        <div class="col-md-6">
                            <label>Last Name</label>
                            <input type="text" class="form-control" value=" <?php echo ($row["lname"]); ?>" disabled>
                        </div>
                    </div>

                    <div class="row mt-3">
                        <div class="col-md-6">
                            <label>Email</label>
                            <input type="text" class="form-control" value="<?php echo ($row["email"]); ?>" disabled>
                        </div>
                        <div class="col-md-6">
                            <label>Mobile</label>
                            <input type="text" class="form-control" value="<?php echo ($row["mobile"]); ?>" disabled>
                        </div>
                    </div>

                    <div class="row mt-3">
                        <div class="col-md-6">
                            <label>Join Date</label>
                            <input type="text" class="form-control" value="<?php echo ($row["joined_date"]); ?>" disabled>
                        </div>
                        <div class="col-md-6">
                            <label>Gender</label>
                            <input type="text" class="form-control" value="<?php echo ($row["gender_gender_id"]); ?>" disabled>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </div>


    <!-- Copyright  --><?php include "copyright.php"; ?>



   
    <!-- JavaScript Libraries -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/lightbox/js/lightbox.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>