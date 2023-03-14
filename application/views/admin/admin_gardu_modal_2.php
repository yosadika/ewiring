<div class="modal fade" id="modal-diameter-next">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
        <div class="modal-header">
            <h4 class="modal-title">Wiring Diameter</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div class="modal-body">
          <div class="card-body table-responsive">
            <table id="table-diameter" class="table table-bordered table-striped table-hover">
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
                  foreach($data_buku_diameter as $hasil){
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

                <div class="modal fade" id="myModal-dia" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
<!-- /.modal diameter -->

<div class="modal fade" id="modal-bay-next">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
        <div class="modal-header">
            <h4 class="modal-title">Wiring Penghantar</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div class="modal-body">
            <div class="card-body table-responsive">
              <table id="table-pht" class="table table-bordered table-striped table-hover">
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
                    foreach($data_buku_penghantar as $hasil){
                  ?>
                  <tr data-widget="expandable-table">
                    <td><?php echo $no++ ?></td>
                    <td><?php echo $hasil->nama_bay ?></td>
                    <td><?php echo $hasil->judul_pdf ?></td>
                    <td><?php echo $hasil->keterangan ?></td>
                    <td><?php echo $hasil->kategori_wiring ?></td>
                    <td><?php echo $hasil->update_terakhir ?></td>

                    <td><?php echo $hasil->user_upload ?></td>
                    <td><?php echo $hasil->user_update ?></td>
                    <td><?php echo $hasil->link_pdf ?></td>
                    <td><?php echo $hasil->id_pdf ?></td>
                  </tr>

                  <div class="modal fade" id="myModal-pht" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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

<!-- /.modal bay -->

<div class="modal fade" id="modal-trafo-next">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
        <div class="modal-header">
            <h4 class="modal-title">Wiring Transormator</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div class="modal-body">
          <div>
            <div class="card card-secondary card-tabs">
              <div class="card-header p-0 pt-1">
                <ul class="nav nav-tabs" id="custom-tabs-one-tab" role="tablist">
                  <li class="nav-item">
                    <a class="nav-link active" id="custom-tabs-one-home-tab" data-toggle="pill" href="#custom-tabs-trafo-hv" role="tab" aria-controls="custom-tabs-one-home" aria-selected="true">HV
                    <span class="badge badge-primary"><?php echo $count_wiring_trafohv ?></span>
                    </a>
                    
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" id="custom-tabs-one-profile-tab" data-toggle="pill" href="#custom-tabs-trafo-lv" role="tab" aria-controls="custom-tabs-one-profile" aria-selected="false">LV
                    <span class="badge badge-primary"><?php echo $count_wiring_trafolv ?></span>
                    </a>
                  </li>
                </ul>
              </div>
              <div class="card-body">
                <div class="tab-content" id="custom-tabs-one-tabContent">
                  <div class="tab-pane fade show active" id="custom-tabs-trafo-hv" role="tabpanel" aria-labelledby="custom-tabs-one-home-tab">
                    <div class="card-body table-responsive">
                      <table id="table-trafohv" class="table table-bordered table-striped table-hover">
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
                            foreach($data_buku_trafo_hv as $hasil){
                          ?>
                          <tr data-widget="expandable-table">
                            <td><?php echo $no++ ?></td>
                            <td><?php echo $hasil->nama_bay ?></td>
                            <td><?php echo $hasil->judul_pdf ?></td>
                            <td><?php echo $hasil->keterangan ?></td>
                            <td><?php echo $hasil->kategori_wiring ?></td>
                            <td><?php echo $hasil->update_terakhir ?></td>
                            
                            <td><?php echo $hasil->user_upload ?></td>
                            <td><?php echo $hasil->user_update ?></td>
                            <td><?php echo $hasil->link_pdf ?></td>
                            <td><?php echo $hasil->id_pdf ?></td>
                          </tr>

                          <div class="modal fade" id="myModal-trafohv" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
                  <div class="tab-pane fade" id="custom-tabs-trafo-lv" role="tabpanel" aria-labelledby="custom-tabs-one-profile-tab">
                    <div class="card-body table-responsive">
                      <table id="table-trafolv" class="table table-bordered table-striped table-hover">
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
                            foreach($data_buku_trafo_lv as $hasil){
                          ?>
                          <tr data-widget="expandable-table">
                            <td><?php echo $no++ ?></td>
                            <td><?php echo $hasil->nama_bay ?></td>
                            <td><?php echo $hasil->judul_pdf ?></td>
                            <td><?php echo $hasil->keterangan ?></td>
                            <td><?php echo $hasil->kategori_wiring ?></td>
                            <td><?php echo $hasil->update_terakhir ?></td>
                            
                            <td><?php echo $hasil->user_upload ?></td>
                            <td><?php echo $hasil->user_update ?></td>
                            <td><?php echo $hasil->link_pdf ?></td>
                            <td><?php echo $hasil->id_pdf ?></td>
                          </tr>

                          <div class="modal fade" id="myModal-trafolv" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
                  </div>
                </div>
              </div>
              <!-- /.card -->
            </div>
          </div>
            
        </div>
        <div class="modal-footer justify-content-end">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal trafo -->

<div class="modal fade" id="modal-kopel-next">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
        <div class="modal-header">
            <h4 class="modal-title">Wiring Kopel Bus</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div class="modal-body">
            <div class="card-body table-responsive">
              <table id="table-kopel" class="table table-bordered table-striped table-hover">
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
                    foreach($data_buku_kopel as $hasil){
                  ?>
                  <tr data-widget="expandable-table">
                    <td><?php echo $no++ ?></td>
                    <td><?php echo $hasil->nama_bay ?></td>
                    <td><?php echo $hasil->judul_pdf ?></td>
                    <td><?php echo $hasil->keterangan ?></td>
                    <td><?php echo $hasil->kategori_wiring ?></td>
                    <td><?php echo $hasil->update_terakhir ?></td>
                            
                    <td><?php echo $hasil->user_upload ?></td>
                    <td><?php echo $hasil->user_update ?></td>
                    <td><?php echo $hasil->link_pdf ?></td>
                    <td><?php echo $hasil->id_pdf ?></td>
                  </tr>

                  <div class="modal fade" id="myModal-kopel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
<!-- /.modal kopel -->

<div class="modal fade" id="modal-kapasitor-next">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
        <div class="modal-header">
            <h4 class="modal-title">Wiring Kapasitor</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div class="modal-body">
            <div class="card-body table-responsive">
              <table id="table-kapasitor" class="table table-bordered table-striped table-hover">
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
                    foreach($data_buku_kapasitor as $hasil){
                  ?>
                  <tr data-widget="expandable-table">
                    <td><?php echo $no++ ?></td>
                    <td><?php echo $hasil->nama_bay ?></td>
                    <td><?php echo $hasil->judul_pdf ?></td>
                    <td><?php echo $hasil->keterangan ?></td>
                    <td><?php echo $hasil->kategori_wiring ?></td>
                    <td><?php echo $hasil->update_terakhir ?></td>
                            
                    <td><?php echo $hasil->user_upload ?></td>
                    <td><?php echo $hasil->user_update ?></td>
                    <td><?php echo $hasil->link_pdf ?></td>
                    <td><?php echo $hasil->id_pdf ?></td>
                  </tr>

                  <div class="modal fade" id="myModal-kapasitor" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
<!-- /.modal kapasitor -->

<div class="modal fade" id="modal-busbar-next">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
        <div class="modal-header">
            <h4 class="modal-title">Wiring Busbar dan Sinkron</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div class="modal-body">
            <div class="card-body table-responsive">
              <table id="table-busbar" class="table table-bordered table-striped table-hover">
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
                    foreach($data_buku_busbar as $hasil){
                  ?>
                  <tr data-widget="expandable-table">
                    <td><?php echo $no++ ?></td>
                    <td><?php echo $hasil->nama_bay ?></td>
                    <td><?php echo $hasil->judul_pdf ?></td>
                    <td><?php echo $hasil->keterangan ?></td>
                    <td><?php echo $hasil->kategori_wiring ?></td>
                    <td><?php echo $hasil->update_terakhir ?></td>
                            
                    <td><?php echo $hasil->user_upload ?></td>
                    <td><?php echo $hasil->user_update ?></td>
                    <td><?php echo $hasil->link_pdf ?></td>
                    <td><?php echo $hasil->id_pdf ?></td>
                  </tr>

                  <div class="modal fade" id="myModal-busbar" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
<!-- /.modal busbar -->