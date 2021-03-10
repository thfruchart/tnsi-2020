<?php

echo "<table border=1>";
echo "<tr>";
echo "<td></td>" ;
for($j = 1; $j <= 10; $j++)
   { 
    echo "<td><b> $j </b> </td>";}
echo "</tr>";

for($i=1;$i<=10;$i++ )
{
    echo "<tr> <td><b> $i </b></td>";
    for($j = 1; $j <= 10; $j++)
       {$resu = $i *$j ;
        echo "<td> $resu </td>";}
    echo "</tr>";
}

echo "</table>";