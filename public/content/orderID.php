<?php
    $page->getHeader();
    if(isset($_POST['how'])){
        $how = $_GET['how'];
    }else{
        $how = 10;
    }
?>


<main id="orders" class="single">
    <?php
        $page->showUserOrder($_GET['id']);
    ?>
</main>

<?php
    $page->getFooter();