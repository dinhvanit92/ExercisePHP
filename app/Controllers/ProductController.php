<?php

namespace App\Controllers;

use App\Models\Orders;
use App\Models\Product;
use Core\Model;

class ProductController
{
    public function index()
    {
        $data = Product::All();
        require_once(PATH_ROOT . 'resource/views/product.php');
    }
    public function add()
    {
        if (isset($_POST['add_cart'])) {
            $id = $_POST['add_cart'];
        } elseif (isset($_POST['buy_now'])) {
            $id = $_POST['buy_now'];
        }
        $quantity = $_POST['quantity'];
        if (isset($_SESSION['cart'])) {
            $cart = $_SESSION['cart'];
        }
        $product = Product::where(['id'], [$id], 'products');
        if (isset($cart[$id])) {
            $cart[$id]['quantity'] = $cart[$id]['quantity'] + $quantity;
        } else {
            $cart[$id] = [
                'id' => $product[0]['id'],
                'title' => $product[0]['title'],
                'price' => $product[0]['price'],
                'quantity' => $quantity,
                'image' => $product[0]['image']
            ];
        }

        $_SESSION['cart'] = $cart;
        if (isset($_POST['add_cart'])) {
            Header("Location:" . URL . 'product');
        } elseif (isset($_POST['buy_now'])) {
            Header("Location:" . URL . 'store');
        }
    }
    public function store()
    {
        if (isset($_SESSION['user'])) {
            require_once(PATH_ROOT . 'resource/views/store.php');
        } else {
            Header("Location:" . URL);
        }
    }
    public function payment()
    {
        if (isset($_SESSION['user'])) {
            if (isset($_POST['submit'])) {
                if (isset($_SESSION['cart'])) {
                    $cart = json_encode($_SESSION['cart'], JSON_UNESCAPED_UNICODE);
                    $order_item = [
                        'order_code' => $_SESSION['user']['name'] . md5($cart),
                        'order_carts'       => $cart,
                        'user_id'    => $_SESSION['user']['id'],
                        'total'     => $_SESSION['tong'],
                        'order_date' => date('d-m-yy H-m-s', time())
                    ];
                    if (Model::insert($order_item, 'orders')) {
                        unset($_SESSION['cart']);
                        unset($_SESSION['tong']);
                    }
                    Header("Location:" . URL . 'thankyou');
                }
            }
        } else {
            Header("Location:" . URL);
        }
        echo $_SESSION['user'];
    }
    public function thankyou()
    {
        require_once(PATH_ROOT . 'resource/views/thankyou.php');
    }
    public function history()
    {
        $data = Orders::where(['user_id'], [$_SESSION['user']['id']], 'orders');
        require_once(PATH_ROOT . 'resource/views/history.php');
    }
    public function delete()
    {
        if (isset($_POST['delete'])) {
            $id = $_POST['delete'];
            unset($_SESSION['cart'][$id]);
            Header("Location:" . URL . 'store');
        }
    }
}
