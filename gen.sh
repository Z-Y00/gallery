#!/bin/bash 
#usage, $1 is the folder of the photos
#cd to the folder
cd $1
tmp="/tmp/html"
# echo $tmp
# exit
rm $tmp
rm ./index.html
#echo code for each of the photos
for filename in ./*; do
#     echo $filename
    echo '<div class="fh5co-project masonry-brick">' >> $tmp
    echo -n '<img src="' >> $tmp
#     echo -n $1 >> $tmp
    echo -n $filename >> $tmp
    echo '"  style="width: 70%; "/> </div>' >> $tmp
done
# cat $tmp

echo '<!DOCTYPE html>
	<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- 
	//////////////////////////////////////////////////////

	FREE HTML5 TEMPLATE 
	DESIGNED & DEVELOPED by FREEHTML5.CO
		
	Website: 		http://freehtml5.co/
	Email: 			info@freehtml5.co
	Twitter: 		http://twitter.com/fh5co
	Facebook: 		https://www.facebook.com/fh5co

	//////////////////////////////////////////////////////
	 -->

	
	<!-- Animate.css -->
	<link rel="stylesheet" href="../css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="../css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="../css/bootstrap.css">
	<!-- Superfish -->
	<link rel="stylesheet" href="../css/superfish.css">
	<!-- Flexslider  -->
	<link rel="stylesheet" href="../css/flexslider.css">

	<link rel="stylesheet" href="../css/style.css">


	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>

	</head>
	<body>
		<header id="fh5co-header" role="banner">
			<div class="container text-center">
				<nav>
					<ul>
						<li><a href="about.html">About</a></li>
					</ul>
				</nav>
			</div>
		</header>
		<!-- END #fh5co-header -->

		<div class="container-fluid pt70 pb70">
		<div class="page-content">
		todo
        </div>
			<div id="fh5co-projects-feed" class="fh5co-projects-feed clearfix masonry">
'> index.html
cat $tmp >>index.html
echo '			</div>
			<!--END .fh5co-projects-feed-->
		</div>
		<!-- END .container-fluid -->
	<!-- jQuery -->
	<script src="../js/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="../js/bootstrap.min.js"></script>
	<!-- masonry -->
	<script src="../js/jquery.masonry.min.js"></script>
	<!-- MAIN JS -->
	<script src="../js/main.js"></script>

	</body>
</html>' >>index.html
# mv ./index.html ../$1.html
