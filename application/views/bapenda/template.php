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
			
			
			

<div class="main-content">
					<?php echo $contents; ?>
					<div class="clear-float"></div>
				</div>
			</div>
		</div>

<p/>
<p/>
		<?php include "footer.php"; ?>
			<!-- Scripts -->
			<script src="<?php echo base_url(); ?>vendor/jquery/jquery.min.js"></script>
			<script src="<?php echo base_url(); ?>vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
			<script src="<?php echo base_url(); ?>assets/js/owl-carousel.js"></script>
			<script src="<?php echo base_url(); ?>assets/js/animation.js"></script>
			<script src="<?php echo base_url(); ?>assets/js/imagesloaded.js"></script>
			<script src="<?php echo base_url(); ?>assets/js/templatemo-custom.js"></script>

			<!-- Scripts -->
	<script type='text/javascript'>
		$(function() { $(window).scroll(function() {
			if($(this).scrollTop()>400) { $('#Back-to-top').fadeIn(); }else { $('#Back-to-top').fadeOut();}});
		$('#Back-to-top').click(function() {
			$('body,html')
			.animate({scrollTop:0},300)
			.animate({scrollTop:40},200)
			.animate({scrollTop:0},130)
			.animate({scrollTop:15},100)
			.animate({scrollTop:0},70);
		});
	});

		function jam(){
			var waktu = new Date();
			var jam = waktu.getHours();
			var menit = waktu.getMinutes();
			var detik = waktu.getSeconds();
			
			if (jam < 10){ jam = "0" + jam; }
			if (menit < 10){ menit = "0" + menit; }
			if (detik < 10){ detik = "0" + detik; }
			var jam_div = document.getElementById('jam');
			jam_div.innerHTML = jam + ":" + menit + ":" + detik;
			setTimeout("jam()", 1000);
		} jam();

	</script>

	<script type="text/javascript">
		(function (jQuery) {
			$.fn.ideaboxWeather = function (settings) {
				var defaults = {
					modulid   :'Swarakalibata',
					width :'100%',
					themecolor    :'#2582bd',
					todaytext :'Hari Ini',
					radius    :true,
					location  :' Jakarta',
					daycount  :7,
					imgpath   :'img_cuaca/', 
					template  :'vertical',
					lang  :'id',
					metric    :'C', 
					days  :["Minggu","Senin","Selasa","Rabu","Kamis","Jum'at","Sabtu"],
					dayssmall :["Mg","Sn","Sl","Rb","Km","Jm","Sa"]};
					var settings = $.extend(defaults, settings);

					return this.each(function () {
						settings.modulid = "#" + $(this).attr("id");
						$(settings.modulid).css({"width":settings.width,"background":settings.themecolor});

						if (settings.radius)
							$(settings.modulid).addClass("ow-border");

						getWeather();
						resizeEvent();

						$(window).on("resize",function(){
							resizeEvent();});

						function resizeEvent(){
							var mW=$(settings.modulid).width();

							if (mW<200){
								$(settings.modulid).addClass("ow-small");}
								else{
									$(settings.modulid).removeClass("ow-small");}}

									function getWeather(){$.get("http://api.openweathermap.org/data/2.5/forecast/daily?q="+settings.location+"&mode=xml&units=metric&cnt="+settings.daycount+"&lang="+settings.lang+"&appid=b318ee3082fcae85097e680e36b9c749", function(data) {
										var $XML = $(data);
										var sstr = "";
										var location = $XML.find("name").text();
										$XML.find("time").each(function(index,element) {
											var $this = $(this);
											var d = new Date($(this).attr("day"));
											var n = d.getDay();
											var metrics = "";
											if (settings.metric=="F"){
												metrics = Math.round($this.find("temperature").attr("day") * 1.8 + 32)+"°F";}
												else{
													metrics = Math.round($this.find("temperature").attr("day"))+"°C";}

													if (index==0){
														if (settings.template=="vertical"){
															sstr=sstr+'<div class="ow-today">'+
															'<span><img src="<?php echo base_url(); ?>asset/'+settings.imgpath+$this.find("symbol").attr("var")+'.png"/></span>'+
															'<h2>'+metrics+'<span>'+ucFirst($this.find("symbol").attr("name"))+'</span><b>'+location+' - '+settings.todaytext+'</b></h2>'+
															'</div>';}
															else{
																sstr=sstr+'<div class="ow-today">'+
																'<span><img src="<?php echo base_url(); ?>asset/'+settings.imgpath+$this.find("symbol").attr("var")+'.png"/></span>'+
																'<h2>'+metrics+'<span>'+ucFirst($this.find("symbol").attr("name"))+'</span><b>'+location+' - '+settings.todaytext+'</b></h2>'+
																'</div>';}}
																else{
																	if (settings.template=="vertical"){
																		sstr=sstr+'<div class="ow-days">'+
																		'<span>'+settings.days[n]+'</span>'+
																		'<p><img src="<?php echo base_url(); ?>asset/'+settings.imgpath+$this.find("symbol").attr("var")+'.png" title="'+ucFirst($this.find("symbol").attr("name"))+'"> <b>'+metrics+'</b></p>'+
																		'</div>';}
																		else{
																			sstr=sstr+'<div class="ow-dayssmall" style="width:'+100/(settings.daycount-1)+'%">'+
																			'<span title='+settings.days[n]+'>'+settings.dayssmall[n]+'</span>'+
																			'<p><img src="<?php echo base_url(); ?>asset/'+settings.imgpath+$this.find("symbol").attr("var")+'.png" title="'+ucFirst($this.find("symbol").attr("name"))+'"></p>'+
																			'<b>'+metrics+'</b>'+
																			'</div>';}}});

										$(settings.modulid).html(sstr); 
									});}

									function ucFirst(string) {
										return string.substring(0, 1).toUpperCase() + string.substring(1).toLowerCase();}});
				};
			})(jQuery);

			$(document).ready(function(){
				$('#example1').ideaboxWeather({
					location      :' Ciamis, ID'});});
				</script>

				<script>
					$(function(){
						var url = window.location.pathname, 
        urlRegExp = new RegExp(url.replace(/\/$/,'') + "$"); // create regexp to match current url pathname and remove trailing slash if present as it could collide with the link in navigation in case trailing slash wasn't present there
        // now grab every link from the navigation
        $('.the-menu a').each(function(){
            // and test its normalized href against the url pathname regexp
            if(urlRegExp.test(this.href.replace(/\/$/,''))){
            	$(this).addClass('active');
            }
          });

      });
    </script>

    <!-- Scripts -->

		</body>
		</html>