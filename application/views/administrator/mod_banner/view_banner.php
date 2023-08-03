            <h6 class="mb-0 text-uppercase" style="color:white;">Banner Link</h6>
        <hr/>
        <div class="card">
          <div class="card-body">
            <div class="table-responsive">
                  <a class='pull-right btn btn-primary btn-sm' href='<?php echo base_url().$this->uri->segment(1); ?>/tambah_banner'>Tambahkan Data</a>
                </div><!-- /.box-header -->
                <p/>
                <div class="box-body">
                  <table id="example" class="table table-bordered" style="width:100%">
                    <thead>
                      <tr>
                        <th style='width:20px'>No</th>
                        <th>Judul</th>
                        <th>Link</th>
                        <th>Tgl Posting</th>
                        <th style='width:70px'>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                  <?php 
                    $no = 1;
                    foreach ($record as $row){
                    $tgl_Posting = tgl_indo($row['tgl_posting']);
                    echo "<tr><td>$no</td>
                              <td>$row[judul]</td>
                              <td><a target='_BLANK' href='$row[url]'>$row[url]</a></td>
                              <td>$tgl_Posting</td>
                              <td><center>
                                <a class='btn btn-success btn-xs' title='Edit Data' href='".base_url().$this->uri->segment(1)."/edit_banner/$row[id_banner]'><span class='nav-icon fas fa-edit'></span></a>
                                <a class='btn btn-danger btn-xs' title='Delete Data' href='".base_url().$this->uri->segment(1)."/delete_banner/$row[id_banner]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='nav-icon fas fa-trash-alt'></span></a>
                              </center></td>
                          </tr>";
                      $no++;
                    }
                  ?>
                  </tbody>
                </table>
              </div>

              