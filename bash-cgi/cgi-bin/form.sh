#!/bin/bash
 
echo "Content-type: text/html"
echo ""
echo "<html><head><title>RGB</title>"

# http://colpick.com/plugin
# -----------------------
cat << EOF

<script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>


<script src="/colpick.js" type="text/javascript"></script>
<link rel="stylesheet" href="/colpick.css" type="text/css"/>

<script>

var wtf = jQuery.noConflict();
wtf(document).ready(function() {
	console.log("ready!");
	
	wtf('#picker').colpick({
		flat:true,
		layout:'hex',
		submit:0,


		onChange:function(hsb,hex,rgb,el,bySetColor) {
			console.log(rgb);
			wtf("input[name='geekR']").val(rgb.r);
			wtf("input[name='geekG']").val(rgb.g);
			wtf("input[name='geekB']").val(rgb.b);
		}
	});

});

</script>

EOF

# -----------------------

echo "</head>"
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




<br><br>
<div id="picker"></div>
 
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
 
