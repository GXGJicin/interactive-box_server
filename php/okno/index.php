<html>
<head>
<title>RGB</title>



<script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>


<script src="/okno/colpick.js" type="text/javascript"></script>
<link rel="stylesheet" href="/okno/colpick.css" type="text/css"/>

<script>

var wtf = jQuery.noConflict();
wtf(document).ready(function() {
	console.log("ready!");
	
	wtf('#geekBarva').colpick({
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

        wtf('#labBarva').colpick({                           
                flat:true,                                    
                layout:'hex',                                 
                submit:0,                                     
                onChange:function(hsb,hex,rgb,el,bySetColor) {
                        console.log(rgb);                     
                        wtf("input[name='labR']").val(rgb.r);
                        wtf("input[name='labG']").val(rgb.g);
                        wtf("input[name='labB']").val(rgb.b);
                }                                             
        }); 

});

</script>

<!-- ----------------------- -->

</head>
<body>
 
 
<p>Zadej barvy:</p>
 
<form action="nastav.php" method="GET">
 
<fieldset>
<legend><strong>Geek</strong></legend>
R: <input name="geekR" value="128">
G: <input name="geekG" value="128">
B: <input name="geekB" value="128">
<br><br>
<span id="geekBarva"></span>
</fieldset>
<br>
<fieldset>
<legend><strong>Lab</strong></legend>
R: <input name="labR" value="128">
G: <input name="labG" value="128">
B: <input name="labB" value="128">
<br><br>
<span id="labBarva"></span>
</fieldset>
<br>
<input type="submit" name="odeslat" value="Rozsvitit!" style="font-size: 150%">
<form>




 
<!-- ----------------------- -->
 
</body>
</html>
 
