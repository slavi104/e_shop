<?php
require_once "controller.php";
if ($_POST) {

    try {
        $item_id = $_POST['item_id'];
        $number = $_POST['number'];
        $card = fSession::get('card');
        $card[$item_id] = $number;
        fSession::set('card', $card);
        echo 1;
    } catch (Exception $e) {
        echo $e->getMessage();
    }
}
?>