<!-- ======= Footer ======= -->
<footer id="footer">
  <div class="footer-top">
    <div class="container">
      <div class="row">

        <div class="col-lg-4 col-md-6">
          <div class="footer-info">
            <h3>BAPENDA CIAMIS</h3>
            <p>
              Jl. Drs. H. Soejoed No. 5A  <br>
              Kelurahan Kertasari<br>
              Kecamatan Ciamis <br>
              46213<br><br>
              <strong>Phone:</strong> +6281394256860<br>
              <strong>Email:</strong> bapenda@ciamiskab.go.id<br>
            </p>
            <div class="social-links mt-3">
              <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
              <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
              <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
              <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
              <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
            </div>
          </div>
        </div>

        <div class="col-lg-2 col-md-6 footer-links">
          <h4>Link Terkait</h4>
          <ul>
            <?php
            $banner = $this->model_utama->view_ordering_limit('banner','id_banner','ASC',0,5);
            foreach ($banner->result_array() as $b) {
              echo "<li style='list-style: none; margin-left: 0;'><a href='$b[url]' class='hover-effect'><img style='width:100%;' src='".base_url()."asset/banner/$b[gambar]' alt='$b[judul]' /></a></li>";
            }
            ?>
          </ul>
        </div>

        

        <div class="col-lg-4 col-md-6 footer-newsletter">
          <h4>Our Newsletter</h4>
          <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>
          <form action="" method="post">
            <input type="email" name="email"><input type="submit" value="Subscribe">
          </form>

        </div>

        <div class="col-lg-2 col-md-6 footer-links">
          <h4>Our Services</h4>
          <div class="widget">
  
    <?php
      $t = $this->model_utama->view_where('poling',array('aktif' => 'Y','status' => 'Pertanyaan'))->row_array();
      echo " <div style='color:#000; font-weight:bold;'>$t[pilihan] <br></div>";
      echo "<form method=POST action='".base_url()."polling/hasil'>";
        $pilih = $this->model_utama->view_where('poling',array('aktif' => 'Y','status' => 'Jawaban'));
        foreach ($pilih->result_array() as $p) {
        echo "<input class=marginpoling type=radio name=pilihan value='$p[id_poling]'/>
          <class style=\"color:#666;font-size:12px;\">&nbsp;&nbsp;$p[pilihan]<br />";}
        echo "<br><center><input style='width: 110px; padding:2px' type=submit class=simplebtn value='PILIH' />
      </form>
      <a href='".base_url()."polling'>
      <input style='width: 110px; padding:2px;' type=button class=simplebtn value='LIHAT HASIL' /></a></center>";
    ?>
</div>
        </div>

      </div>
    </div>
  </div>

  <div class="container">
    <div class="copyright">
      &copy; Copyright <strong><span>Day</span></strong>. All Rights Reserved
    </div>
    <div class="credits">
      <!-- All the links in the footer should remain intact. -->
      <!-- You can delete the links only if you purchased the pro version. -->
      <!-- Licensing information: https://bootstrapmade.com/license/ -->
      <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/day-multipurpose-html-template-for-free/ -->
      Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
    </div>
  </div>
  </footer><!-- End Footer -->