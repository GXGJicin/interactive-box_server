#!/bin/bash
 
# FORM GET:
saveIFS=$IFS
IFS='=&'
param=($QUERY_STRING)
IFS=$saveIFS
 
# na busybox SH to udajne po uprave taky muze fungovat: http://jamesmcdonald.id.au/it-tips/busybox-ash-shell-specifying-ifs
 
echo ${param[0]}=${param[1]}> /tmp/geeklab
echo ${param[2]}=${param[3]} >> /tmp/geeklab
echo ${param[4]}=${param[5]} >> /tmp/geeklab
echo ${param[6]}=${param[7]} >> /tmp/geeklab
echo ${param[8]}=${param[9]} >> /tmp/geeklab
echo ${param[10]}=${param[11]} >> /tmp/geeklab
 
echo ${param[1]} > /dev/ttyS0
echo ${param[3]} > /dev/ttyS0
echo ${param[5]} > /dev/ttyS0
echo ${param[7]} > /dev/ttyS0
echo ${param[9]} > /dev/ttyS0
echo ${param[11]} > /dev/ttyS0
 
echo "Content-type: text/html"
echo ""
echo "<html><head><title>RGB</title></head>"
echo "<body>"
echo "<h1>Uspesne nastaveno!<h1>"
echo "</body></html>"
