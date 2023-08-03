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

<div id="blog" class="our-blog section">
  <div class="container">
    <div class="row">
      <div class="col-lg-6 wow fadeInDown" data-wow-duration="1s" data-wow-delay="0.25s">
        <div class="section-heading">
          <h2>Berita <em>Terbaru</em> </h2>
        </div>
      </div>
      <div class="col-lg-6 wow fadeInDown" data-wow-duration="1s" data-wow-delay="0.25s">
        <div class="top-dec">
          <img src="assets/images/blog-dec.png" alt="">
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-6 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.25s">

        <div class="left-image">
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
        }
         echo "


         <a href='".base_url()."$row[judul_seo]' class='hover-effect'>";
         if ($row['gambar'] ==''){
          echo "<a class='hover-effect' href='".base_url()."$row[judul_seo]'><img style='height:400px; width:550px' src='".base_url()."asset/foto_berita/no-image.jpg' alt='' /></a>";
        }else{
          echo "<a class='hover-effect' href='".base_url()."$row[judul_seo]'><img style='height:400px; width:550px' src='".base_url()."/asset/foto_berita/$row[gambar]' alt='' /></a>";
        }
        echo "</a>";
        echo "
        <div class='info'>
        <div class='inner-content'>

        "; 
        echo "<ul>
        <li><i class='fa fa-calendar'></i> $tgl</li>
        <li><i class='fa fa-user'></i>$row[nama_lengkap]</li>
        </ul>";
        echo "<h4><a href='".base_url()."$row[judul_seo]'>$row[judul]</a></h4>
        <p>$isi</p>
        <span class='meta'>
        <a href='".base_url()."$row[judul_seo]'><span class='icon-text'>&#128340;</span>$row[jam], $tgl</a>
        </span>
        "?>
        <div class="main-blue-button">
          <a href="./berita">Lihat Berita Lainnya</a>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="col-lg-6 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.25s">
  <div class="right-list">       
    <ul>
      <li>
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
        }
       
       echo "


       <div class='left-content align-self-center'>
       <span><i class='fa fa-user'></i>$row[nama_lengkap]</span>
       <h4><a href='".base_url()."$row[judul_seo]'>$row[judul]</a></h4>
       
       <p><a href='".base_url()."$row[judul_seo]'><span class='icon-text'>&#128340;</span>$row[jam], $tgl</a></p>
       </div>
       <div class='right-image'>";
       if ($row['gambar'] ==''){
        echo "<a class='hover-effect' href='".base_url()."$row[judul_seo]'><img style='height:200px; width:300px' src='".base_url()."asset/foto_berita/no-image.jpg' alt='' /></a>";
      }else{
        echo "<a class='hover-effect' href='".base_url()."$row[judul_seo]'><img style='height:200px; width:300px' src='".base_url()."/asset/foto_berita/$row[gambar]' alt='' /></a>";
      }
      echo "  </div>

      <a href='".base_url()."$row[judul_seo]' class='hover-effect'>";

      echo "</a>";
      ?>
    </li>
    <li>
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
        }
       
       echo "


       <div class='left-content align-self-center'>
       <span><i class='fa fa-user'></i>$row[nama_lengkap]</span>
       <h4><a href='".base_url()."$row[judul_seo]'>$row[judul]</a></h4>
       
       <p><a href='".base_url()."$row[judul_seo]'><span class='icon-text'>&#128340;</span>$row[jam], $tgl</a></p>
       </div>
       <div class='right-image'>";
       if ($row['gambar'] ==''){
        echo "<a class='hover-effect' href='".base_url()."$row[judul_seo]'><img style='height:200px; width:300px' src='".base_url()."asset/foto_berita/no-image.jpg' alt='' /></a>";
      }else{
        echo "<a class='hover-effect' href='".base_url()."$row[judul_seo]'><img style='height:200px; width:300px' src='".base_url()."/asset/foto_berita/$row[gambar]' alt='' /></a>";
      }
      echo "  </div>

      <a href='".base_url()."$row[judul_seo]' class='hover-effect'>";

      echo "</a>";
      ?>
    </li>
    <li>
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
        }
       
       echo "


       <div class='left-content align-self-center'>
       <span><i class='fa fa-user'></i>$row[nama_lengkap]</span>
       <h4><a href='".base_url()."$row[judul_seo]'>$row[judul]</a></h4>
       
       <p><a href='".base_url()."$row[judul_seo]'><span class='icon-text'>&#128340;</span>$row[jam], $tgl</a></p>
       </div>
       <div class='right-image'>";
       if ($row['gambar'] ==''){
        echo "<a class='hover-effect' href='".base_url()."$row[judul_seo]'><img style='height:200px; width:300px' src='".base_url()."asset/foto_berita/no-image.jpg' alt='' /></a>";
      }else{
        echo "<a class='hover-effect' href='".base_url()."$row[judul_seo]'><img style='height:200px; width:300px' src='".base_url()."/asset/foto_berita/$row[gambar]' alt='' /></a>";
      }
      echo "  </div>

      <a href='".base_url()."$row[judul_seo]' class='hover-effect'>";

      echo "</a>";
      ?>
    </li>
  </ul>
</div>
</div>
</div>
</div>
</div>

