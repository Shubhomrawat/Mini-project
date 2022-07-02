
<!DOCTYPE html>
<html>
<head>
<title>FeedbacK </title>
<!-- custom-theme -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Elegant Feedback Form  Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //custom-theme -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="//fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
</head>
<body class="agileits_w3layouts">
    <h1 class="agile_head text-center">Feedback Form</h1>
    <div class="w3layouts_main wrap">
	 
	    <form action="feedback.php" method="post" class="agile_form">

		
			<input type="text" placeholder="Your Name " name="name"  />
			<input type="email" placeholder="Your Email " name="email"/>
			<input type="text" placeholder="Your Number" name="num"  /><br>
			<h2>How did you hear about us?</h2>
		<Textarea placeholder=" Comments" class="w3l_summary" name="comments" required=""></textarea>
		<h2>Were your expectations met?</h2>
		<ul class="agile_info_select">
				 <li><input type="radio" name="view" value="excellent" id="excellent" required> 
				 	  <label for="excellent">YES</label>
				      <div class="check w3"></div>
				 </li>
				 
				 <li><input type="radio" name="view" value="neutral" id="neutral">
					 <label for="neutral">NO</label>
				     <div class="check wthree"></div>
				 </li>
				
			 </ul>

			<!-- <div class="navbar-translate" >	  
			 <a href="http://localhost/Plant%20Zone/index.php" class="navbar-brand" style="color:black"  rel="tooltip" title="PlantZone" data-placement="top">
                   PLANT ZONE
                </a>
				</div> 
-->
			<h2>How satisfied were you with our Service?</h2>
			 <ul class="agile_info_select">
				 <li><input type="radio" name="view" value="excellent" id="excellent" required> 
				 	  <label for="excellent">EXCELLENT</label>
				      <div class="check w3"></div>
				 </li>
				 <li><input type="radio" name="view" value="good" id="good"> 
					  <label for="good">GOOD</label>
				      <div class="check w3ls"></div>
				 <li><input type="radio" name="view" value="neutral" id="neutral">
					 <label for="neutral">SATISFIED</label>
				     <div class="check wthree"></div>
				 </li>
				 <li><input type="radio" name="view" value="poor" id="poor"> 
					  <label for="poor">BAD</label>
				      <div class="check w3_agileits"></div>
				 </li>
			 </ul>	  
			<h2>What feature could we add to make your experience better?</h2>
			
			<Textarea placeholder=" Comments" class="w3l_summary" name="comments" required=""></textarea>
		  <center><input type="submit" value="submit Feedback" class="agileinfo" /></center>
	  </form>
	</div>
	<div class="agileits_copyright text-center">
			<p>PLANT ZONE, FCRIT </p>
	</div>
</body>
</html>

