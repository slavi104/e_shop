<?php

require_once "controller.php";
if ($_POST) {
    try {
        
        $item = new Item($_POST['id']);
        $item->delete();
    } catch (Exception $e) {
        echo 0;
    }
    echo 1;
}

?>