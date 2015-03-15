<?php
    require_once 'header.php';
?>
<div id="content">
    <div id="registrationForm">
        <h2 class="span12 row-fluid">Редакция на артикул:</h2>
        <form method="POST" class="row-fluid span12" id="">
            <div class="row-fluid span12 no-left-margin">
                <div class="span5 form-input-container">
                    <label>Име:*</label>
                    <input type="text" id="name" name="name" />
                    <span class="errorloc"></span>
                </div>
                <div class="span5 form-input-container">
                    <label>Цена:*</label>
                    <input type="text" id="price" name="price" />
                    <span class="errorloc"></span>
                </div>
            </div>
            <div class="row-fluid span12 no-left-margin">
                <div class="span5 form-input-container">
                    <label>Валута:*</label>
                    <input type="text" id="currency" name="currency" value="лв" />
                    <span class="errorloc"></span>
                </div>
                <div class="span5 form-input-container">
                    <label>Потребител:*</label>
                    <input type="text" id="user" name="user">
                    <span class="errorloc"></span>
                </div>
            </div>
            <div class="row-fluid span12 no-left-margin">
                <div class="span12 form-input-container">
                    <label>Допълнителна информация:</label>
                    <textarea type="text" id="contact_data" name="contact_data"></textarea>
                    <span class="errorloc"></span>
                </div>
            </div>
            <br>
            <div class="row-fluid span12 no-left-margin">
                <input type="submit" id="registerButton" value="Редактирай" class="btn nav-buttons pull-right">
            </div>
        </form>
    </div>
</div>
<script type="text/javascript">
$(document).ready(function() {

});
</script>

<?php
    require_once 'footer.php';
?>