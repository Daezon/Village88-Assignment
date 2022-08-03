<?php
$sample = array( 135, 2.4, 2.67, 1.23, 332, 2, 1.02); 
$count = count($sample); 
$output = $sample[0];

for ($i = 1; $i < $count; $i++){
       if ($output < $sample[$i])
           $output = $sample[$i];
    // return $max;    
}
    
$n = count($sample);
   $min = $sample[0];
   for ($i = 1; $i < $n; $i++){
       if ($min > $sample[$i])
           $min = $sample[$i];
   } 
echo ("max = " .$output. " min = " .$min); 

?>