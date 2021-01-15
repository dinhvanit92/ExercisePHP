<?php

namespace Core;

class Route
{

    private $__routes;

    public function __construct()
    {
        $this->__routes = [];
    }

    public function get(string $url, $action)
    {
        // Xử lý phương thức GET
        $this->__request($url, 'GET', $action);
    }

    public function post(string $url, $action)
    {
        // Xử lý phương thức POST
        $this->__request($url, 'POST', $action);
    }

    private function __request(string $url, string $method, $action)
    {
        // kiểm tra xem URL có chứa param không. VD: post/{id}
        if (preg_match_all('/({([a-zA-Z]+)})/', $url, $params)) {
            // thay thế param bằng (.+). VD: post/{id} -> post/(.+)
            $url = preg_replace('/({([a-zA-Z]+)})/', '(.+)', $url);
        }

        // Thay thế tất cả các kí tự / bằng ký tự \/ (regex) trong URL.
        $url = str_replace('/', '\/', $url);

        // Tạo một route mới
        $route = [
            'url' => $url,
            'method' => $method,
            'action' => $action,
            'params' => $params[2]
        ];

        // Thêm route vào router.
        array_push($this->__routes, $route);
    }

    public function map(string $url, string $method)
    {
        // Lặp qua các route trong ứng dụng, kiểm tra có chứa url được gọi không
        $method1 = explode('/', $method);
        foreach ($this->__routes as $route) {
            // nếu route có $method
            if ($route['method'] == $method1) {

                // kiểm tra route hiện tại có phải là url đang được gọi.
                $reg = '/^' . $route['url'] . '$/';
                if (preg_match($reg, $url, $params)) {
                    array_shift($params);
                    $this->__call_action_route($route['action'], $params);
                    return;
                }
            } elseif ($route['method'] == $method) {
                $reg = '/^' . $route['url'] . '$/';
                if (preg_match($reg, $url, $params)) {
                    array_shift($params);
                    $this->__call_action_route($route['action'], $params);
                    return;
                }
            }
        }

        // nếu không khớp với bất kì route nào cả.
        echo '404 - Not Found';
        return;
    }

    /**
     * 
     * Hàm gọi action route
     * 
     * @param string|callable $action action của route
     * @param array $params Các tham số trên url
     * 
     * @return void
     * 
     */
    private function __call_action_route($action, $params)
    {
        // Nếu $action là một callback (một hàm).
        if (is_callable($action)) {
            call_user_func_array($action, $params);
            return;
        }

        // Nếu $action là một phương thức của controller. VD: 'HomeController@index'.
        if (is_string($action)) {
            $action = explode('@', $action);
            $controller_name = 'App\\Controllers\\' . $action[0];
            $controller = new $controller_name();
            call_user_func_array([$controller, $action[1]], $params);

            return;
        }
    }
}
