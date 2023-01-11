<?php
echo "--UNCONDITIONAL BREAK-- <br>";
for ($i = 1; $i < 5; $i++) {
  echo "i: $i <br>";
  break;
}

echo "--UNCONDITIONAL BREAK-- <br>";
for($i = 1; $i < 5; $i++) {
  echo "i: $i <br>";
  continue;
}

$i = 1;
$a = 1;
echo "--UNLABELED BREAK-- <br>";
while($i < 5) {
  echo "i: $i <br>";
  $i++;
  if ($i == 4) break;
}
$i = 0;
echo "--UNLABELED CONTINUE-- <br>";
while($i < 5) {
  $i++;
  if ($i == 3) continue;
  echo "i: $i <br>";
}

$i = 0;
$a = 0;
echo "--BREAK FROM OUTER LOOP-- <br>";
while($i < 5) {
 echo "";
    while($a < 5){
      $a++;
      $i++;
      if ($a == 3) {
          break 2;
      }
      echo "i in outer loop: $i , a in inner loop: $a <br>";
    }
  }
  
$i = 0;
$a = 0;
echo "--CONTINUE FROM OUTER LOOP-- <br>";
while($i < 5) {
    while($a < 5){
      $a++;
      $i++;
      if ($a == 3) {
          continue 2;
      }
      echo "i in outer loop: $i , a in inner loop: $a <br>";
    }
  }
?>