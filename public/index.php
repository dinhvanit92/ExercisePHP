<?php
session_start();
require_once('../vendor/autoload.php');
require_once('../config/config.php');
// print_r($_GET['url']);

// load class Route
$router = new Core\Route();
include_once(PATH_ROOT . '/Routes/Route.php');

// Lấy url hiện tại của trang web. Mặc định la /
$request_url = $_SERVER['REQUEST_URI'];

// Lấy phương thức hiện tại của url đang được gọi. (GET | POST). Mặc định là GET.
$method_url = !empty($_SERVER['REQUEST_METHOD']) ? $_SERVER['REQUEST_METHOD'] : 'GET';

$router->map($request_url, $method_url);
