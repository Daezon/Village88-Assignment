<?php
echo "Starting the program </br>";

$head = 0;
$tail = 0;

for ($i = 0; $i<=5000; $i++){
    $coin = rand(0,1);
    $a = "Attemp #$i: Throwing coin...";
    if($coin == 0){
        $a .= "It's a head! " ;
        $head++;
    }
    else{
        $a .= "It's a tail!";
        $tail++;
    }
    $a .=  "...Got $head head(s) so far amd $tail tail(s) so far </br>";
    echo $a;
}
echo "Ending the program - Thank you!"

?>