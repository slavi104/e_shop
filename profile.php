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

    <div class="articlesFull" style="cursor:auto;">
                                    
        <div class="img_articles" style="float:left">
            <img style="width:300px;" src="<?php echo $user->getAvatar(); ?>"/>
        </div>
        
        <div>
            <div class="article-title" style="height: 230px;">
               <h2 class="h2-contact"><?php echo $user->getUserName();?></h2>
               <h2 class="h2-contact">Имейл: <?php echo $user->getEmail();?></h2>
               
               <br>
                <?php
                    if(isset($_SESSION['isLogged']) && $_SESSION['isLogged'] == true && $id == fSession::get('current_user_id'))
                     {
                         echo '<a id="changeProfile" href="changeProfile.php">Редакция</a>';
                     }
                ?>
                
            </div>
        </div>
    </div>
</div>

<?php
    require_once 'footer.php';
?>