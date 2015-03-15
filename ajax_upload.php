<?php
    $sourcePath = $_FILES['file']['tmp_name'];       // Storing source path of the file in a variable
    $targetPath = "images/item_pictures/".$_FILES['file']['name']; // Target path where file is to be stored
    move_uploaded_file($sourcePath, $targetPath) ;    // Moving Uploaded file
    echo $targetPath;
?>