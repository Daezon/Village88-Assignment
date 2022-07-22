<?php
for ($i = 5; $i <= 1000000; $i++){
    $lastdigit =  $i % 10;
    if (($lastdigit == 0) || ($lastdigit == 5)) {
        echo " $i ";
    }
}


?>