<?php
require_once 'header.php';

?>
<div id="content">

    <div id="registrationForm">
        <h2 class="span12 row-fluid">Добавяне на артикул:</h2>
        <form action="ajax_upload.php" method="POST" class="row-fluid span12" id="add_item_form" enctype="multipart/form-data">
            <div id="images_container" class="row-fluid span12">
            </div>
            <div class="row-fluid span12">
                <div class="img_articles span4" style="text-align:center; cursor: pointer;">
                    <div class="row-fluid span12">
                        <div class="form-input-container input_file_holder">
                            <label style="cursor: pointer;" for="file">Добавяне на снимки</label>
                            <input type="file" name="file" id="file" class="hidden" />
                        </div>
                    </div>
                </div>
            </div>
        </form> 

        <form action="save_item.php" id="add_item_inputs_form" method="POST" class="row-fluid span12" enctype="multipart/form-data">
            <input type="hidden" name="images_string" id="images_string" value=""/>
            <div class="row-fluid span12 no-left-margin">
                <div class="span10 form-input-container">
                    <label>Име:*</label>
                    <input type="text" style="width:82%;" id="name" name="name" value="" />
                    <span class="errorloc"></span>
                </div>
            </div>
            <div class="articlesFull" style="cursor:auto;">                            
                <div class="row-fluid span12 no-left-margin">
                    <div class="span5 form-input-container">
                        <label>Категория на продукта:*</label>
                        <select id="item_category" name="category">
                            <?php 
                                $categories = fRecordSet::buildFromSQL('Category', 'SELECT categories.* FROM categories');
                                foreach ($categories as $category) {
                                    $step_categories = json_decode($category->getStepCategory(), true);
                                    echo '<option data-step_category="' . implode('@', $step_categories) . '" value="' . $category->getId() . '">' . $category->getName() . '</option>';
                                }
                            ?>
                        </select>
                        <span class="errorloc"></span>
                    </div>
                    <div class="span5 form-input-container">
                        <label> Подкатегория на продукта:*</label>
                        <select id="item_step_category" name="step_category">
                            
                        </select>
                        <span class="errorloc"></span>
                    </div>
                </div>
            </div>
            <div class="row-fluid span12 no-left-margin">
                <div class="span5 form-input-container">
                    <label>Цена на продукта/Валута:*</label>
                    <input type="text" id="price" name="price" />
                    <input style="width:50px;" type="text" id="currency" name="currency" value="лв" />
                </div>
                <div class="span5 form-input-container">
                    <label>Валидност на обявата:*</label>
                    <input style="width:185px;" type="date" value="<?php echo (new fTimestamp())->format('Y-m-d'); ?>" id="valid_date" name="valid_date">
                    <span class="errorloc"></span>
                </div>
            </div>
            <div class="row-fluid span12 no-left-margin">
                <div class="span12 form-input-container">
                    <label>Допълнителна информация за продукта:</label>
                    <textarea type="text" id="contact_data" name="info"></textarea>
                    <span class="errorloc"></span>
                </div>
            </div>
            <br>
            <div class="row-fluid span12 no-left-margin">
                <input type="submit" id="registerButton" value="Добави" class="btn nav-buttons pull-right">
            </div>
        </form>
    </div>
</div>
<script type="text/javascript">
$(document).ready(function() {

    $('#add_item_inputs_form').on('submit',(function(e) {
        e.preventDefault();

        $.ajax({
            type:'POST',
            url: $(this).attr('action'),
            data: $(this).serialize(),
            dataType: 'html'
        }).done(function(data){
            console.log(data);
        });
    }));

    var images_arr = [];

    $('#add_item_form').on('submit',(function(e) {
        e.preventDefault();
        var formData = new FormData(this);

        $.ajax({
            type:'POST',
            url: $(this).attr('action'),
            data:formData,
            cache:false,
            contentType: false,
            processData: false,
            success:function(data){

                // console.log("success");
                // console.log(data);

                images_arr.push(data);
                $('#images_string').val(images_arr.join('@'));
                $('#images_container').prepend('<img width="205" class="item_images" src="' + data + '" />'); 

                $('#images_container').mouseover(function(){
                    var expand = false;
                    $(this).children().each(function(){
                        if ($(this).height() > 120) {
                            if ($('#images_container').children().length > 1) {
                                expand = $(this).height() - 150;
                            } else {
                                expand = $(this).height() - 40;
                            };
                        };
                    });
                    if (expand) {
                        $('#add_item_inputs_form').css('margin-top', expand + 'px');
                        $('.img_articles').addClass('hidden');
                    };
                });

                $('#images_container').mouseleave(function(){
                    if ($(this).children().length) {
                        $('#add_item_inputs_form').css('margin-top', '0px');
                        $('.img_articles').removeClass('hidden');
                    };
                });

            },
            error: function(data){
                alert('Възникна грешка при качването на снимката. Моля опитайте отново!');
            }
        });
    }));

    $("#file").on("change", function() {
        $("#add_item_form").submit();
    });

    $('#item_category').on('change', function(){
        var step_categories = $('#item_category option:selected').data('step_category').split('@');
        $('#item_step_category').empty();
        for (var i = step_categories.length - 1; i >= 0; i--) {
            $('#item_step_category').append('<option value="' + step_categories[i] + '">' + step_categories[i] + '</option>');
        };
    });

    $('#item_category').trigger('change');

});
</script>


<?php
    require_once 'footer.php';
?>