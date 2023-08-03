
<!-- ======= Footer ======= -->
  <footer >
   
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-contact">
            <font color="purple">
            <h3>BAPENDA Ciamis</h3>
            <p><h6><font color="purple">
              Jl. Drs. H. Soejoed No. 5A  <br>
              Kelurahan Kertasari<br>
              Kecamatan Ciamis <br>
              46213<br><br>
              <strong>Phone:</strong> +6281394256860<br>
              <strong>Email:</strong> bapenda@ciamiskab.go.id<br>
            </font>
            </p>
          </h6>
          </font>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <font color="black">
            <h4>Link Terkait</h4>
          </font>
            <div class="widget">  
        <ul class="article-list">
            <?php
              $banner = $this->model_utama->view_ordering_limit('banner','id_banner','ASC',0,5);
              foreach ($banner->result_array() as $b) {
                        echo "<li style='list-style: none; margin-left: 0;'><a href='$b[url]' class='hover-effect'><img style='width:100%;' src='".base_url()."asset/banner/$b[gambar]' alt='$b[judul]' /></a></li>";
              }
            ?>
        </ul>
    
</div>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <font color="white">
            <h4>Polling</h4>
          </font>
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

          <div class="col-lg-3 col-md-6 footer-links">
            <font color="white">
            <h4>Temukan Kami di:</h4>
            
          </font>
            <div class="social-links mt-3">
              <a href="https://www.facebook.com/ciamis.pajakdaerah" target="blank" class="facebook"><i class="fab fa-facebook-square fa-lg"></i></a> 
              <a href="https://www.instagram.com/bapenda.ciamis" target="blank" class="instagram"><i class="fab fa-instagram fa-lg"></i></a>
              <a href="https://www.youtube.com/@bapendaciamis" target="blank" class="youtube"><i class="fa fa-youtube-play fa-lg"></i></a>
              
            </div>
          </div>

        </div>
      </div>
    </div>
    <p/>
    <p/>
    <div class="copyright-text">
        <p>Copyright © 2023 <a href="#">BAPENDA CIAMIS</a>. All Rights Reserved. v1.0
    </div>
    
  </footer><!-- End Footer -->