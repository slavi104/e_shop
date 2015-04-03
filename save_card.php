<?php
require_once "controller.php";
if ($_POST) {
    fSession::set('card', json_decode($_POST['items'], true));
    //print_r($_SESSION);
    $user = fSession::get('current_user');
    $user->setCardItems($_POST['items']);
    $user->store();
    echo 1;
}
?>