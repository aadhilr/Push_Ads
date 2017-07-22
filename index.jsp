<%-- 
    Document   : index
    Created on : Jul 22, 2017, 11:07:01 AM
    Author     : Lasanda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	<title>Push Ads</title>
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<!--[if lte IE 6]><link rel="stylesheet" href="css/ie6.css" type="text/css" media="all" /><![endif]-->
	
	<script src="js/jquery-1.4.1.min.js" type="text/javascript"></script>
	<script src="js/jquery.jcarousel.pack.js" type="text/javascript"></script>
	<script src="js/jquery-func.js" type="text/javascript"></script>
        <script src="js/Push_Ads_Main.js" type="text/javascript"></script>
</head>
<body onload="getLocation()">
	
<!-- Header -->
<div id="header">
	<div class="shell">
		
		<!-- Logo -->
		<h1 id="logo"><a href="#">Push Ads</a></h1>
		<!-- End Logo -->
		
		<!-- Navigation -->
		<div id="navigation">
			<ul>
			    <li><a href="#">Home</a></li>
			    <li><a href="#">Personal</a></li>
			    <!--<li><a href="#">Services</a></li>
			    <li><a href="#">Contact</a></li>-->
			</ul>
		</div>
		<!-- End Navigation -->
		
	</div>
</div>
<!-- End Header -->

<!-- Slider -->
<div id="slider">
	<div class="shell">
		
		<div class="slider-holder">
			<div class="slides">
				<ul id="sliderList">
									    	
                                    <!-- Slide -->
				    <li>
				    	<div class="slide-bg">
					    	<div class="slide-image">
					    		<a href="#"><img src="css/images/slide-image.jpg" alt="" id="ad" /></a>
				    	</div>
					    	<div class="slide-info">
					    		
                                                </div>
				    	</div>
				    	<span class="slide-shadow">&nbsp;</span>
				    </li>
				    <!-- End of Slide -->
				    
				    
			    </ul>
			</div>
			
			<!-- Slider Navigation -->
			<div class="slider-nav">
				<a href="#" class="prev">previous</a>
				<a href="#" class="next">next</a>
			</div>
			<!-- End Slider Navigation -->
		</div>
		
	</div>
</div>
<!-- End Slider -->

<!-- Main -->
<div id="main">
	<div class="shell">
		
		<!-- Cols -->
		<div class="one-col">
			<div class="cl">&nbsp;</div>
			
			<!-- Col -->
			<div class="col">
				<h3 class="ico ico1">What is Push Ads</h3>

				<p>Push Ads is a Advertisement service that will show you interesting Ads depend on your location</p>
				<p>Check out some ads you will be interested in your location</p>
				<!--<p class="more"><a href="#">Lorem Impsum</a></p>-->
				
			</div>
			<!-- End Col -->
			
			<!-- Col -->
			<!--<div class="col">
				<h3 class="ico ico2">Tempus libero varius</h3>

				<p>Deugiat tincidunt ac a tortor. Sed nec elit quis tellus dictum pharetra. Mauris nec ante eu mauris consequat ultricies nec vitae purus. Proin nec urna odio. </p>
				<p>Mauris sapien justo, commodo non mollis sed, dictum sit amet dolor. Maecenas purus lacus, viverra a sollicitudin eget, posuere vel diam.</p>
				<p class="more"><a href="#">Lorem Impsum</a></p>
				
			</div> -->
			<!-- End Col -->
			
			<!-- Col -->
			<!--<div class="col col-last">
				<h3 class="ico ico3">Ipsum in faucibus sed</h3>

				<p>Quisque mi eros, sodales non semper at, egestas eget libero. Nullam pharetra aliquam molestie. Proin cursus lorem a elit ornare iaculis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>
				<p>Nunc ultricies massa id nibh ultricies in pharetra sapien sagittis. Donec imperdiet eros vitae purus interdum suscipit eu faucibus libero.</p>
				<p class="more"><a href="#">Lorem Impsum</a></p>
				
			</div> -->
			<!-- End Col -->
			
			<div class="cl">&nbsp;</div>
			
		</div>
		<!-- End Cols -->
		
	</div>
</div>
<!-- End Main -->

<!-- Footer -->
<div id="footer">
	<!--<div class="shell">
		<p class="left">
			<a href="#">Home</a>
			<span>|</span>
			<a href="#">About</a>
			<span>|</span>
			<a href="#">Services</a>
			<span>|</span>
			<a href="#">Contact</a>
		</p>
		<p class="right">&copy; 2010 Company Name. 
			Design by <a href="http://chocotemplates.com" target="_blank" title="The Sweetest CSS Templates WorldWide">Chocotemplates.com</a></p>
	</div>-->
</div>
<!-- End Footer -->
<script>
    setAd();
    rotateAd();
</script>
</body>
</html>
