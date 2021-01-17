<!DOCTYPE html>
<html>

<head>
    <!-- Bootstrap core CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td,
        th {
            border: 1px solid #ccc6c6;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
    </style>
</head>

<body>
    <div class="container">
        <h2>Đơn Hàng </h2>

        <table>
            <tr>
                <th>ID</th>
                <th>Tên Hàng</th>
                <th>Đơn Giá</th>
                <th>Số lượng</th>
                <th>Tổng </th>
                <th></th>
            </tr>
            <?php $t = 0;
            if (isset($_SESSION['cart'])) {
                foreach ($_SESSION['cart'] as $value) { ?>
                    <tr>
                        <td><?= $value['id'] ?></td>
                        <td><?= $value['title'] ?></td>
                        <td><?= number_format($value['price']) ?> VNĐ</td>
                        <td><?= $value['quantity'] ?></td>
                        <td><?= number_format($value['price'] * $value['quantity']) ?> VNĐ</td>
                        <td>
                            <a href="<?= URL ?>delete/<?= $value['id'] ?>"><span class="badge bg-danger">Delete</span></a>
                        </td>
                    </tr>
                <?php $t += ($value['price'] * $value['quantity']);
                } ?>
        </table>
        <hr>
        <h3>Tổng thanh toán: <?= number_format($t);
                                $_SESSION['tong'] = $t; ?> VNĐ</h3>
        <div class="click">
            <form action="<?= URL ?>payment" method="post" style="float: left; margin:10px;"><button type="submit" name="submit" class="btn btn-outline-primary">Thanh Toán Ngay</button></form>
            <a href="<?= URL ?>product" style="float: left; margin:10px;"><button type="submit" name="submit" class="btn btn-primary">Tiếp tục mua</button></a>
        </div>
    </div>
<?php } else {
                echo 'bạn chưa thêm sản phẩm nào';
                echo '<a href="' . URL . 'product">Vào shop ngay!</a>';
            } ?>
</body>

</html>