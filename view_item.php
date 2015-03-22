<?php
    require_once 'header.php';
    try {
        $item = new Item($_REQUEST['item_id']);
        $images = explode('@', $item->getImages());
        $item_user = new User($item->getUserId());
    } catch (Exception $e) {
        
    }
?>
<div id="content">
    <div class="articlesFull" style="cursor:auto;">
                                    
        <div class="img_articles" style="float:left">
            <div id="images_container" class="">
                <?php
                    foreach ($images as $image) {
                        echo '<img width="205" class="item_image_in_view" src="' . $image . '" />';
                    }
                ?>
            </div>
        </div>
        
        <div>
            <div class="article-title" style="height: 230px;">
               <h2 class="h2-contact"><?php echo $item->getName();?></h2>
               <h2 class="h2-contact">Цена: <?php echo $item->getPrice() . $item->getCurrency();?></h2>
               <h3>Допълнителна информация:<h3>
               <h2 class="h2-contact"><?php echo $item->getInfo();?></h2>
               <br>
               <h3>Информация за продавача:<h3>
               <h2 class="h2-contact"><a href="profile.php?id=<?php echo $item_user->getId();?>">Име: <?php echo $item_user->getUserName();?></a></h2>
               <h2 class="h2-contact">Имейл: <?php echo $item_user->getEmail();?></h2>
               <h2 class="h2-contact">Телефон: <?php echo $item_user->getPhone();?></h2>
               <h2 class="h2-contact">Адрес: <?php echo $item_user->getAddress();?></h2>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
$(document).ready(function() {

});
</script>


<?php
    require_once 'footer.php';
?>