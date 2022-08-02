<?php
$a= rand(50,100);
$b = 100;



if ($a < 70){
    $score = "<h1> You're score: " . $a . "/" .$b ."</h1>";
    $grade = "<h2> Your grade is D. </h2>";
}
elseif ($a <= 70 || $a < 80 ){
    $score ="<h1> You're score:" . $a . "/" .$b ."</h1>";
    $grade =  "<h2> Your grade is C. </h2>";
}
elseif ($a <= 80 || $a < 90 ){
    $score = "<h1> You're score:" . $a . "/" .$b ."</h1>";
    $grade =  "<h2> Your grade is B. </h2>";
}
elseif ($a <= 90 || $a <= 100 ){
    $score ="<h1> You're score: " . $a . "/" .$b ."</h1>";
    $grade = "<h2> Your grade is A. </h2>";
}

for ($i=1; $i<=100; $i++){
    echo $score;
    echo  $grade;
}
?>