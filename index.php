<?php
    require_once 'header.php';
?>
<div id="content">
      
      <div class="category-tab"><!--category-tab-->
        <div class="col-sm-12">
          <ul class="nav nav-tabs">
            <?php 
              echo Functions::printCategoriesTabs();
            ?>
          </ul>
        </div>
        <div class="tab-content">
          <?php
            echo Functions::printItemsWithCategories();
          ?>
        </div>
      </div><!--/category-tab-->
      <div class="clear"></div>
      <div class="recommended_items"><!--recommended_items-->
        <h2 class="title text-center">НОВИ АРТИКУЛИ</h2>
        
        <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
          <div class="carousel-inner">
            <div class="item active"> 
              <?php echo Functions::printNewestItems('active', false);?>
            </div>
            <div class="item">  
              <?php echo Functions::printNewestItems('inactive', true);?>
            </div>
            <div class="item">  
              <?php echo Functions::printNewestItems('inactive', false);?>
            </div>
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
</div>
<script type="text/javascript">
$(document).ready(function() {
  // $('.articles').on('click', function(){

  //     $.ajax({
  //       type: 'post',
  //       url: "article.php",
  //       data: {
  //           id: $(this).data("id")
  //       },
  //       dataType: 'html'
  //     }).done(function(data){
  //             if(data != false)
  //             {
  //                 $("#content").empty();
  //                 $("#content").append(data);
  //             }
  //             $("#pages").addClass("hidden");
  //     }); 
  // });

});
</script>

<?php
	require_once 'footer.php';
?>