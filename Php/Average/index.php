<?php
$sum = array();

$sum[] = 1;
$sum[] = 2;
$sum[] = 5;
$sum[] = 10;
$sum[] = 255;
$sum[] = 3;

$average = array_sum($sum) / count($sum);

echo " $average ";
?>