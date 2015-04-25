<?php
require_once "controller.php";
if ($_POST) {
    $items    = json_decode($_POST['items'], true);
    $info     = $_POST['info'];
    $buyer_id = fSession::get('current_user_id');

    foreach ($items as $item_id => $quantity) {
        try {
            $order = new Order();
            $order->setBuyer($buyer_id);
            $order->setItem($item_id);
            $order->setQuantity($quantity);
            $order->setInfo($info);
            $order->store();

            // $user = $_SESSION['current_user'];
            // var_dump($user);
            
            // $user->setCardItems(json_encode(array()));
            // $user->store();

        } catch (Exception $e) {
            echo $e->getMessage();
        }
    }
    fSession::set('card', array());
    echo 1;
}
?>