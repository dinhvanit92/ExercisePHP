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
        <h4 class="my-4">Danh sách đơn hàng của: <?php $user = $_SESSION['user'];
                                                    if (isset($data)) {
                                                        echo $user['name'];
                                                    }  ?></h4>
        <h4><a href="<?= URL ?>product">Về Trang Chủ</a></h4>

        <table>
            <tr>
                <th>ID</th>
                <th>Mã đơn hàng</th>
                <th>Sản phẩm</th>
                <th>Ngày order</th>
                <th>Tổng </th>
            </tr>
            <?php $t = 0;
            if (isset($data)) {
                foreach ($data as $value) { ?>
                    <tr>
                        <td><?= $value['id'] ?></td>
                        <td><?= $value['order_code'] ?></td>
                        <td><a href="">Xem chi tiết</a></td>
                        <td><?= $value['order_date'] ?></td>
                        <td><?= number_format($value['total']) ?> VNĐ</td>
                    </tr>
                <?php } ?>
        </table>
    </div>
<?php } else {
                echo 'bạn chưa thêm sản phẩm nào';
                echo '<a href="' . URL . 'product">Vào shop ngay!</a>';
            } ?>
</body>

</html>