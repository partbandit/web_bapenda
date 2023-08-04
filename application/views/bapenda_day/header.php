<!-- ======= Top Bar ======= -->
<section id="topbar" class="d-flex align-items-center">
	<div class="container d-flex justify-content-center justify-content-md-between">
		<div class="contact-info d-flex align-items-center">
			<i class="bi bi-envelope-fill"></i><a href="mailto:bapenda@ciamiskab.go.id">bapenda@ciamiskab.go.id</a>
			<i class="bi bi-phone-fill phone-icon"></i> +6281394256860
		</div>
		<div class="social-links d-none d-md-block">
			<a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
			<a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
			<a href="#" class="tiktok"><i class="bi bi-tiktok"></i></i></a>
		</div>
	</div>
</section>

<!-- ======= Header ======= -->
<header id="header" class="d-flex align-items-center">
	<div class="container d-flex align-items-center justify-content-between">

		<!--<h1 class="logo"><a href="index.html">Day</a></h1>-->
		<!-- Uncomment below if you prefer to use an image logo -->
		<?php 
		$iden = $this->model_utama->view('identitas')->row_array();
		$logo = $this->model_utama->view_ordering_limit('logo','id_logo','DESC',0,1);
		foreach ($logo->result_array() as $row) {
			echo "<a href='".base_url()."'><img style='max-height:50px' src='".base_url()."asset/logo/$row[gambar]'/></a>";
		}
		?>
		<!--<a href="index.html" class="logo"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

		<nav id="navbar" class="navbar">
			<?php
			function main_menu() {
				$ci = & get_instance();
				$query = $ci->db->query("SELECT id_menu, nama_menu, link, id_parent FROM menu where aktif='Ya' AND position='Bottom' order by urutan");
				$menu = array('items' => array(),'parents' => array());
				foreach ($query->result() as $menus) {
					$menu['items'][$menus->id_menu] = $menus;
					$menu['parents'][$menus->id_parent][] = $menus->id_menu;
				}
				if ($menu) {
					$result = build_main_menu(0, $menu);
					return $result;
				}else{
					return FALSE;
				}
			}

			function build_main_menu($parent, $menu) {
				$html = "";
				if (isset($menu['parents'][$parent])) {
					if ($parent=='0'){
						$html .= "<ul class='the-menu'>
						<li><a href='".base_url()."' style='background: url(".base_url()."asset/images/home.png) no-repeat center; font-size:0; width:34px;'><br></a></li>";
					}else{
						$html .= "<ul>";
					}
					foreach ($menu['parents'][$parent] as $itemId) {
						if (!isset($menu['parents'][$itemId])) {
							if(preg_match("/^http/", $menu['items'][$itemId]->link)) {
								$html .= "<li class='nav-link scrollto'><a target='_BLANK' href='".$menu['items'][$itemId]->link."'>".$menu['items'][$itemId]->nama_menu."</a></li>";
							}else{
								$html .= "<li class='nav-link scrollto'><a href='".base_url().''.$menu['items'][$itemId]->link."'>".$menu['items'][$itemId]->nama_menu."</a></li>";
							}
						}
						if (isset($menu['parents'][$itemId])) {
							if(preg_match("/^http/", $menu['items'][$itemId]->link)) {
								$html .= "<li class='dropdown'><a target='_BLANK' href='".$menu['items'][$itemId]->link."'><span>".$menu['items'][$itemId]->nama_menu."<i class='bi bi-chevron-down'></i></span></a>";
							}else{
								$html .= "<li class='dropdown'><a href='".base_url().''.$menu['items'][$itemId]->link."'><span>".$menu['items'][$itemId]->nama_menu."<i class='bi bi-chevron-down'></i></span></a>";
							}
							$html .= build_main_menu($itemId, $menu);
							$html .= "</li>";
						}
					}
					$html .= "</ul>";
				}
				return $html;
			}
			echo main_menu();
			?>
			<i class="bi bi-list mobile-nav-toggle"></i>
		</nav><!-- .navbar -->

	</div>
	</header><!-- End Header -->