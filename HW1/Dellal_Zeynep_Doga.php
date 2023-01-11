<?php
//Loop through an associative array, apply a function, called foo, which simply prints the key-value pair
function foo($key, $value) {
    echo "Key :" . $key . ", value : " . $value;
}

$assocArr = array("color" => "purple", "number" => 2, "city" => "ankara", "class" => "CS-315");

//Get the value for a given key
$colorInAssocArr = $assocArr["color"];
echo "\nGetting the value of color: " . $colorInAssocArr . "\n";

//Add a new element
$assocArr += ["language" => "php"];

//Remove an existing element
unset($assocArr["class"]);

//Modify the value of an existing element
$assocArr["number"] = 13;

//Search for the existence of a key
echo "Searching if color key exists: " ,  array_key_exists("color", $assocArr) ? "true\n" : "false\n";
echo "\nSearching if name key exists: " , array_key_exists("name", $assocArr) ? "true\n": "false\n";

//Search for the existence of a value
echo "\nSearching if ankara value exists: " , in_array("ankara", $assocArr) ? "true\n": "false\n" . "\n";
echo "Searching if istanbul value exists: " , in_array("istanbul", $assocArr) ? "true\n": "false\n" . "\n";

//call the function foo
foreach ($assocArr as $key => $value) {
    foo($key,$value);
    echo "\n";
   }
