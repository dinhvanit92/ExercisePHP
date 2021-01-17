<!DOCTYPE html>
<html>

<head>
    <!-- Bootstrap core CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
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
                        <td> <?php $data_carts = json_decode($value['order_carts']); ?>
                            <!-- Button trigger modal -->
                            <button type="button" class="btn btn-outline-success btn-sm" data-bs-toggle="modal" data-bs-target="#exampleModal<?= $value['id'] ?>">
                                Xem chi tiết
                            </button>
                            <!-- Modal -->
                            <div class="modal fade" id="exampleModal<?= $value['id'] ?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-lg">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Chi tiết đơn hàng : <?= $value['order_code'] ?></h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body modal-lg">
                                            <table>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>Tên Hàng</th>
                                                    <th>Đơn Giá</th>
                                                    <th>Số lượng</th>
                                                    <th>Tổng </th>
                                                </tr>
                                                <?php $t = 0;
                                                foreach ($data_carts as $cart_item) { ?>
                                                    <tr>
                                                        <td><?= $cart_item->id ?></td>
                                                        <td><?= $cart_item->title ?></td>
                                                        <td><?= number_format($cart_item->price) ?></td>
                                                        <td><?= number_format($cart_item->quantity) ?></td>
                                                        <td><?= number_format($cart_item->price * $cart_item->quantity) ?></td>
                                                    </tr>
                                                <?php $t += $cart_item->price * $cart_item->quantity;
                                                } ?>
                                            </table>
                                            <hr>
                                            <h4>Tổng đơn hàng: <?= number_format($t) ?> VNĐ</h4>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </td>
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
<script>
    var myModal = document.getElementById('myModal')
    var myInput = document.getElementById('myInput')

    myModal.addEventListener('shown.bs.modal', function() {
        myInput.focus()
    })
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

</html>