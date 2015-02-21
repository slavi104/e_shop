<?php
require_once 'header.php';
    if(isset($_GET['id']))
    {
        $id = $_GET['id'];
    }
	else {
     if(isset($_SESSION['isLogged']) && $_SESSION['isLogged'] == true)
     {
         $id = fSession::get('current_user_id');
     }
}
$user = new User($id);

?>
<div id="content">

    <div id="registrationForm">
  
        <form action="upload_file.php" method="POST" class="row-fluid span12" id="registrationForm" enctype="multipart/form-data">
        
            <input type='hidden' name='is_avatar' value='1' />

            <div class="articlesFull" style="cursor:auto;">
                                    
                <div class="row-fluid span12">
                    <div class="img_articles span4" style="text-align:center;">
                        <img style="max-width:300px; max-height:230px;" src="<?php echo $user->getAvatar(); ?>"/>
                        <div class="row-fluid span12">
                            <div class="form-input-container">
                                <label for="file">Снимка на профила:</label>
                                <input type="file" name="file" id="file">
                                <!-- <input type="submit" name="submit" value="SAVE"> -->
                            </div>
                        </div>
                    </div>
                    <div class="span4 form-input-container">
                        <label>Име:</label>
                        <input type="text" id="name" value="<?php echo $user->getUserName()?>" name="username">
                        <span class="errorloc"></span>
                    </div>
                    <div class="span3 form-input-container">
                        <label>Имейл:</label>
                        <input type="text" id="email" value="<?php echo $user->getEmail();?>" name="email">
                        <span class="errorloc"></span>
                    </div>
                    <div class="span4 form-input-container">
                        <label>Парола:</label>
                        <input type="password" id="pass1" name="pass1">
                        <span class="errorloc"></span>
                    </div>
                    <div class="span3 form-input-container">
                        <label>Повтори паролата:</label>
                        <input type="password" id="pass2" name="pass2">
                        <span class="errorloc"></span>
                    </div>
                    <div class="span4 form-input-container">
                        <label>Телефон:</label>
                        <input type="text" id="phone" name="phone" value="<?php echo $user->getPhone();?>">
                        <span class="errorloc"></span>
                    </div>
                    <div class="span3 form-input-container">
                        <?php if($user->getUserType() == 'person'){?>
                            <label>Рожденна дата:</label>
                        <?php } else { ?>
                            <label>Дата на създаване:</label>
                        <?php } ?>
                        <input type="date" id="date" data-format="dd-mm-yyyy" name="date" value="<?php echo $user->getBirthday();?>" />
                        <span class="errorloc"></span>
                    </div>
                    <div class="span12 form-input-container">
                        <label>Адрес:</label>
                        <textarea type="text" id="address" name="address"><?php echo $user->getAddress();?></textarea>
                        <span class="errorloc"></span>
                    </div>
                    <div class="span12 form-input-container">
                        <label>Дапълнителна информация:</label>
                        <textarea type="text" id="contact_data" name="contact_data"><?php echo $user->getContactData();?></textarea>
                        <span class="errorloc"></span>
                    </div>
                </div>
                <div class="row-fluid span12">
                </div>
               
                <div class="row-fluid span12 no-left-margin">
                    <input type="submit" id="registerButton" value="Запиши" class="btn nav-buttons pull-right edit-profile">
                </div>
                <!-- <div>
                    <div class="article-title" style="height: 230px;">
                       <h2 class="h2-contact">User Name: <input id="userName-input" value="<?php echo $user->getUserName()?>" name='username'/></h2>
                       <h2 class="h2-contact">Email: <?php echo $user->getEmail();?></h2>
                        <label for="file">Avatar:</label>
                        <input type="file" name="file" id="file">
                        <input type="submit" name="submit" value="SAVE">
                    </div>
                </div> -->
            </div>
        </form>
    </div>
</div>
<script type="text/javascript">
$( document ).ready(function() {
    
});
</script>


<?php
    require_once 'footer.php';
?>