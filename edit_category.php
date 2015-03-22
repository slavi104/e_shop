<?php
    require_once 'header.php';
    $category = new Category($_REQUEST['id']);
    echo $_REQUEST['id'];
?>
<div id="content">
    <div id="registrationForm">
        <h2 class="span12 row-fluid">Добавяне на категории:</h2>
        <form action="add_category.php" method="POST" class="row-fluid span12" id="add_category" enctype="multipart/form-data">
            <input name="edit_category_id" value="<?php echo $category->getId();?>" type="hidden"/>
            <div class="row-fluid span12 no-left-margin category_container">
                <div class="span10 form-input-container no-left-margin">
                    <label>Категория:</label>
                    <input type="text" style="width:82%;" id="category_name" name="category_name" value="<?php echo $category->getName();?>" />
                    <span class="errorloc"></span>
                </div>
                <div class="span5 form-input-container no-left-margin step_category default_step_category hidden">
                    <label>Подкатегория:*</label>
                    <input style="width:195px;" type="text" name="step_category_name" class="step_category_input">
                    <span class="delete_button">X</span>
                </div>
                <?php 
                $step_categories = json_decode($category->getStepCategory(), true);
                foreach ($step_categories as $key => $step_category) { ?>
                    <div class="span5 form-input-container no-left-margin step_category default_step_categor">
                        <label>Подкатегория:*</label>
                        <input style="width:195px;" type="text" name="<?php echo $key; ?>" value="<?php echo $step_category; ?>" class="step_category_input">
                        <span class="delete_button">X</span>
                    </div>
                <?php }?>
            </div>
            <div class="row-fluid span12 no-left-margin">
                <input style="width:200px;" type="submit" id="registerButton" value="Добави подкатегория" class="btn nav-buttons pull-left">
                <input style="" type="submit" id="save_category" value="Запиши" class="btn nav-buttons pull-right">
            </div>
        </form>
    </div>
</div>
<script type="text/javascript">
$(document).ready(function() {
  var step_category_counter = 0;
  $('#registerButton').on('click', function(e){
    e.preventDefault();
    step_category_counter++;
    $(".step_category").first().clone().appendTo(".category_container");
    $(".step_category").last().removeClass('hidden');
    $(".step_category_input").last().attr('name', 'step_category_name' + step_category_counter);
    $('.delete_button').last().on('click', function(){
      $(this).parent().remove();
    });
  });

  $('.delete_button').on('click', function(){
    $(this).parent().remove();
  });

  $('#add_category').on('submit',(function(e) {
        e.preventDefault();

        $.ajax({
            type:'POST',
            url: $(this).attr('action'),
            data: $(this).serialize(),
            dataType: 'html'
        }).done(function(data){
            window.location = "index.php";
            //console.log(data);
        });
    }));

});
</script>

<?php
    require_once 'footer.php';
?>