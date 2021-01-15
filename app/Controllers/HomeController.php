<?php

namespace App\Controllers;

use Core\Model;

class HomeController
{
    public function index()
    {
        require_once(PATH_ROOT . 'resource/views/index.php');
    }
    public function login()
    {
        $email = $_POST['email'];
        $password = $_POST['password'];
        $user = Model::where(['email', 'password'], [$email, $password], 'users');
        if ($user == true) {
            $_SESSION['user'] = $user[0];
            Header("Location:" . URL . 'product');
        } else {
            // echo 'Đăng nhập thất bại';
            Header("Location:" . URL);
        }
    }
    public function register()
    {
        if ($_SESSION['user']) {
            Header("Location:" . URL . 'product');
        } else {
            // echo 'Đăng nhập thất bại';
            require_once(PATH_ROOT . 'resource/views/register.php');
        }
    }
    public function addUser()
    {
        $data = [
            'name' => $_POST['username'],
            'password' => $_POST['password'],
            'email' => $_POST['email']
        ];
        Model::insert($data, 'users');
        Header("Location:" . URL);
    }
    public function logout()
    {
        unset($_SESSION['user']);
        Header("Location:" . URL);
    }
}
