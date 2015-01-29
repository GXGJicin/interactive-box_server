#!/bin/bash
 
echo "Content-type: text/html"
echo ""
echo "<html><head><title>RGB</title></head>"
echo "<body>"
 
# -----------------
cat << EOF
 
<p>Zadej barvy:</p>
 
<form action="send.sh" method="GET">
 
<fieldset>
<legend><strong>Geek</strong></legend>
R: <input name="geekR" value="128">
G: <input name="geekG" value="128">
B: <input name="geekB" value="128">
</fieldset>
<br>
<fieldset>
<legend><strong>Lab</strong></legend>
R: <input name="labR" value="128">
G: <input name="labG" value="128">
B: <input name="labB" value="128">
</fieldset>
<br>
<input type="submit" name="odeslat" value="Rozsvitit!">
<form>
 
EOF
# -----------------
 
#echo "<br>"
#echo ${geekR}
#echo "<br>"
 
 
# FORM GET:
#saveIFS=$IFS
#IFS='=&'
#param=($QUERY_STRING)
#IFS=$saveIFS
#
#echo "<br>"
#echo ${param[0]}
#echo "<br>"
#echo ${param[1]}
#echo "<br>"
#echo ${param[2]}
#echo "<br>"
 
echo "</body></html>"
 
