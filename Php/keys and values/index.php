<?php
$a = array(
    'first_name' => "Michael",
'last_name' => "Choi");

    function user($arr){
        echo "There are 2 keys in this array: <br> firstname <br> lastname <br> 
        The value in the key 'first_name' is " .$arr['first_name'] . "<br>
        The value in the key 'first_name' is " .$arr['last_name'] . '<br>';
    }

$B = user($a);
?>