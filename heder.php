 <!-- Spinner Start -->
 <div id="spinner" class="show w-100 vh-100 bg-white position-fixed translate-middle top-50 start-50  d-flex align-items-center justify-content-center">
     <div class="spinner-grow text-primary" role="status"></div>
 </div>
 <!-- Spinner End -->


 <!-- Navbar start -->
 <div class="container-fluid fixed-top">
     <div class="container px-0">
         <nav class="navbar navbar-light bg-white navbar-expand-xl">
             <a href="index.php" class="navbar-brand">
                 <h1 class="text-primary display-6">Fruitables</h1>
             </a>
             <button class="navbar-toggler py-2 px-3" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                 <span class="fa fa-bars text-primary"></span>
             </button>
             <div class="collapse navbar-collapse bg-white" id="navbarCollapse">
                 <div class="navbar-nav mx-auto">
                     <a href="index.php" class="nav-item nav-link active">Home</a>
                     <a href="shop.php" class="nav-item nav-link">Shop</a>
                     <div class="nav-item dropdown">
                         <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                         <div class="dropdown-menu m-0 bg-secondary rounded-0">
                             <a href="cart.php" class="dropdown-item">Cart</a>
                             <a href="chackout.php" class="dropdown-item">Chackout</a>
                             <a href="testimonial.php" class="dropdown-item">Testimonial</a>
                             <a href="404.php" class="dropdown-item">404 Page</a>
                         </div>
                     </div>
                     <a href="about.php" class="nav-item nav-link">About</a>
                     <a href="contact.php" class="nav-item nav-link">Contact</a>
                 </div>
                 <div class="d-flex m-3 me-0">
                     <button class="btn-search btn border border-secondary btn-md-square rounded-circle bg-white me-4" data-bs-toggle="modal" data-bs-target="#searchModal"><i class="fas fa-search text-primary"></i></button>

                     <!-- <?php
                        //if (isset($_SESSION["u"])) {
                        ?>
                         <a href="chackout.php" class="position-relative me-4 my-auto">
                             <i class="fa fa-shopping-bag fa-2x"></i>
                             <span class="position-absolute bg-secondary rounded-circle d-flex align-items-center justify-content-center text-dark px-1" style="top: -5px; left: 15px; height: 20px; min-width: 20px;">3</span>
                         </a>

                     <?php
                       // } else {
                        ?>
                         <li>
                         <i class="fa fa-shopping-bag fa-2x">
                             <a href="signUp.php" class="dropdown-item">Sign In</a>
                             <a href="signUp.php" class="dropdown-item">Register</a>
                         </i>
                            
                         </li>
                     <?php
                       // }
                        ?> -->

                     <a href="chackout.php" class="position-relative me-4 my-auto">
                         <i class="fa fa-shopping-bag fa-2x"></i>
                         <span class="position-absolute bg-secondary rounded-circle d-flex align-items-center justify-content-center text-dark px-1" style="top: -5px; left: 15px; height: 20px; min-width: 20px;">3</span>
                     </a> 

                     <div class="nav-item dropdown">
                         <a href="" class="my-auto">
                             <i class="fas fa-user fa-2x profail"></i>
                         </a>
                         <div class="dropdown-menu m-0 bg-secondary rounded-0">

                             <?php
                                if (isset($_SESSION["u"])) {
                                ?>
                                 <li>
                                     <a href="profail.php" class="dropdown-item">Profile</a>
                                     <a href="signOut.php" class="dropdown-item">Sign Out</a>
                                 </li>
                             <?php
                                } else {
                                ?>
                                 <li>
                                     <a href="signUp.php" class="dropdown-item">Sign In</a>
                                     <a href="signUp.php" class="dropdown-item">Register</a>
                                 </li>
                             <?php
                                }
                                ?>
                         </div>
                     </div>

                 </div>
             </div>
         </nav>
     </div>
 </div>
 <!-- Navbar End -->