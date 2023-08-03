<!DOCTYPE html>
<html lang="en">
<head>
	<title><?php echo $title; ?></title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <meta name="author" content="">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="robots" content="index, follow">
	<meta name="description" content="<?php echo $description; ?>">
	<meta name="keywords" content="<?php echo $keywords; ?>">
	<meta name="robots" content="all,index,follow">
	<meta http-equiv="Content-Language" content="id-ID">
	<meta NAME="Distribution" CONTENT="Global">
	<meta NAME="Rating" CONTENT="General">
	<link rel="canonical" href="<?php echo "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]"; ?>"/>
	<?php if ($this->uri->segment(1)=='berita' AND $this->uri->segment(2)=='detail'){ $rows = $this->model_utama->view_where('berita',array('judul_seo' => $this->uri->segment(3)))->row_array();
	echo '<meta property="og:title" content="'.$title.'" />
	<meta property="og:type" content="article" />
	<meta property="og:url" content="'.base_url().''.$this->uri->segment(3).'" />
	<meta property="og:image" content="'.base_url().'asset/foto_berita/'.$rows['gambar'].'" />
	<meta property="og:description" content="'.$description.'"/>';
} ?>
<link rel="shortcut icon" href="<?php echo base_url(); ?>asset/images/<?php echo favicon(); ?>" />
<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="rss.xml" />

<link type="text/css" rel="stylesheet" href="<?php echo base_url(); ?>template/<?php echo template(); ?>/background/<?php echo background(); ?>/main-stylesheet.css" />
<link type="text/css" rel="stylesheet" href="<?php echo base_url(); ?>template/<?php echo template(); ?>/background/<?php echo background(); ?>/shortcode.css" />
<link type="text/css" rel="stylesheet" href="<?php echo base_url(); ?>template/<?php echo template(); ?>/background/<?php echo background(); ?>/fonts.css" />
<link type="text/css" rel="stylesheet" href="<?php echo base_url(); ?>template/<?php echo template(); ?>/background/<?php echo background(); ?>/responsive.css" />
<link type="text/css" rel="stylesheet" href="<?php echo base_url(); ?>template/<?php echo template(); ?>/background/style.css">
<link type="text/css" rel="stylesheet" href="<?php echo base_url(); ?>template/<?php echo template(); ?>/background/ideaboxWeather.css">
<link type="text/css" rel="stylesheet" href="<?php echo base_url(); ?>template/<?php echo template(); ?>/slide/slide.css">

<link rel="stylesheet" href="<?php echo base_url(); ?>template/<?php echo template(); ?>/lightbox/lightbox.css">
<script type="text/javascript" src="<?php echo base_url(); ?>template/<?php echo template(); ?>/jscript/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>template/<?php echo template(); ?>/jscript/jquery-latest.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>template/<?php echo template(); ?>/jscript/theme-scripts.js"></script>
<?php if ($this->uri->segment(1)=='main' OR $this->uri->segment(1)==''){ ?>
	<script type="text/javascript" src="<?php echo base_url(); ?>template/<?php echo template(); ?>/slide/js/jssor.slider-23.1.0.mini.js"></script>
	<script type="text/javascript" src="<?php echo base_url(); ?>template/<?php echo template(); ?>/slide/js/slide.js"></script>
<?php } ?>
<script>(function(d, s, id) {
	var js, fjs = d.getElementsByTagName(s)[0];
	if (d.getElementById(id)) return;
	js = d.createElement(s); js.id = id;
	js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.0";
	fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
</script>
<style type="text/css">.the-menu a.active{ color:#ea8400 !important; } </style>

<!-- baru -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<!-- Bootstrap core CSS -->
<link href="<?php echo base_url(); ?>vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Additional CSS Files -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/templatemo-space-dynamic.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/animated.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/owl.css">


<!-- popup -->
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/bootstrap.css">
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/popup.css">

</head>

<body>

	<!-- ***** Preloader Start ***** -->
	<div id="js-preloader" class="js-preloader">
		<div class="preloader-inner">
			<span class="dot"></span>
			<div class="dots">
				<span></span>
				<span></span>
				<span></span>
			</div>
		</div>
	</div>
	<!-- ***** Preloader End ***** -->
<div id='Back-to-top'>
		<img alt='Scroll to top' src='http://members.phpmu.com/asset/css/img/top.png'/>
	</div>
	<!-- ***** Header Area Start ***** -->
	<div class="boxed">	
		<div class="header">
			<?php include "header.php"; ?>
			<div class="breaking-news">
				<span class="the-title">Breaking News</span>
				<ul>
					<?php
					$terkini = $this->model_utama->view_where_ordering_limit('berita',array('status' => 'Y'),'id_berita','DESC',0,10);
					foreach ($terkini->result_array() as $row) {
						echo "<li><a href='$row[judul_seo]'>$row[judul]</a></li>";
					}
					?>
				</ul>
			</div>
			
			<div class="main-banner wow fadeIn" id="top" data-wow-duration="1s" data-wow-delay="0.5s">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<div class="row">
								<div class="col-lg-6 align-self-center">
									<div class="left-content header-text wow fadeInLeft" data-wow-duration="1s" data-wow-delay="1s">

										<h2>BAPENDA <em>CIAMIS</em></h2>
										<p>Selamat Datang di Website Resmi BAPENDA Ciamis</p>

									</div>
								</div>
								<div class="col-lg-6">
									<div class="right-image wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.5s">
										<img src="<?php echo base_url(); ?>assets/images/bupati.png" alt="team meeting">
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

<div class="main-content">
					<?php echo $contents; ?>
					<div class="clear-float"></div>
				</div>
			</div>
		</div>


		<?php include "footer.php"; ?>
			<!-- Scripts -->
			<script src="<?php echo base_url(); ?>vendor/jquery/jquery.min.js"></script>
			<script src="<?php echo base_url(); ?>vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
			<script src="<?php echo base_url(); ?>assets/js/owl-carousel.js"></script>
			<script src="<?php echo base_url(); ?>assets/js/animation.js"></script>
			<script src="<?php echo base_url(); ?>assets/js/imagesloaded.js"></script>
			<script src="<?php echo base_url(); ?>assets/js/templatemo-custom.js"></script>

		</body>
		</html>