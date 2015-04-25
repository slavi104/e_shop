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
               <h2 class="h2-contact">Телефон: <?php echo $user->getPhone();?></h2>
               <h2 class="h2-contact">Адрес: <?php echo $user->getAddress();?></h2>
               <h2 class="h2-contact">Допълнителна информация: <?php echo $user->getContactData();?></h2>
               <h2 class="h2-contact">
               <?php if($user->getUserType() == 'person'){
                  echo 'Рожденна дата: ' . $user->getBirthday();
               } else {
                  echo 'Дата на създаване: ' . $user->getBirthday();
               }?>
               </h2>
               
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
    <div class="clear"></div>
      <div class="recommended_items"><!--recommended_items-->
        <h2 class="title text-center">Предлагани продукти:</h2>
        
        <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
          <div class="carousel-inner">
              <?php echo Functions::printNewestItems('active', false, $id);?>
              <?php echo Functions::printNewestItems('inactive', true, $id);?>
              <?php echo Functions::printNewestItems('inactive', false, $id);?>
          </div>
          
           <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
            <i class="glyphicon glyphicon-backward"></i>
            </a>
            <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
            <i class="glyphicon glyphicon-forward"></i>
            </a>      
        </div>
      </div><!--/recommended_items-->
</div>
<script type="text/javascript">
$(document).ready(function() {
  $('.remove_item_from_profile').each(function(){
    var self = $(this);
    $(this).on('click', function(){
      var id = self.parent().data('id');
      //alert(id);
      $.ajax({
        type: 'post',
        url: "delete_item.php",
        data: {
            id: id
        },
        dataType: 'json'
      }).done(function(data){
        if (data == 1) {};
        //console.log($(this).parent());
        self.parent().parent().parent().remove();
      }); 
    });
  });
});
</script>
<?php
    require_once 'footer.php';
?>