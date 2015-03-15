<?php
require_once "controller.php";

if ($_POST) {

    print_r($_POST);
    try {

        if ($_POST['edit_category_id']) {
            $category = new Category($_POST['edit_category_id']);
            unset($_POST['edit_category_id']);
        } else {
            $category = new Category();
        }


        $category->setName($_POST['category_name']);

        $name = $_POST['category_name'];
        unset($_POST['category_name']);
        unset($_POST['step_category_name']);
        $category->setStepCategory(json_encode($_POST));
        $category->store();

        if (strlen($name) < 1) {
            $category->delete();
        }

    } catch (Exception $e) {
        
        echo $e->getMessage();

    }

}
?>