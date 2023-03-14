<div class="modal fade" id="modal-alatperekam">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
        <div class="modal-header">
            <h4 class="modal-title">Wiring Alat Perekam</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div class="modal-body">
          <div class="card-body table-responsive">
            <table id="table-alatperekam" class="table table-bordered table-striped table-hover">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Bay</th>
                  <th>Judul Buku</th>
                  <th>Keterangan</th>
                  <th>Kategori Wiring</th>
                  <th>Update terakhir</th>
                  <th data-class='table-hidden'>Data Hidden 1</th>
                  <th data-class='table-hidden'>Data Hidden 2</th>
                  <th data-class='table-hidden'>Data Hidden 3</th>
                  <th data-class='table-hidden'>Data Hidden 4</th>
                </tr>
              </thead>
              <tbody>
                <?php
                  $no = 1;                            
                  foreach($data_buku_alatperekam as $hasil){
                ?>
                <tr data-widget="expandable-table">
                  <td><?php echo $no++ ?></td>
                  <td><?php echo $hasil->nama_bay ?></td>
                  <td><?php echo $hasil->judul_pdf ?></td>
                  <td><?php echo $hasil->keterangan ?></td>
                  <td><?php echo $hasil->kategori_wiring ?></td>
                  <td><?php echo $hasil->update_terakhir ?></td>

                  <td><?php echo $hasil->update_terakhir ?></td>
                  <td><?php echo $hasil->user_upload ?></td>
                  <td><?php echo $hasil->link_pdf ?></td>
                  <td><?php echo $hasil->id_pdf ?></td>
                </tr>

                <div class="modal fade" id="myModal-alatperekam" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                  <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="myModalLabel">Modal Title</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                      <div class="modal-body">                              
                      </div>
                      <div class="modal-footer">
                      </div>
                    </div>
                  </div>
                </div>

                <?php } ?>
              </tbody>
            </table>
          </div>
          <!-- /.card-body -->
        </div>
        <div class="modal-footer justify-content-end">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal Alat perekam -->