<div class="block">
	<div class="banner">
		<?php
		  $pasangiklan = $this->db->query("SELECT * FROM pasangiklan where judul LIKE '%kiri%'");
		  foreach ($pasangiklan->result_array() as $b) {
			$string = $b['gambar'];
			if ($b['gambar'] != ''){
				if(preg_match("/swf\z/i", $string)) {
					echo "<embed src='".base_url()."asset/foto_pasangiklan/$b[gambar]' width=250 height=200 quality='high' type='application/x-shockwave-flash'>";
				} else {
					echo "<a href='$b[url]' target='_blank'><img style='width:250px;' src='".base_url()."asset/foto_pasangiklan/$b[gambar]' alt='$b[judul]' /></a>";
				}
			}
			if (trim($b['source']) != ''){ echo "$b[source]"; }
		  }
		?>
	</div>
</div>

