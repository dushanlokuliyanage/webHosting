<?php

session_start();
include "connection.php";

$stockId = $_GET["product"];

if (!isset($_GET["product"]) || empty($_GET["product"])) {

    header("Location:index.php");
}

$rs = Database::search("SELECT * FROM `product` WHERE `id`='$stockId'");
$num = $rs->num_rows;

//for ($x = 0; $x < $num; $x++) {             
$data = $rs->fetch_assoc();

$imagePath = 'http://localhost/myeshop/' . $data['img']; // Assuming image column contains filename
$productName = htmlspecialchars($data['name']); // Assuming name column contains product name
$productDescription = htmlspecialchars($data['description']); // Assuming description column
$productPrice = number_format($data['price'], 2); // Assuming price column contains product price
// $productCategory = htmlspecialchars($data['category_cat_id']); // Assuming category column
$productId = htmlspecialchars($data['id']); // Assuming product Id
$productQty = htmlspecialchars($data['qty']); // Assuming product Qty

if ($rs->num_rows < 1) {
?>
    <script>
        window.location = "404.php";
    </script>
<?php
}

?>

<?php
//}
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

    <!-- Heder --> <?php include "heder.php" ?>

    <!-- Single Product Start -->
    <div class="container-fluid py-5 mt-5">
        <div class="container py-5">
            <div class="row g-4 mb-5">
                <div class="col-lg-8 col-xl-9">
                    <div class="row g-4">
                        <div class="col-lg-6">
                            <div class="border rounded">
                                <a href="#">
                                    <img src="<?php echo $imagePath; ?>" class="img-fluid rounded" alt="Image">
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <h4 class="fw-bold mb-3"> <?php echo $productName ?></h4>
                            <p class="mb-3">Category: Fruits</p>
                            <h5 class="mb-3 d-flex" style="font-family:Verdana, Geneva, Tahoma, sans-serif"> <?php echo $productPrice ?>$</h5>
                            <div class="d-flex mb-4">
                                <i class="fa fa-star text-secondary"></i>
                                <i class="fa fa-star text-secondary"></i>
                                <i class="fa fa-star text-secondary"></i>
                                <i class="fa fa-star "></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <p class="mb-4"><?php echo $productDescription ?></p>

                            <div class="input-group quantity mb-5" style="width: 100px;">
                                <div class="input-group-btn">
                                    <button class="btn btn-sm btn-minus rounded-circle bg-light border">
                                        <i class="fa fa-minus"></i>
                                    </button>
                                </div>

                                <input type="text" class="form-control form-control-sm text-center border-0" value="1"> 
                        
                                <div class="input-group-btn">
                                    <button class="btn btn-sm btn-plus rounded-circle bg-light border">
                                        <i class="fa fa-plus"></i>
                                    </button>
                                </div>
                            </div>

                            <a href="#" class="btn border border-secondary rounded-pill px-4 py-2 mb-4 text-primary"><i class="bi bi-bag-plus-fill"></i> Add to cart</a>
                        </div>
                        <div class="col-lg-12">
                            <nav>
                                <div class="nav nav-tabs mb-3">
                                    <button class="nav-link active border-white border-bottom-0" type="button" role="tab"
                                        id="nav-about-tab" data-bs-toggle="tab" data-bs-target="#nav-about"
                                        aria-controls="nav-about" aria-selected="true">Description</button>
                                </div>
                            </nav>
                            <div class="tab-content mb-5">
                                <div class="tab-pane active" id="nav-about" role="tabpanel" aria-labelledby="nav-about-tab">
                                    <p><?php echo $productDescription ?> </p>
                                    <div class="px-2">
                                        <div class="row g-4">
                                            <div class="col-6">
                                                <div class="row bg-light align-items-center text-center justify-content-center py-2">
                                                    <div class="col-6">
                                                        <p class="mb-0">Weight</p>
                                                    </div>
                                                    <div class="col-6">
                                                        <p class="mb-0">1 kg</p>
                                                    </div>
                                                </div>
                                                <div class="row text-center align-items-center justify-content-center py-2">
                                                    <div class="col-6">
                                                        <p class="mb-0">Country of Origin</p>
                                                    </div>
                                                    <div class="col-6">
                                                        <p class="mb-0">Agro Farm</p>
                                                    </div>
                                                </div>
                                                <div class="row bg-light text-center align-items-center justify-content-center py-2">
                                                    <div class="col-6">
                                                        <p class="mb-0">Quality</p>
                                                    </div>
                                                    <div class="col-6">
                                                        <p class="mb-0">Organic</p>
                                                    </div>
                                                </div>
                                                <div class="row text-center align-items-center justify-content-center py-2">
                                                    <div class="col-6">
                                                        <p class="mb-0">Сheck</p>
                                                    </div>
                                                    <div class="col-6">
                                                        <p class="mb-0">Healthy</p>
                                                    </div>
                                                </div>
                                                <div class="row bg-light text-center align-items-center justify-content-center py-2">
                                                    <div class="col-6">
                                                        <p class="mb-0">Min Weight</p>
                                                    </div>
                                                    <div class="col-6">
                                                        <p class="mb-0">250 Kg</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-xl-3">
                    <div class="row g-4 fruite">

                        <!-- Categories List Start -->

                        <div class="col-lg-12">
                            <div class="input-group w-100 mx-auto d-flex mb-4">
                                <input type="search" class="form-control p-3" placeholder="keywords" aria-describedby="search-icon-1">
                                <span id="search-icon-1" class="input-group-text p-3"><i class="fa fa-search"></i></span>
                            </div>


                            <div class="mb-4">
                                <h4>Categories</h4>
                                <ul class="list-unstyled fruite-categorie">
                                    <li>
                                        <div class="d-flex justify-content-between fruite-name">
                                            <a href="singleProductView.php?product=7"><i class="fas fa-apple-alt me-2"></i>Apples</a>
                                            <span>(<?php echo $productQty; ?>)</span>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="d-flex justify-content-between fruite-name">
                                            <a href="singleProductView.php?product=8"><i class="fas fa-apple-alt me-2"></i>Oranges</a>
                                            <span> (<?php echo $productQty; ?>) </span>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="d-flex justify-content-between fruite-name">
                                            <a href="singleProductView.php?product=2"><i class="fas fa-apple-alt me-2"></i>Watermeloen</a>
                                            <span>(<?php echo $productQty; ?>)</span>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="d-flex justify-content-between fruite-name">
                                            <a href="singleProductView.php?product=1"><i class="fas fa-apple-alt me-2"></i>Papaya</a>
                                            <span>(<?php echo $productQty; ?>)</span>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="d-flex justify-content-between fruite-name">
                                            <a href="singleProductView.php?product=3"><i class="fas fa-apple-alt me-2"></i>Mango</a>
                                            <span>(<?php echo $productQty; ?>)</span>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <!-- Categories List End -->

                        <!-- Littele Banner -->
                        <div class="col-lg-12">
                            <div class="position-relative">
                                <img src="img/banner-fruits.jpg" class="img-fluid w-100 rounded" alt="">
                                <div class="position-absolute" style="top: 50%; right: 10px; transform: translateY(-50%);">
                                    <h3 class="text-sec ondary fw-bold">Fresh <br> Fruits <br> Banner</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Related Products Start -->

            <div class="container-fluid vesitable py-5">
                <div class="container py-5">
                    <h1 class="mb-0">Related Produts</h1>
                    <div class="owl-carousel vegetable-carousel justify-content-center">
                        <?php


                        $rs1 = Database::search("SELECT * FROM `product`");
                        $num1 = $rs1->num_rows;

                        for ($x = 0; $x < $num1; $x++) {
                            $data1 = $rs1->fetch_assoc();

                            $imagePath1 = 'http://localhost/myeshop/' . $data1['img']; // Assuming image column contains filename
                            $productName1 = htmlspecialchars($data1['name']); // Assuming name column contains product name
                            $productDescription1 = htmlspecialchars($data1['description']); // Assuming description column
                            $productPrice1 = number_format($data1['price'], 2); // Assuming price column contains product price
                            $productCategory1 = htmlspecialchars($data1['category_cat_id']); // Assuming category column
                            $productId1 = htmlspecialchars($data1['id']); // Assuming product Id
                        ?>
                            <div class="border border-primary rounded position-relative vesitable-item">
                                <a href="singleProductView.php?product=<?php echo $productId1; ?>">
                                    <div class="vesitable-img">
                                        <img src="<?php echo $imagePath1 ?>" class="img-fluid w-100 rounded-top" alt="">
                                    </div>
                                    <div class="text-white bg-primary px-3 py-1 rounded position-absolute" style="top: 10px; right: 10px;">Categories</div>
                                    <div class="p-4 rounded-bottom">
                                        <h4><?php echo $productName1 ?></h4>
                                        <p><?php echo mb_substr($productDescription1, 0, 60) ?></p>
                                        <div class="d-flex justify-content-between flex-lg-wrap">
                                            <p class="text-dark fs-5 fw-bold mb-0">$<?php echo $productPrice1 ?></p>
                                            <a href="" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
                                        </div>
                                    </div>
                            </div>
                        <?php
                        }
                        ?>
                    </div>
                </div>
            </div>

            <!-- Related Products End -->

        </div>
    </div>
    <!-- Single Product End -->

    <!-- Footer --> <?php include "footer.php"; ?>
    <!-- Copyright  --><?php include "copyright.php"; ?>

    <!-- Back to Top -->
    <a href="#" class="btn btn-primary border-3 border-primary rounded-circle back-to-top"><i class="fa fa-arrow-up"></i></a>


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