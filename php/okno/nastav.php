<?php
echo "<html><head><title>RGB</title></head>";
echo "<body>";
echo "<h1>Uspesne nastaveno!<h1>";
echo "<h2><a href='/okno/'>Znovu!!!</a></h2>";


$file = fopen("/dev/ttyUSB0","w");
//echo fwrite($file, "Hello World!");

if ($_GET["vypinac"] == "1") {
	echo fwrite($file, "<PISMENO,1,1,1,1,1,1,1>\n");
} else {
	echo fwrite($file, "<PISMENO,0,0,0,0,0,0,0>\n");
}

echo fwrite($file, "<RGB,");
echo fwrite($file, $_GET["geekR"]. ",");
echo fwrite($file, $_GET["geekG"]. ",");
echo fwrite($file, $_GET["geekB"]. ",");

echo fwrite($file, $_GET["labR"]. ",");
echo fwrite($file, $_GET["labG"]. ",");
echo fwrite($file, $_GET["labB"]. ">\n");

//echo fwrite($file, "<PISMENO,1,1,1,1,1,1,1>\n");

fclose($file);

// <RGB,128,128,128,128,128,128> 

echo "<xmp>";
echo "<RGB,";
echo $_GET["geekR"]. ",";
echo $_GET["geekG"]. ",";
echo $_GET["geekB"]. ",";

echo $_GET["labR"]. ",";
echo $_GET["labG"]. ",";
echo $_GET["labB"]. ">\n";

if ($_GET["vypinac"] == "1") {
	echo "<PISMENO,1,1,1,1,1,1,1>\n";
} 
if ($_GET["vypinac"] == "0") {
	echo "<PISMENO,0,0,0,0,0,0,0>\n";
}

echo "</xmp>";

echo "</body></html>";


?>


