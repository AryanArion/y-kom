<aside class="adminMenu">
    <div><a href="/admin/"><img src="/admin/icons/home.svg" alt="START" />START</a></div>

    <div><a href="/admin/page/orders/"><img src="/admin/icons/order.svg" alt="Order" />Zamówienia</a></div>

    <div><a href="/admin/page/product/"><img src="/admin/icons/product.svg" alt="Zarządzanie asortymentem" style="height: 25px;width: 30px;" />Asortyment</a></div>  

    <?php echo ($_SESSION['LoggedSlaveData']['permission'] == 2 ? '<div><a href="/admin/page/slave/"><img src="/admin/icons/user.svg" alt="Niewolnicy" />Niewolnicy</a></div>' : "");?>  
    
    <div><a href="/admin/page/warehouse/"><img src="/admin/icons/warehouse.svg" alt="Magazyn" />Magazyn</a></div>

    <div><a href="/admin/page/archive/"><img src="/admin/icons/archive.svg" alt="Archiwum" />Archiwum</a></div>

    <?php echo ($_SESSION['LoggedSlaveData']['permission'] == 2 ? '<div><a href="/admin/page/actions/"><img src="/admin/icons/actions.svg" alt="actions" />Rejestr akcji</a></div>' : "");?>   

    <div class="last"><a href="/admin/fun/logout/"><img src="/admin/icons/logout.svg" alt="Logout" />Wyloguj</a></div>
</aside>