<?php
$states = array('CA', 'WA', 'VA', 'UT', 'AZ');
$a = "<select>";
for ($i = 0; $i<count($states); $i++){
  $a .= "<option>" . $states[$i]. "</option>";
}
$a .= "</select>";
echo $a;


$a = "<select>";
foreach ($states as $value){
  $a .=  "<option>" . $value . "</option>";
}
$a .= "</select>";
echo $a;

array_push($states, 'NJ', 'NY', 'DE');
$a = "<select>";
foreach ($states as $value){
  $a .=  "<option>" . $value . "</option>";
}
$a .= "</select>";
echo $a;
?>