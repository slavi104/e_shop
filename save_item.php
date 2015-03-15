<?php
require_once "controller.php";

if ($_POST) {

    try {

        $item = new Item();
        $item->setName($_POST['name']);
        $item->setPrice($_POST['price']);
        $item->setCurrency($_POST['currency']);
        $item->setInfo($_POST['info']);
        $item->setName($_POST['name']);
        $item->setCreated(new fTimestamp());
        $item->setValid($_POST['valid_date']);
        $item->setImages($_POST['images_string']);
        $item->setUserId(fSession::get('current_user_id'));
        $item->setIsActive(1);
        $item->setCategory($_POST['category']);
        $item->setStepCategory($_POST['step_category']);
        $item->store();

    } catch (Exception $e) {
        
        echo $e->getMessage();

    }

}
?>