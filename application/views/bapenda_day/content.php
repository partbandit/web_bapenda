<!-- ======= Hero Section ======= -->
<section id="hero" class="d-flex align-items-center">
  <div class="container position-relative" data-aos="fade-up" data-aos-delay="500">
    <h1>BAPENDA CIAMIS</h1>
    <h2>Selamat Datang di Website Resmi BAPENDA Ciamis</h2>
    <!--<a href="#about" class="btn-get-started scrollto">Get Started</a>-->
  </div>
</section><!-- End Hero -->
<p>
<div class="">	
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
<!-- ======= About Section ======= -->
<section id="about" class="about">
  <div class="container">

    <div class="row">
      <div class="col-lg-6 order-1 order-lg-2" data-aos="fade-left">
       <img class="rounded float-left" style="height:340px; width:170px" src="<?php echo base_url(); ?>asset/img/sijago.jpg" alt="">
       <img class="rounded float-right" style="height:340px; width:170px" src="<?php echo base_url(); ?>asset/img/sijago2.jpg" alt="">
     </div>
     <div class="col-lg-6 order-1 order-lg-2" data-aos="fade-right">
      <h3>APK PELAYANAN ONLINE <b>SIJAGO</b></h3>
      <p class="fst-italic">
        <p>Silahkan download APK Pelayanan Online <a href="http://bapenda.ciamiskab.go.id/pajakdaerah/thirdparty/sijago.apk">Disini</a></p>
        Apabila Muncul Pemberitahuan Apk nya berbahaya Lanjut Download dan Berikan ijin untuk mengakses perangkat anda saat instalasi APK
      </p>
    </p>
  </p>
  <div class="phone-info">
    <h4>Download di Google Playstore <a href="https://play.google.com/store/apps/details?id=bapenda.ciamiskab.go.id" target="_blank"><br/><img style="height:64px; width:180px" src="<?php echo base_url(); ?>asset/img/playstore.png"></img></a></h4>
  </div>
</div>
</div>

</div>
</section><!-- End About Section -->


