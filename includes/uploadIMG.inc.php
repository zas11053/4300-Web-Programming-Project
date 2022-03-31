<?php

foreach ($_FILES as $key =>){
    if($FILE['error'] == 0){
        $filename = $FILE['temp_name'];
        
        $fileDestination = '../uploads/'.$fileNameNew;

        move_uploaded_file($filename,$fileDestination);
    }
}