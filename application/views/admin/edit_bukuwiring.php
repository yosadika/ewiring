<!DOCTYPE html>
<html lang="en">
<head>
<?php $this->load->view('admin/admin_layout_head'); ?>

<style>
  .icheck-primary{
    margin-right: 20px;
    margin-top: 20pt;
  }

  .margin-top-bottom{
    margin-top: 30px;
    margin-bottom: 30px;
  }

  .margin-bottom{
    margin-bottom: 20px;
  }

  .margin-side{
    margin-left: 7.5px;
  }

  .card-header {
  display: flex;
  justify-content: space-between;
  }

  .card-title {
  margin: auto 0;
  }

  .card-tools {
    margin-left: auto;
  }

  .btn {
    margin: 0;
  }

  .swal2-styled.swal2-confirm{
    background-color: #17a2b8;
  }

  .text-center{
    display: flex;
    align-items: center;
  }

</style>

</head>
<!--
`body` tag options:

  Apply one or more of the following classes to to the body tag
  to get the desired effect

  * sidebar-collapse
  * sidebar-mini
-->
<body class="hold-transition sidebar-mini layout-navbar-fixed layout-fixed">
  <!-- tampilkan pesan notifikasi jika pdf berhasil diupload -->
  <div class="wrapper">
    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand navbar-white navbar-light">
      <!-- Left navbar links -->
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
        </li>
        <li class="nav-item d-none d-sm-inline-block">
          <a href="<?php echo base_url() ?>" class="nav-link">Home</a>
        </li>
      </ul>

      <!-- Right navbar links -->
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a class="nav-link" data-widget="fullscreen" href="#" role="button">
            <i class="fas fa-expand-arrows-alt"></i>
          </a>
        </li>
        <li>
        <a href="<?php echo base_url() ?>/adminhome/logout" class="btn btn-block btn-outline-dark"><i class="fa fa-power-off"></i></a>
          </li>
      </ul>
    </nav>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <?php $this->load->view('admin/admin_layout_sidebar'); ?>
    <!-- Main Sidebar Container -->

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <div class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1 class="m-0 text-dark">Halo! <b><?php echo $this->session->userdata("user_nama") ?>,</b></h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">Dashboard</li>
              </ol>
            </div><!-- /.col -->            
            

          </div><!-- /.row -->
        </div><!-- /.container-fluid -->
      </div>
      <!-- /.content-header -->

      <!-- Main content -->
      <section class="content">
        <?php echo form_open_multipart('AdminHome/update_wiring') ?>
          <div class="container-fluid">
            <!-- Form Utama -->
            <div class="card card-default">
              <div class="card-header">
                <h3 class="card-title">Edit Buku Wiring</h3>

                <div class="card-tools">
                  <button class="btn btn-info" type="submit" value="Upload">Simpan Data</button>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <div class="row">
                  <div class="col-md-6">
                    <div class="form-group">
                      <label>Judul Buku Wiring</label>
                      <input type="text" class="form-control" value="<?php echo $data_wiring->judul_pdf ?>" id="judul_pdf" placeholder="Masukkan judul buku wiring" name="judul_pdf">
                      <input type="hidden" value="<?php echo $data_wiring->id_pdf ?>" name="id_pdf">
                      <input type="hidden" value="<?php echo $this->session->userdata("user_nip") ?>" name="id_user_update">
                      <input type="hidden" value="<?php echo $this->session->userdata("user_nama") ?>" name="user_update"> 
                    </div>
                    <!-- /.form-group -->
                  </div>
                  <!-- /.col -->
                  <div class="col-md-6">
                    <div class="form-group">
                      <label>Merk Peralatan</label>
                      <div class="select2-purple">
                        <select class="form-control select2bs4" style="width: 100%;" name="merk_peralatan" required>
                          <option value="" disabled selected><?php echo $data_wiring->merk_peralatan ?></option>
                          <?php                            
                            foreach($data_merk as $hasil){
                          ?>
                          <option><?php echo $hasil->nama_merk ?></option>
                          <?php } ?> 
                        </select>
                      </div>
                    </div>
                    <!-- /.form-group -->
                  </div>
                  <!-- /.col -->
                </div>
                <!-- /.row -->
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
            <!-- Form Detail -->
            <div class="card card-default">
              <div class="card-body">
                <div class="row">
                  <div class="col-md-6">
                    <div class="form-group">
                      <label>Pilih UPT</label>
                      <div class="select2-purple">
                        <select class="form-control select2bs4" style="width: 100%;" name="nama_upt" id="nama_upt" required>
                          <option value="" disabled selected><?php echo $data_wiring->nama_upt ?></option>
                          <?php                            
                            foreach($data_upt as $hasil){
                          ?>
                          <option data-kode_upt="<?php echo $hasil->kode_upt ?>"><?php echo $hasil->nama_upt ?></option>
                          <?php } ?> 
                        </select>
                      </div>
                    </div>
                    <!-- /.form-group -->
                  </div>
                  <!-- /.col -->
                  <div class="col-md-6">
                    <div class="form-group">
                      <label>Pilih ULTG</label>
                      <div class="select2-purple">
                        <select class="form-control select2bs4" style="width: 100%;" name="nama_tragi" id="nama_tragi" required>
                          <option value="" disabled selected>*silahkan pilih UPT terlebih dahulu</option>
                          <option value="" disabled selected><?php echo $data_wiring->nama_tragi ?></option>                          
                        </select>
                      </div>
                    </div>
                  </div>
                  <!-- /.col -->
                  <div class="col-md-6">
                    <div class="form-group">
                      <label>Pilih Gardu</label>
                      <div class="select2-purple">
                        <select class="form-control select2bs4" style="width: 100%;" name="nama_gardu" id="nama_gardu" required>
                          <option value="" disabled selected>*silahkan pilih ULTG terlebih dahulu</option>
                          <option value="" disabled selected><?php echo $data_wiring->nama_gardu ?></option>
                        </select>
                      </div>
                    </div>
                    <!-- /.form-group -->
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label>Pilih Bay</label>
                      <div class="select2-purple">
                        <select class="form-control select2bs4" style="width: 100%;" name="nama_bay" id="nama_bay" required>
                          <option value="" disabled selected>*silahkan pilih Gardu terlebih dahulu</option>
                          <option value="" disabled selected><?php echo $data_wiring->nama_bay ?></option>
                        </select>
                      </div>
                    </div>
                    <!-- /.form-group -->
                  </div>
                </div>
                <!-- /.row -->
                <div class="row">
                  <div class="col-md-6">
                    <div class="form-group">
                      <label>Tegangan Peralatan</label>
                      <!-- radio -->
                      <div class="form-group clearfix row">
                        <div class="col">
                          <div class="icheck-primary">
                            <input type="radio" value="500 KV" id="radio500" name="radioTeganganperalatan" <?php echo ($data_wiring->level_tegangan == "500 KV") ? "checked" : "" ?>>
                            <label for="radio500">
                              500 KV
                            </label>
                          </div>
                          <div class="icheck-primary">
                            <input type="radio" value="275 KV" id="radio275" name="radioTeganganperalatan" <?php echo ($data_wiring->level_tegangan == "275 KV") ? "checked" : "" ?>>
                            <label for="radio275">
                              275 KV
                            </label>
                          </div>
                          <div class="icheck-primary">
                            <input type="radio" value="150 KV" id="radio150" name="radioTeganganperalatan" <?php echo ($data_wiring->level_tegangan == "150 KV") ? "checked" : "" ?>>
                            <label for="radio150">
                              150 KV
                            </label>
                          </div>
                        </div>
                        <div class="col">
                          <div class="icheck-primary">
                            <input type="radio" value="70 KV" id="radio70" name="radioTeganganperalatan" <?php echo ($data_wiring->level_tegangan == "70 KV") ? "checked" : "" ?> >
                            <label for="radio70">
                              70 KV
                            </label>
                          </div>
                          <div class="icheck-primary">
                            <input type="radio" value="20 KV" id="radio20" name="radioTeganganperalatan" <?php echo ($data_wiring->level_tegangan == "20 KV") ? "checked" : "" ?> >
                            <label for="radio20">
                              20 KV
                            </label>
                          </div>
                        </div>
                        <div class="col">
                          <div class="icheck-primary">
                            <input type="radio" value="220 VAC" id="radio220" name="radioTeganganperalatan" <?php echo ($data_wiring->level_tegangan == "220 VAC") ? "checked" : "" ?> >
                            <label for="radio220">
                              220 VAC
                            </label>
                          </div>
                          <div class="icheck-primary">
                            <input type="radio" value="110 VDC" id="radio110" name="radioTeganganperalatan" <?php echo ($data_wiring->level_tegangan == "110 VDC") ? "checked" : "" ?> >
                            <label for="radio110">
                              110 VDC
                            </label>
                          </div>
                          <div class="icheck-primary">
                            <input type="radio" value="48 VDC" id="radio48" name="radioTeganganperalatan" <?php echo ($data_wiring->level_tegangan == "48 VDC") ? "checked" : "" ?> >
                            <label for="radio48">
                              48 VDC
                            </label>
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- /.form-group -->
                  </div>
                  <!-- /.col -->
                  <div class="col-md-6">
                    <div class="form-group">
                      <label>Kategori Peralatan</label>
                      <!-- radio -->
                      <div class="form-group clearfix">
                        <div class="icheck-primary d-inline">
                          <input type="radio" value="SISTEM DC" id="radioSistemdc" name="radioKategoriperalatan" <?php echo ($data_wiring->kategori_peralatan == "SISTEM DC") ? "checked" : "" ?> >
                          <label for="radioSistemdc">
                            Sistem DC
                          </label>
                        </div>
                        <div class="icheck-primary d-inline">
                          <input type="radio" value="BAY" id="radioBay" name="radioKategoriperalatan" <?php echo ($data_wiring->kategori_peralatan == "BAY") ? "checked" : "" ?> >
                          <label for="radioBay">
                            Bay
                          </label>
                        </div>
                        <div class="icheck-primary d-inline">
                          <input type="radio" value="ALAT PEREKAM" id="radioAlatperekam" name="radioKategoriperalatan" <?php echo ($data_wiring->kategori_peralatan == "ALAT PEREKAM") ? "checked" : "" ?> >
                          <label for="radioAlatperekam">
                            Alat Perekam
                          </label>
                        </div>
                      </div>
                    </div>
                    <div class="form-group">
                      <label>Sub Kategori Peralatan</label>
                      <!-- radio -->
                      <div class="form-group clearfix row">
                        <div class="col">
                          <div class="icheck-primary">
                            <input type="radio" value="PENGHANTAR" id="radioPenghantar" name="radioKategorilanjutan" <?php echo ($data_wiring->kategori_bay == "PENGHANTAR") ? "checked" : "" ?> >
                            <label for="radioPenghantar">
                              Penghantar
                            </label>
                          </div>
                          <div class="icheck-primary">
                            <input type="radio" value="TRAFO" id="radioTrafo" name="radioKategorilanjutan" <?php echo ($data_wiring->kategori_bay == "TRAFO") ? "checked" : "" ?> >
                            <label for="radioTrafo">
                              Trafo
                            </label>
                          </div>
                          <div class="icheck-primary">
                            <input type="radio" value="KOPEL" id="radioKopel" name="radioKategorilanjutan" <?php echo ($data_wiring->kategori_bay == "KOPEL") ? "checked" : "" ?> >
                            <label for="radioKopel">
                              Kopel
                            </label>
                          </div>
                        </div>
                        <div class="col">
                          <div class="icheck-primary">
                            <input type="radio" value="KAPASITOR" id="radioKapasitor" name="radioKategorilanjutan" <?php echo ($data_wiring->kategori_bay == "KAPASITOR") ? "checked" : "" ?> >
                            <label for="radioKapasitor">
                              Kapasitor
                            </label>
                          </div>
                          <div class="icheck-primary">
                            <input type="radio" value="DIAMETER" id="radioDiameter" name="radioKategorilanjutan" <?php echo ($data_wiring->kategori_bay == "DIAMETER") ? "checked" : "" ?> >
                            <label for="radioDiameter">
                              Diameter
                            </label>
                          </div>
                          <div class="icheck-primary">
                            <input type="radio" value="BUSBAR" id="radioBusbar" name="radioKategorilanjutan" <?php echo ($data_wiring->kategori_bay == "BUSBAR") ? "checked" : "" ?> >
                            <label for="radioBusbar">
                              Busbar dan Synchro
                            </label>
                          </div>
                        </div>
                        <div class="col">
                          <div class="icheck-primary">
                            <input type="radio" value="ACDC" id="radioAcdc" name="radioKategorilanjutan" <?php echo ($data_wiring->kategori_bay == "ACDC") ? "checked" : "" ?> >
                            <label for="radioAcdc">
                              AC/DC
                            </label>
                          </div>
                          <div class="icheck-primary">
                            <input type="radio" value="ALAT PEREKAM" id="radioAlatperekam2" name="radioKategorilanjutan" <?php echo ($data_wiring->kategori_bay == "ALAT PEREKAM") ? "checked" : "" ?> >
                            <label for="radioAlatperekam2">
                              Alat Perekam
                            </label>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <!-- /.col -->
                </div>
                <!-- /.row -->
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
            
            <!-- Form Detail 2 -->
            <div class="card card-default">
              <div class="card-body">
                <div class="row">
                  <div class="col-md-12">
                    <div class="form-group">
                      <label>Kategori Wiring</label>
                      <!-- radio -->
                      <div class="form-group clearfix row">
                        <div class="col">
                          <div class="icheck-primary d-inline">
                            <input type="radio" value="AS BUILT" id="radioAsbuilt" name="radioKategoriwiring" <?php echo ($data_wiring->kategori_wiring == "AS BUILT") ? "checked" : "" ?> >
                            <label for="radioAsbuilt">
                              As Built
                            </label>
                          </div>
                          <div class="icheck-primary d-inline">
                            <input type="radio" value="INTERNAL PERALATAN" id="radioInternalperalatan" name="radioKategoriwiring" <?php echo ($data_wiring->kategori_wiring == "INTERNAL PERALATAN") ? "checked" : "" ?> >
                            <label for="radioInternalperalatan">
                              Internal Peralatan
                            </label>
                          </div>
                          <div class="icheck-primary d-inline">
                            <input type="radio" value="PANEL KOMUNIKASI" id="radioPanelkomunikasi" name="radioKategoriwiring" <?php echo ($data_wiring->kategori_wiring == "PANEL KOMUNIKASI") ? "checked" : "" ?> >
                            <label for="radioPanelkomunikasi">
                              Panel Komunikasi
                            </label>
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- /.form-group -->
                  </div>
                  <!-- /.col -->
                  <div class="col-md-9">
                    <div class="form-group">
                      <label>Sub Kategori Wiring</label>
                      <!-- radio -->
                      <div class="form-group clearfix row">
                          <div class="col">
                            <div class="icheck-primary">
                              <input type="radio" value="INTERNAL PMT" id="radioInternalPMT" name="radioSubkategoriwiring" <?php echo ($data_wiring->sub_kategori_wiring == "INTERNAL PMT") ? "checked" : "" ?> >
                              <label for="radioInternalPMT">
                                Internal PMT
                              </label>
                            </div>
                            <div class="icheck-primary">
                              <input type="radio" value="INTERNAL PMS BUS" id="radioInternalPMSbus" name="radioSubkategoriwiring" <?php echo ($data_wiring->sub_kategori_wiring == "INTERNAL PMS BUS") ? "checked" : "" ?> >
                              <label for="radioInternalPMSbus">
                                Internal PMS Bus
                              </label>
                            </div>
                            <div class="icheck-primary">
                              <input type="radio" value="INTERNAL PMS LINE" id="radioInternalPMSline" name="radioSubkategoriwiring" <?php echo ($data_wiring->sub_kategori_wiring == "INTERNAL PMS LINE") ? "checked" : "" ?> >
                              <label for="radioInternalPMSline">
                                Internal PMS Line
                              </label>
                            </div>
                            <div class="icheck-primary">
                              <input type="radio" value="INTERNAL PMS GROUND" id="radioInternalPMSground" name="radioSubkategoriwiring" <?php echo ($data_wiring->sub_kategori_wiring == "INTERNAL PMS GROUND") ? "checked" : "" ?> >
                              <label for="radioInternalPMSground">
                                Internal PMS Ground
                              </label>
                            </div>
                          </div>
                          <div class="col">
                            <div class="icheck-primary">
                              <input type="radio" value="INTERNAL TRAFO" id="radioInternaltrafo" name="radioSubkategoriwiring" <?php echo ($data_wiring->sub_kategori_wiring == "INTERNAL TRAFO") ? "checked" : "" ?> >
                              <label for="radioInternaltrafo">
                                Internal Trafo
                              </label>
                            </div>
                            <div class="icheck-primary">
                              <input type="radio" value="KUBIKEL" id="radioKubikel" name="radioSubkategoriwiring" <?php echo ($data_wiring->sub_kategori_wiring == "KUBIKEL") ? "checked" : "" ?> >
                              <label for="radioKubikel">
                                Kubikel
                              </label>
                            </div>
                            <div class="icheck-primary">
                              <input type="radio" value="PANEL KONTROL DAN PROTEKSI" id="radioPanelkontroldanproteksi" name="radioSubkategoriwiring" <?php echo ($data_wiring->sub_kategori_wiring == "PANEL KONTROL DAN PROTEKSI") ? "checked" : "" ?> >
                              <label for="radioPanelkontroldanproteksi">
                                Panel Kontrol dan Proteksi
                              </label>
                            </div>
                            <div class="icheck-primary">
                              <input type="radio" value="RELAY" id="radioRelay" name="radioSubkategoriwiring" <?php echo ($data_wiring->sub_kategori_wiring == "RELAY") ? "checked" : "" ?> >
                              <label for="radioRelay">
                                Relay
                              </label>
                            </div>
                          </div>
                          <div class="col">
                            <div class="icheck-primary">
                              <input type="radio" value="KWH" id="radioKWH" name="radioSubkategoriwiring" <?php echo ($data_wiring->sub_kategori_wiring == "KWH") ? "checked" : "" ?> >
                              <label for="radioKWH">
                                KWH
                              </label>
                            </div>
                            <div class="icheck-primary">
                              <input type="radio" value="PANEL KWH" id="radioPanelkwh" name="radioSubkategoriwiring" <?php echo ($data_wiring->sub_kategori_wiring == "PANEL KWH") ? "checked" : "" ?> >
                              <label for="radioPanelkwh">
                                Panel KWH
                              </label>
                            </div>
                            <div class="icheck-primary">
                              <input type="radio" value="KABEL SCHEDULE" id="radioCableschedule" name="radioSubkategoriwiring" <?php echo ($data_wiring->sub_kategori_wiring == "KABEL SCHEDULE") ? "checked" : "" ?> >
                              <label for="radioCableschedule">
                                Cable Schedule
                              </label>
                            </div>
                          </div>
                      </div>
                    </div>
                    <!-- /.form-group -->
                  </div>
                  <!-- /.col -->
                  <div class="col-md-12">
                    <div class="form-group">
                      <label>Keterangan Tambahan</label>
                      <textarea class="form-control" rows="3" placeholder="Ini adalah buku Internal Trafo merk Unindo..." name="keterangan" id="keterangan" ><?php echo $data_wiring->keterangan ?></textarea>
                    </div>
                  </div>
                  <!-- /.col -->
                </div>
                <!-- /.row -->
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->

            <!-- Form Upload -->
            <div class="card card-default">
              <div class="card-header">
                <h3 class="card-title">Upload <small><em>buku wiring</em></small></h3>
              </div>
              <div class="card-body">
                <div class="row margin-bottom">
                  <div class="margin-side">
                  <a href="<?php echo base_url() ?><?php echo $data_wiring->link_pdf ?>" target="_blank" class="btn btn-info">Lihat PDF</a>
                  </div>
                  <div class="col text-center">
                    <?php echo str_replace(' ', '_', $data_wiring->nama_bay . '_' . $data_wiring->sub_kategori_wiring . '_' . date('dmY', strtotime($data_wiring->update_terakhir))) . '.pdf' ; ?>
                  </div>                    
                </div>
                <div class="custom-file">
                  <input type="file" class="custom-file-input" name="pdf_file" id="pdf_file_upload" accept=".pdf" required>
                  <label class="custom-file-label" for="pdf_file_upload">Pilih file buku wiring</label>
                </div>
              </div>
              <!-- /.card-body -->
              <div class="card-footer">
                Contact <a href="#">Admin</a> for more information.
              </div>
            </div>
            <!-- /.card -->
          </div><!-- /.container-fluid -->
        <?php echo form_close() ?>
      </section>
      <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
      <!-- Control sidebar content goes here -->
    </aside>
    <!-- /.control-sidebar -->

    <!-- Main Footer -->
    <footer class="main-footer">
      <strong>Copyright &copy; 2017-2023 <a href="#">FAST Team</a>.</strong> Herman, Lewi, Yos.
      All rights reserved.
      <div class="float-right d-none d-sm-inline-block">
        <b>Version</b> 2.0.1
      </div>
    </footer>
  </div>
  <!-- ./wrapper -->

  <!-- REQUIRED SCRIPTS -->

  <!-- jQuery -->
  <script src="<?php echo base_url(); ?>assets/back/AdminLTE/plugins/jquery/jquery.min.js"></script>
  <!-- Bootstrap -->
  <script src="<?php echo base_url(); ?>assets/back/AdminLTE/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- AdminLTE -->
  <script src="<?php echo base_url(); ?>assets/back/AdminLTE/dist/js/adminlte.js"></script>
  <!-- Select2 -->
  <script src="<?php echo base_url(); ?>assets/back/AdminLTE/plugins/select2/js/select2.full.min.js"></script>
  <!-- OPTIONAL SCRIPTS -->
  <script src="<?php echo base_url(); ?>assets/back/AdminLTE/plugins/chart.js/Chart.min.js"></script>
  <!-- bs-custom-file-input -->
  <script src="<?php echo base_url(); ?>assets/back/AdminLTE/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
  <!-- SweetAlert2 -->
  <script src="<?php echo base_url(); ?>assets/back/AdminLTE/plugins/sweetalert2/sweetalert2.min.js"></script>
  
  <script src="<?php echo base_url(); ?>assets/back/AdminLTE/dist/js/pages/dashboard3.js"></script>

  <script>
    $(document).ready(function() {
      
      //Initialize Select2 Elements
      $('.select2').select2()

      //Initialize Select2 Elements
      $('.select2bs4').select2({
        theme: 'bootstrap4'
      })

      bsCustomFileInput.init();

      <?php if($this->session->flashdata('success')): ?>
        Swal.fire({
            title: 'Sukses!',
            text: '<?php echo $this->session->flashdata('success'); ?>',
            icon: 'success',
            confirmButtonText: 'Konfirmasi'
        });
      <?php endif; ?>

      <?php if($this->session->flashdata('gagalSimpan')): ?>
        Swal.fire({
            title: 'Gagal!',
            text: '<?php echo $this->session->flashdata('gagalSimpan'); ?>',
            icon: 'error',
            confirmButtonText: 'Konfirmasi'
        });
      <?php endif; ?>

      <?php if($this->session->flashdata('gagalUpload')): ?>
        Swal.fire({
            title: 'Gagal!',
            text: '<?php echo $this->session->flashdata('gagalUpload'); ?>',
            icon: 'error',
            confirmButtonText: 'Konfirmasi'
        });
      <?php endif; ?>

      // Ketika user memilih nama UPT
      $('select[name="nama_upt"]').on('change', function(){
        var nama_upt = $(this).val(); // Ambil value dari dropdown nama UPT
        var kode_upt = $('select[name="nama_upt"] option:selected').data('kode_upt'); // Ambil nilai kode_upt dari opsi yang dipilih
        $('select[name="nama_upt"] option[data-kode_upt="'+kode_upt+'"]').hide(); // Sembunyikan opsi dengan nilai kode_upt yang sama

        // Request AJAX
        $.ajax({
            url: '<?php echo base_url("AdminHome/get_tragi_by_upt/"); ?>'+kode_upt,
            type: 'GET',
            dataType: 'json',
            success: function(response){
                // Remove options pada dropdown nama ULTG
                $('select[name="nama_tragi"]').find('option').not(':first').remove();

                // Loop untuk menambahkan options pada dropdown nama ULTG
                $.each(response,function(index,datatragi){
                    $('select[name="nama_tragi"]').append('<option data-kode_tragi="'+datatragi.kode_tragi+'" value="'+datatragi.nama_tragi+'">'+datatragi.nama_tragi+'</option>');
                });
            }
        });
      });

      // Ketika user memilih nama ULTG
      $('select[name="nama_tragi"]').on('change', function(){
        var nama_tragi = $(this).val(); // Ambil value dari dropdown nama Tragi
        var kode_tragi = $('select[name="nama_tragi"] option:selected').data('kode_tragi'); // Ambil nilai kode_tragi dari opsi yang dipilih

        // Request AJAX
        $.ajax({
            url: '<?php echo base_url("AdminHome/get_gardu_by_tragi/"); ?>'+kode_tragi,
            type: 'GET',
            dataType: 'json',
            success: function(response){
                // Remove options pada dropdown nama Gardu
                $('select[name="nama_gardu"]').find('option').not(':first').remove();

                // Loop untuk menambahkan options pada dropdown nama Gardu
                $.each(response,function(index,datagardu){
                    $('select[name="nama_gardu"]').append('<option data-kode_gardu="'+datagardu.kode_gardu+'" value="'+datagardu.nama_gardu+'">'+datagardu.nama_gardu+'</option>');
                });

                // Set nilai dropdown nama Gardu berdasarkan kode_tragi yang diambil
                $('select[name="nama_gardu"]').val(kode_tragi);
            }
        });
      });

      // Ketika user memilih nama Gardu
      $('select[name="nama_gardu"]').on('change', function(){
        var nama_gardu = $(this).val(); // Ambil value dari dropdown nama Gardu
        var kode_gardu = $('select[name="nama_gardu"] option:selected').data('kode_gardu'); // Ambil nilai kode_gardu dari opsi yang dipilih

        // Request AJAX
        $.ajax({
            url: '<?php echo base_url("AdminHome/get_bay_by_gardu/"); ?>'+kode_gardu,
            type: 'GET',
            dataType: 'json',
            success: function(response){
                // Remove options pada dropdown nama Gardu
                $('select[name="nama_bay"]').find('option').not(':first').remove();

                // Loop untuk menambahkan options pada dropdown nama Gardu
                $.each(response,function(index,databay){
                    $('select[name="nama_bay"]').append('<option value="'+databay.nama_bay+'">'+databay.nama_bay+'</option>');
                });
            }
        });
      });

      
    });
  </script>





</body>
</html>
