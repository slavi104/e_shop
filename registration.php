<?php
require_once 'header.php';
?>

<div id="content">
<script>
$( document ).ready(function() {
    checkFormInputs()
});

</script>
<div id="registrationForm">
    <h2 class="span12 row-fluid">Регистрация:</h2>
    <form method="POST" class="row-fluid span12" id="">
        <div class="row-fluid span12">
            <div class="span5 form-input-container">
                <input checked class="person_type" type="radio" name="user_type" value="person" id="type_person" />
                <label class="person_type_label" for="type_person">Физическо лице</label>
                <input class="person_type" type="radio" name="user_type" value="company" id="type_company" />
                <label class="person_type_label" for="type_company">Юридическо лице</label>
            </div>
        </div>
        <div class="clear"></div>
        <div class="row-fluid span12 no-left-margin">
            <div class="span5 form-input-container">

                <label>Име:*</label>
                <input type="text" id="name" name="username">
                <span class="errorloc"></span>
            </div>
            <div class="span5 form-input-container">
                <label>Имейл:*</label>
                <input type="text" id="email" name="email">
                <span class="errorloc"></span>
            </div>
        </div>
        <div class="row-fluid span12 no-left-margin">
            <div class="span5 form-input-container">
                <label>Парола:*</label>
                <input type="password" id="pass1" name="pass1">
                <span class="errorloc"></span>
            </div>
            <div class="span5 form-input-container">
                <label>Повтори паролата:*</label>
                <input type="password" id="pass2" name="pass2">
                <span class="errorloc"></span>
            </div>
        </div>
        <div class="row-fluid span12 no-left-margin">
            <div class="span5 form-input-container">
                <label>Телефон:</label>
                <input type="text" id="phone" name="phone">
                <span class="errorloc"></span>
            </div>
            <div class="span5 form-input-container">
                <label>Рожденна дата/Дата на създаване:</label>
                <input type="date" id="date" data-format="dd-mm-yyyy" name="date" />
                <span class="errorloc"></span>
            </div>
        </div>
        <div class="row-fluid span12 no-left-margin">
            <div class="span12 form-input-container">
                <label>Адрес:</label>
                <textarea type="text" id="address" name="address"></textarea>
                <span class="errorloc"></span>
            </div>
        </div>
        <div class="row-fluid span12 no-left-margin">
            <div class="span12 form-input-container">
                <label>Дапълнителна информация:</label>
                <textarea type="text" id="contact_data" name="contact_data"></textarea>
                <span class="errorloc"></span>
            </div>
        </div>
        <br>
        <div class="row-fluid span12 no-left-margin">
            <input type="submit" id="registerButton" value="Запиши" class="btn nav-buttons pull-right">
        </div>
       
    </form>
</div>
<script type="text/javascript">
    $( document ).ready(function() {
        
    });

</script>
</div>
<?php

if ($_POST){
    $ok = 1;
    if(isset($_POST['pass2'])) {
        $name = trim($_POST['username']);
        $pass1 = trim($_POST['pass1']);
        $pass2 = trim($_POST['pass2']);
        $email = trim($_POST['email']);
        //$sex = trim($_POST['sex']);
        fUTF8::clean($name);
        fUTF8::clean($pass1);
        fUTF8::clean($pass2);
        fUTF8::clean($email);
        //var_dump($_POST);
        if($pass1==$pass2 && $pass1!=''){

            $active_users = fRecordSet::buildFromSQL('User','SELECT users.* FROM users');

            foreach ($active_users as $user) {
                    $email_from_db = $user->getEmail();
                    if ($email_from_db == $email) {
                            echo "Имейлът вече се използва";
                            die;
                    }
                }
            foreach ($active_users as $user) {
                    $name_from_db = $user->getUserName();
                    if ($name_from_db == $name) {
                            echo "Потребителското име вече е заето";
                            die;
                    }
                }
            

            if (strlen($pass1)<5) {
                    echo "Паролата трябва да съдържа поне 5 символа!";
            }

            $hashedPass = fCryptography::hashPassword($pass1);
            //set information for new user in database
            try {
                $user = new User();
                $user->setUserName($name);
                $user->setPassword($hashedPass);
                $user->setEmail($email);
                $user->setPhone($_POST['phone']);
                $user->setContactData($_POST['contact_data']);
                $user->setAddress($_POST['address']);
                $user->setBirthday($_POST['date']);
                $user->setUserType($_POST['user_type']);
                $user->setCreated(new fTimestamp());
                $user->store();
            } catch (fExpectedException $e) {
                //echo $e->printMessage();
                echo " Потребител с този имейл вече е регистриран!";
                $ok = 0;
            }
        } else {
            echo "Паролите не съвпадат!!!";
            $ok = 0;
        }
    } else {
        $ok = 0;
    }

    if ($ok) {
       echo '<script type="text/javascript"> alert("Регистрацията беше успешна!"); window.location.replace("index.php");</script>';
    }
}
?>
<?php
    require_once 'footer.php';
?>
