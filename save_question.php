<?php
    require_once 'controller.php';
    if ($_POST) {
        try {
            $question = new Question();
            $question->setFirstName($_POST['first_name']);
            $question->setLastName($_POST['last_name']);
            $question->setText($_POST['text']);
            $question->store();
            $sended = 1;
        } catch (Exception $e) {
            $sended = 0;
        }

        header('Location: contacts.php?send=' . $sended);
    }
?>