<?php 
echo "<h2> Fix all the errors to show the page </h2>";
$array = array("var_dump", "and", "echo", "helps", "debug");
$count = count($array);

foreach($array as $i){
  echo "The value of the i index is " . $i . "</br>";
}
echo "<h3>isset function determines if a variable is set and is not NULL</h3>";
$error = "";
if(isset($error)){
  echo "Is an empty string NULL? Also, think of an operator that we can use to return a true value to a variable that is not set yet!!!!! </br>";
}
if(isset($array)){
  var_dump($array);die();
}

?>