<?php 
    echo "<h6 class='mb-0 text-uppercase' style='color:white;'>Tambah Banner Link</h6>
                  <hr/>
                  <div class='card'>
                    <div class='card-body'>
                      <div class='table-responsive'>
                </div>
              <div class='box-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart($this->uri->segment(1).'/tambah_banner',$attributes); 
          echo "<div class='col-md-12'>
                  <table id='example' class='table  table-bordered' style='width:100%'>
                  <tbody>
                    <input type='hidden' name='id' value=''>
                    <tr><th width='120px' scope='row'>Judul</th>    <td><input type='text' class='form-control' name='a' required></td></tr>
                    <tr><th width='120px' scope='row'>Url</th>    <td><input type='url' class='form-control' name='b' required></td></tr>
                    <tr><th width='120px' scope='row'>Gambar</th>    <td><input type='file' class='form-control' name='c'></td></td></tr>
                  </tbody>
                  </table>
                </div>
              
              <div class='box-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Tambahkan</button>
                    <a href='".base_url().$this->uri->segment(1)."/banner'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                    
                  </div>
            </div></div></div>";
            echo form_close();