<p/>
<p/>
<p/>
<div id="about" class="about-us section">
  <div class="container">
    <div class="row">
      <div class="col-lg-4">
        <div class="item wow fadeIn" data-wow-duration="1s" data-wow-delay="0.2s">
          <img src="assets/images/about-left-image.png" alt="person graphic">
        </div>
      </div>
      <div class="col-lg-8 align-self-center">
        <div class="services">
          <div class="row">
            <div class="col-lg-6">
              <div class="item wow fadeIn" data-wow-duration="1s" data-wow-delay="0.5s">
                <div class="icon">
                  <img src="assets/images/service-icon-01.png" alt="reporting">
                </div>
                <div class="right-text">
                  <a href="http://bapenda.ciamiskab.go.id/pajakdaerah/pbb" target="_blank"><h4>Pelayanan PBB</h4></a>
                  <p>Aplikasi Pelayanan Pajak PBB</p>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="item wow fadeIn" data-wow-duration="1s" data-wow-delay="0.7s">
                <div class="icon">
                  <img src="assets/images/service-icon-02.png" alt="">
                </div>
                <div class="right-text">
                  <a href="http://bapenda.ciamiskab.go.id/pajakdaerah/reklame" target="_blank"><h4>Pelayanan Reklame</h4></a>
                  <p>Aplikasi Pelayanan Pajak Reklame</p>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="item wow fadeIn" data-wow-duration="1s" data-wow-delay="0.9s">
                <div class="icon">
                  <img src="assets/images/service-icon-03.png" alt="">
                </div>
                <div class="right-text">
                  <a href="http://bapenda.ciamiskab.go.id/pajakdaerah/air" target="_blank"><h4>Pelayanan Air Tanah</h4></a>
                  <p>Aplikasi Pelayanan Pajak Air Tanah</p>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="item wow fadeIn" data-wow-duration="1s" data-wow-delay="1.1s">
                <div class="icon">
                  <img src="assets/images/service-icon-04.png" alt="">
                </div>
                <div class="right-text">
                  <a href="http://bphtb.ciamiskab.dapda.id/" target="_blank"><h4>Pelayanan BPHTB</h4></a>
                  <p>Aplikasi Pelayanan Pajak BPHTB </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<div id="pricing" class="pricing-tables">
  <div class="container">
    <div class="row">
      
      <div class="col-lg-12">
        <div class="icon-box">
          <div style="color: #ff689b;"></i></div>
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3957.2169109202514!2d108.36311437479837!3d-7.329518172084832!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e6f5f8a0a44f1e1%3A0xf7c7360f866c1378!2sBAPENDA%20CIAMIS!5e0!3m2!1sen!2sid!4v1690945511879!5m2!1sen!2sid" width="100%" height="360" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
      </div>
    </div>

  </div>
</div>
<p/>
<p/>
 <div id="contact" class="contact-us section">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 align-self-center wow fadeInLeft" data-wow-duration="0.5s" data-wow-delay="0.25s">
          <div class="section-heading">
            <h2>APK Pelayanan Online <em>SiJAGO</em></h2>
            <div style="color: white;">
              <p>Silahkan download APK Pelayanan Online <a href="http://bapenda.ciamiskab.go.id/pajakdaerah/thirdparty/sijago.apk">Disini</a></p>
            Apabila Muncul Pemberitahuan Apk nya berbahaya Lanjut Download dan Berikan ijin untuk mengakses perangkat anda saat instalasi APK
            </div>
            <div class="phone-info">
              <h4>Atau Download Langsung di Google Playstore <a href="https://play.google.com/store/apps/details?id=bapenda.ciamiskab.go.id" target="_blank"><br/><img style="height:64px; width:180px" src="<?php echo base_url(); ?>asset/img/playstore.png"></img></a></h4>
            </div>
          </div>
        </div>
        <div class="col-lg-6 wow fadeInRight" data-wow-duration="0.5s" data-wow-delay="0.25s">
          
            <div class="contact-dec" align="center">
              
                <img class="rounded float-left" style="height:320px; width:160px"src="<?php echo base_url(); ?>asset/img/sijago.jpg" alt="">
                <img class="rounded float-right" style="height:320px; width:160px"src="<?php echo base_url(); ?>asset/img/sijago2.jpg" alt="">
              
            </div>
          
        </div>
      </div>
    </div>
  </div>






<!-- Large modal / Modal besar-->
<div class="modal fade modalBesar " tabindex="-1" role="dialog" aria-hidden="true" id="modalBesar">
  <div class="modal-dialog modal-xl ">

    <div class="modal-content ">
      <div class="modal-header ">
       <font color="white"><h5>BKPSDM Ciamis</h5></font>
     </div>
     <div class="modal-body ">
       <div class="container-fluid ">
        <div class="container">
          <div class="row">
            <div class="col-md-9">          
              <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                  <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                  <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                  <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img class="d-block w-100" src="assets/images/slide1.jpg" alt="First slide">
                  </div>
                  <div class="carousel-item">
                    <img class="d-block w-100" src="assets/images/slide2.jpg" alt="Second slide">
                  </div>
                  <div class="carousel-item">
                    <img class="d-block w-100" src="assets/images/slide3.jpg" alt="Third slide">
                  </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="sr-only">Next</span>
                </a>
              </div>
              <div class="modal fade " id="modal-id">
                <div class="modal-dialog">
                  <div class="modal-content ">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                      <h4 class="modal-title">Modal title</h4>
                    </div>
                    <div class="modal-body">

                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-4"></div>
            <div class="col-md-4"></div>
          </div>
        </div>
      </div>
    </div>
    <div class="modal-footer">
      <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>

    </div>
  </div>

</div>
</div>