<!-- ======= Services Section ======= -->
<section id="services" class="services">
  <div class="container">

    <div class="section-title">
      <span>Berita Terbaru</span>
      <h2>Berita Terbaru</h2>

    </div>

    <div class="row">
      <div class="col-lg-4 col-md-6 d-flex align-items-stretch" data-aos="fade-up">
        <div class="icon-box">          
          <?php 
          $no = 1;
          $hot = $this->model_utama->view_join_two('berita','users','kategori','username','id_kategori',array('status' => 'Y'),'id_berita','DESC',0,1);
          foreach ($hot->result_array() as $row) {  
            $total_komentar = $this->model_utama->view_where('komentar',array('id_berita' => $row['id_berita']))->num_rows();
            $tgl = tgl_indo($row['tanggal']);
            $isi_berita =(strip_tags($row['isi_berita'])); 
            $isi = substr($isi_berita,0,170); 
            $isi = substr($isi_berita,0,strrpos($isi," ")); 
            $judul = $row['judul']; 
            }echo "


            <a href='".base_url()."$row[judul_seo]' class='hover-effect'>";
            if ($row['gambar'] ==''){
              echo "<a  href='".base_url()."$row[judul_seo]'><img style='height:100px; width:200px' src='".base_url()."asset/foto_berita/no-image.jpg' alt='' /></a>";
            }else{
              echo "<a  href='".base_url()."$row[judul_seo]'><img style='height:100px; width:200px' src='".base_url()."/asset/foto_berita/$row[gambar]' alt='' /></a>";
            }
            echo "</a>";
            echo "<p/><h4><a href='".base_url()."$row[judul_seo]'>$row[judul]</a></h4>
            <p>$isi ...</p> 
            <p><a href='".base_url()."$row[judul_seo]'>Baca Selengkapnya</a></p>
            <br>
            <p><i class='bx bx-calendar'></i> $tgl, <i class='bx bx-user'></i> $row[nama_lengkap]</p>          
            </div>
            </div>";
            ?>

            <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-md-0" data-aos="fade-up" data-aos-delay="150">
              <div class="icon-box">
                <?php 
                $no = 1;
                $hot = $this->model_utama->view_join_two('berita','users','kategori','username','id_kategori',array('status' => 'Y'),'id_berita','DESC',1,1);
                foreach ($hot->result_array() as $row) {  
                  $total_komentar = $this->model_utama->view_where('komentar',array('id_berita' => $row['id_berita']))->num_rows();
                  $tgl = tgl_indo($row['tanggal']);
                  $isi_berita =(strip_tags($row['isi_berita'])); 
                  $isi = substr($isi_berita,0,170); 
                  $isi = substr($isi_berita,0,strrpos($isi," ")); 
                  $judul = $row['judul']; 
                  }echo "


                  <a href='".base_url()."$row[judul_seo]' class='hover-effect'>";
                  if ($row['gambar'] ==''){
                    echo "<a  href='".base_url()."$row[judul_seo]'><img style='height:100px; width:200px' src='".base_url()."asset/foto_berita/no-image.jpg' alt='' /></a>";
                  }else{
                    echo "<a  href='".base_url()."$row[judul_seo]'><img style='height:100px; width:200px' src='".base_url()."/asset/foto_berita/$row[gambar]' alt='' /></a>";
                  }
                  echo "</a>";
                  echo "<p/><h4><a href='".base_url()."$row[judul_seo]'>$row[judul]</a></h4>
                  <p>$isi ...</p> 
                  <p><a href='".base_url()."$row[judul_seo]'>Baca Selengkapnya</a></p>
                  <br>
                  <p><i class='bx bx-calendar'></i> $tgl, <i class='bx bx-user'></i> $row[nama_lengkap]</p>          
                  </div>
                  </div>";
                  ?>

                  <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-lg-0" data-aos="fade-up" data-aos-delay="300">
                    <div class="icon-box">
                      <?php 
                      $no = 1;
                      $hot = $this->model_utama->view_join_two('berita','users','kategori','username','id_kategori',array('status' => 'Y'),'id_berita','DESC',2,1);
                      foreach ($hot->result_array() as $row) {  
                        $total_komentar = $this->model_utama->view_where('komentar',array('id_berita' => $row['id_berita']))->num_rows();
                        $tgl = tgl_indo($row['tanggal']);
                        $isi_berita =(strip_tags($row['isi_berita'])); 
                        $isi = substr($isi_berita,0,170); 
                        $isi = substr($isi_berita,0,strrpos($isi," ")); 
                        $judul = $row['judul']; 
                        }echo "


                        <a href='".base_url()."$row[judul_seo]' class='hover-effect'>";
                        if ($row['gambar'] ==''){
                          echo "<a  href='".base_url()."$row[judul_seo]'><img style='height:100px; width:200px' src='".base_url()."asset/foto_berita/no-image.jpg' alt='' /></a>";
                        }else{
                          echo "<a  href='".base_url()."$row[judul_seo]'><img style='height:100px; width:200px' src='".base_url()."/asset/foto_berita/$row[gambar]' alt='' /></a>";
                        }
                        echo "</a>";
                        echo "<p/><h4><a href='".base_url()."$row[judul_seo]'>$row[judul]</a></h4>
                        <p>$isi ...</p> 
                        <p><a href='".base_url()."$row[judul_seo]'>Baca Selengkapnya</a></p>
                        <br>
                        <p><i class='bx bx-calendar'></i> $tgl, <i class='bx bx-user'></i> $row[nama_lengkap]</p>          
                        </div>
                        </div>";
                        ?>

                        <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4" data-aos="fade-up" data-aos-delay="450">
                          <div class="icon-box">
                            <?php 
                            $no = 1;
                            $hot = $this->model_utama->view_join_two('berita','users','kategori','username','id_kategori',array('status' => 'Y'),'id_berita','DESC',3,1);
                            foreach ($hot->result_array() as $row) {  
                              $total_komentar = $this->model_utama->view_where('komentar',array('id_berita' => $row['id_berita']))->num_rows();
                              $tgl = tgl_indo($row['tanggal']);
                              $isi_berita =(strip_tags($row['isi_berita'])); 
                              $isi = substr($isi_berita,0,170); 
                              $isi = substr($isi_berita,0,strrpos($isi," ")); 
                              $judul = $row['judul']; 
                              }echo "


                              <a href='".base_url()."$row[judul_seo]' class='hover-effect'>";
                              if ($row['gambar'] ==''){
                                echo "<a  href='".base_url()."$row[judul_seo]'><img style='height:100px; width:200px' src='".base_url()."asset/foto_berita/no-image.jpg' alt='' /></a>";
                              }else{
                                echo "<a  href='".base_url()."$row[judul_seo]'><img style='height:100px; width:200px' src='".base_url()."/asset/foto_berita/$row[gambar]' alt='' /></a>";
                              }
                              echo "</a>";
                              echo "<p/><h4><a href='".base_url()."$row[judul_seo]'>$row[judul]</a></h4>
                              <p>$isi ...</p> 
                              <p><a href='".base_url()."$row[judul_seo]'>Baca Selengkapnya</a></p>
                              <br>
                              <p><i class='bx bx-calendar'></i> $tgl, <i class='bx bx-user'></i> $row[nama_lengkap]</p>          
                              </div>
                              </div>";
                              ?>

                              <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4" data-aos="fade-up" data-aos-delay="600">
                                <div class="icon-box">
                                  <?php 
                                  $no = 1;
                                  $hot = $this->model_utama->view_join_two('berita','users','kategori','username','id_kategori',array('status' => 'Y'),'id_berita','DESC',4,1);
                                  foreach ($hot->result_array() as $row) {  
                                    $total_komentar = $this->model_utama->view_where('komentar',array('id_berita' => $row['id_berita']))->num_rows();
                                    $tgl = tgl_indo($row['tanggal']);
                                    $isi_berita =(strip_tags($row['isi_berita'])); 
                                    $isi = substr($isi_berita,0,170); 
                                    $isi = substr($isi_berita,0,strrpos($isi," ")); 
                                    $judul = $row['judul']; 
                                    }echo "


                                    <a href='".base_url()."$row[judul_seo]' class='hover-effect'>";
                                    if ($row['gambar'] ==''){
                                      echo "<a  href='".base_url()."$row[judul_seo]'><img style='height:100px; width:200px' src='".base_url()."asset/foto_berita/no-image.jpg' alt='' /></a>";
                                    }else{
                                      echo "<a  href='".base_url()."$row[judul_seo]'><img style='height:100px; width:200px' src='".base_url()."/asset/foto_berita/$row[gambar]' alt='' /></a>";
                                    }
                                    echo "</a>";
                                    echo "<p/><h4><a href='".base_url()."$row[judul_seo]'>$row[judul]</a></h4>
                                    <p>$isi ...</p> 
                                    <p><a href='".base_url()."$row[judul_seo]'>Baca Selengkapnya</a></p>
                                    <br>
                                    <p><i class='bx bx-calendar'></i> $tgl, <i class='bx bx-user'></i> $row[nama_lengkap]</p>          
                                    </div>
                                    </div>";
                                    ?>

                                    <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4" data-aos="fade-up" data-aos-delay="750">
                                      <div class="icon-box">
                                        <?php 
                                        $no = 1;
                                        $hot = $this->model_utama->view_join_two('berita','users','kategori','username','id_kategori',array('status' => 'Y'),'id_berita','DESC',5,1);
                                        foreach ($hot->result_array() as $row) {  
                                          $total_komentar = $this->model_utama->view_where('komentar',array('id_berita' => $row['id_berita']))->num_rows();
                                          $tgl = tgl_indo($row['tanggal']);
                                          $isi_berita =(strip_tags($row['isi_berita'])); 
                                          $isi = substr($isi_berita,0,170); 
                                          $isi = substr($isi_berita,0,strrpos($isi," ")); 
                                          $judul = $row['judul']; 
                                          }echo "


                                          <a href='".base_url()."$row[judul_seo]' class='hover-effect'>";
                                          if ($row['gambar'] ==''){
                                            echo "<a  href='".base_url()."$row[judul_seo]'><img style='height:100px; width:200px' src='".base_url()."asset/foto_berita/no-image.jpg' alt='' /></a>";
                                          }else{
                                            echo "<a  href='".base_url()."$row[judul_seo]'><img style='height:100px; width:200px' src='".base_url()."/asset/foto_berita/$row[gambar]' alt='' /></a>";
                                          }
                                          echo "</a>";
                                          echo "<p/><h4><a href='".base_url()."$row[judul_seo]'>$row[judul]</a></h4>
                                          <p>$isi ...</p> 
                                          <p><a href='".base_url()."$row[judul_seo]'>Baca Selengkapnya</a></p>
                                          <br>
                                          <p><i class='bx bx-calendar'></i> $tgl, <i class='bx bx-user'></i> $row[nama_lengkap]</p>          
                                          </div>
                                          </div>";
                                          ?>

                                        </div>

                                      </div>
                                    </section><!-- End Services Section -->

                                    <!-- ======= Clients Section ======= -->
                                    <section id="clients" class="clients">
                                      <div class="container" data-aos="zoom-in">

                                        <div class="row d-flex align-items-center">

                                          <div class="col-lg-2 col-md-4 col-6">
                                            <img src="assets/img/clients/client-1.png" class="img-fluid" alt="">
                                          </div>

                                          <div class="col-lg-2 col-md-4 col-6">
                                            <img src="assets/img/clients/client-2.png" class="img-fluid" alt="">
                                          </div>

                                          <div class="col-lg-2 col-md-4 col-6">
                                            <img src="assets/img/clients/client-3.png" class="img-fluid" alt="">
                                          </div>

                                          <div class="col-lg-2 col-md-4 col-6">
                                            <img src="assets/img/clients/client-4.png" class="img-fluid" alt="">
                                          </div>

                                          <div class="col-lg-2 col-md-4 col-6">
                                            <img src="assets/img/clients/client-5.png" class="img-fluid" alt="">
                                          </div>

                                          <div class="col-lg-2 col-md-4 col-6">
                                            <img src="assets/img/clients/client-6.png" class="img-fluid" alt="">
                                          </div>

                                        </div>

                                      </div>
                                     </section><!-- End Clients Section -->