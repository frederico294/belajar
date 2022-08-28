<?php

$uang = 123450000;
$format = number_format($uang, 0, ",", ".");

echo "<p> -> ga pake format: Rp{$uang},-<p>";
echo "<p> -> pake format: Rp{$format},-<p>";
?>