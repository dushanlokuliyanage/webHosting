<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Fruitables</title>
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
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!-- Favicon -->
    <link rel="icon" href="img/1F331.png" />

</head>

<body>

    <div class="col-8 p-5 mt ">
        <div class="row">

            <div class="col-6 d-none d-lg-block background"></div>
            <!-- signupbox -->

            <div class="col-12 col-lg-6" id="signUpBox">
                <div class="row g-2 ">

                    <div class="col-12 d-none" id="msgdiv1">
                        <div class="alert alert-danger" role="alert" id="msg1"> </div>
                    </div>

                    <div class="col-12">
                        <label class="form-label" for="forgotpassword" >Enter Your Current Email</label>
                        <input type="email" class="form-control"  id="forgotpassword"/>
                    </div>

                    <div class="col-12 col-lg-6 d-grid">
                        <button class="btn btn-primary" id="email2" onclick="forgotPassword();" >Forgot Password</button>
                    </div>

                    <div class="col-12 col-lg-6 d-grid">
                        <!-- <button class="btn btn-dark" onclick="changeView();"> Back to Sign In</button> -->
                         <a href="signUp.php" class="btn btn-dark">Back to Sign Up</a>
                    </div>

                </div>
            </div>
        </div>
    </div>



    <!-- modal -->
    <div class="modal" tabindex="-1" id="fpmodal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Forgot Password</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">

                    <div class="row g-3">

                        <div class="col-6">
                            <label class="form-label">New Password</label>
                            <div class="input-group mb-3">
                                <input type="password" class="form-control" id="np" />
                                <button id="npb" class="btn btn-outline-secondary" type="button" onclick="showPassword1();">Show</button>
                            </div>
                        </div>

                        <div class="col-6">
                            <label class="form-label">Re-type Password</label>
                            <div class="input-group mb-3">
                                <input type="password" class="form-control" id="rnp" />
                                <button id="rnpb" class="btn btn-outline-secondary" type="button" onclick="showPassword2();">Show</button>
                            </div>
                        </div>

                        <div class="col-12">
                            <label class="form-label">Verification Code</label>
                            <input type="text" class="form-control" id="vcode" />
                        </div>

                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary" onclick="resetPassword();">Reset</button>
                </div>
            </div>
        </div>
    </div>
    <!-- modal -->

    <!-- Footer --> <?php include "footer.php"; ?>
    <!-- Copyright  --><?php include "copyright.php"; ?>

    <!-- Back to Top -->
    <a href="#" class="btn btn-primary border-3 border-primary rounded-circle back-to-top"><i class="fa fa-arrow-up"></i></a>


    <!-- JavaScript Libraries -->

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
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