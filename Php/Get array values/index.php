<?php
$A = array(2,3,'hello');
function print_lists($arr){ 
    echo "<ul>"; foreach ($arr as $value) { echo "
<li>".$value."</li>
"; } } $B = print_lists($A); ?>
