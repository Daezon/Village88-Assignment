<?php
$x = array(4, 6, 1, 3, 5, 7, 25);
function draw_stars(array $x, $star='*', $newline='<br>') {
    $return = '';
    foreach($x as $num) {
      $return.=str_repeat($star, $num).$newline;
    }
    return $return;
   
}
echo draw_stars($x);

$x = array(4, "Tom", 1, "Michael", 5, 7, "Jimmy Smith");

function draw_stars_LETTER(array $x, $star='*', $newline='<br>') {
    $return = '';
    foreach ($x as $value) {
        $letter = substr($value, 0, 1);
        $count = strlen($value);
        $letter = strtolower($letter);
        if (is_int($value)){
        $return.=str_repeat($star, $value).$newline;
        }
        elseif (!(is_int($value))){    
            $return .= str_repeat($letter, $count).$newline;
            echo $newline;
        }
     }
     return $return;
}
 echo draw_stars_LETTER($x);
?>