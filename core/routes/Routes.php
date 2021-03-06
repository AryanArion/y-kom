<?php
    $routes = [
        //path from public/index.php to folderFile
        "Model" => "../core/model/", //model classes routes
        "Controller" => "../core/controller/", //controllers classes routes
        "View" => "../core/view/", //view of admin panel classes routes
    ];
    if(isset($adminPanelOpen)){
        $routes = [
            "Model" => "../../core/model/", //model classes routes FOR ADMIN
            "Controller" => "../../core/controller/", //controllers classes routes FOR ADMIN
            "View" => "../../core/view/", //view of admin panel classes routes FOR ADMIN
        ];
    }


    $adminPages = [
        "archive" => 'content/archive/list.php',
        "archiveShowProduct" => 'content/archive/showOne.php',
        "product" => 'content/product/list.php',
        "productAdd" => 'content/product/add.php',
        "productEdit" => 'content/product/edit.php',
        "warehouse" => 'content/product/warehouse.php',
        "actions" => 'content/actions.php',
        "slave" => 'content/slave/list.php',
        "slaveAdd" => 'content/slave/add.php',
        "slaveEdit" => 'content/slave/edit.php',
        "orders" => 'content/order/list.php',
        "order" => 'content/order/showOne.php',
    ];
    
    $shopRoutes  = [
        "type/p" => "content/product.php",
        "type/c" => "content/category.php",
        "fun/logowanie" => "content/login.php",
        "fun/rejestracja" => "content/register.php",
        "fun/koszyk" => "content/cart.php",
        "fun/order" => "content/order.php",
        "fun/moje-konto" => "content/account.php",
        "fun/moje-zamowienia" => "content/orders.php",
        "fun/zamowienie" => "content/orderID.php",
        "special/logowanie" => ["/f/logowanie/", "/"],
        "special/rejestracja" => ["/f/rejestracja/", "/"],
        "special/logout" => "1",
        "special/addToCart" => "1",
        "special/delFromCart" => "1",
        "special/orderAdd" => "1",
        "special/userEdit" => "1",
        "special/activate" => "1"
    ];