<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>VanTran Shop</title>

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

    <!-- Custom styles for this template -->
    <link href="../css/product.css" rel="stylesheet">

</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#">VanTran Shop</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="">Danh sách đơn đã đặt</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Dịch Vụ</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Liên Hệ</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Page Content -->
    <div class="container">

        <div class="row">

            <div class="col-lg-3">
                <h4 class="my-4">Welcome: <?php $user = $_SESSION['user'];
                                            if (isset($data)) {
                                                echo $user['name'];
                                            }  ?></h4>
                <div class="list-group">
                    <a href="<?= URL ?>store" class="list-group-item">Xem giỏ hàng</a>
                    <a href="<?= URL ?>history" class="list-group-item">Danh sách đã đặt hàng</a>
                    <a href="<?= URL ?>logout" class="list-group-item">Đăng xuất</a>
                </div>

            </div>
            <!-- /.col-lg-3 -->

            <div class="col-lg-9">

                <div class="row">
                    <?php foreach ($data as $key => $value) {
                    ?>
                        <div class="col-lg-4 col-md-6 mb-4">
                            <div class="card h-100">
                                <form action="/add" method="post">
                                    <a href="#"><img class="card-img-top" src="<?= $value['image'] ?>" alt=""></a>
                                    <div class="card-body text-center">
                                        <h6 class="card-title">
                                            <a href="#"><?= $value['title'] ?></a>
                                        </h6>
                                        <h5><?= number_format($value['price'], 0, '.', ',') ?> VNĐ</h5>
                                        <p class="card-text"><?= $value['description'] ?></p>
                                        <input name="quantity" class="form-control text-center" style="width: 50%; margin:auto;" type="number" min="1" value="1">
                                    </div>
                                    <div class="card-footer text-center">
                                        <button type="submit" name="add_cart" class="float-left btn btn-danger" value="<?= $value['id'] ?>">Add Cart</button></a>
                                        <button type="submit" name="buy_now" class="btn btn-outline-success" value="<?= $value['id'] ?>">Buy Now</button></a>

                                    </div>
                                </form>
                            </div>
                        </div>
                    <?php  } ?>
                </div>
                <!-- /.row -->

            </div>
            <!-- /.col-lg-9 -->

        </div>
        <!-- /.row -->

    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5 bg-dark">
        <div class="container">
            <p class="m-0 text-center text-white">Copyright &copy; VanTran Shop 2020</p>
        </div>
        <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->

</body>

</html>