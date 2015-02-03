#!/bin/bash
 
# FORM GET:
saveIFS=$IFS
IFS='=&'
param=($QUERY_STRING)
IFS=$saveIFS
 
# na busybox SH to udajne po uprave taky muze fungovat: http://jamesmcdonald.id.au/it-tips/busybox-ash-shell-specifying-ifs

# <RGB,128,128,128,128,128,128>

echo ${param[0]}=${param[1]}> /tmp/geeklab
echo ${param[2]}=${param[3]} >> /tmp/geeklab
echo ${param[4]}=${param[5]} >> /tmp/geeklab
echo ${param[6]}=${param[7]} >> /tmp/geeklab
echo ${param[8]}=${param[9]} >> /tmp/geeklab
echo ${param[10]}=${param[11]} >> /tmp/geeklab

echo "<PISMENO,1,1,1,1,1,1,1>" > /dev/ttyS0

echo -n "<RGB,"        > /dev/ttyS0 
echo -n ${param[1]}"," > /dev/ttyS0
echo -n ${param[3]}"," > /dev/ttyS0
echo -n ${param[5]}"," > /dev/ttyS0
echo -n ${param[7]}"," > /dev/ttyS0
echo -n ${param[9]}"," > /dev/ttyS0
echo -n ${param[11]}   > /dev/ttyS0
echo    ">"            > /dev/ttyS0
 
echo "Content-type: text/html"
echo ""
echo "<html><head><title>RGB</title></head>"
echo "<body>"
echo "<h1>Uspesne nastaveno!<h1>"
echo "<h2><a href="/cgi-bin/form.sh">Znovu!!!</a></h2>"
echo "</body></html>"

sleep 5

#echo "<PISMENO,0,0,0,0,0,0,0>" > /dev/ttyS0




