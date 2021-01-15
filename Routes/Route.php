<?php


$router->get('/', 'HomeController@index');
$router->get('/register', 'HomeController@register');
$router->post('/addUser', 'HomeController@addUser');
$router->post('/login', 'HomeController@login');
$router->get('/product', 'ProductController@index');
$router->post('/add', 'ProductController@add');
$router->get('/store', 'ProductController@store');
$router->post('/payment', 'ProductController@payment');
$router->get('/thankyou', 'ProductController@thankyou');
$router->get('/history', 'ProductController@history');
$router->get('/logout', 'HomeController@logout');
