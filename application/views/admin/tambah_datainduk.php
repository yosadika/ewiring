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

  .margin-side{
    margin-left: 10px;
    margin-right: 10px;
  }

  .margin-top{
    margin-top: 20px;
  }

  .card-header {
  display: flex;
  justify-content: space-between;
  }

  .card-title {
  margin: auto 0;
  }
  
  .btn {
    margin: 0;
  }

  .swal2-styled.swal2-confirm{
    background-color: #17a2b8;
  }

  .card.card-tabs .card-tools {
    margin: 0rem 0.5rem;
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
            <div class="container-fluid">
                <div class="row">
                <div class="col-12">
                    <div class="card card-secondary card-tabs">
                    <div class="card-header p-0 pt-1">
                        <ul class="nav nav-tabs" id="custom-tabs-one-tab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="custom-tabs-one-home-tab" data-toggle="pill" href="#custom-tabs-one-home" role="tab" aria-controls="custom-tabs-one-home" aria-selected="true">Data UPT</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="custom-tabs-one-profile-tab" data-toggle="pill" href="#custom-tabs-one-profile" role="tab" aria-controls="custom-tabs-one-profile" aria-selected="false">Data ULTG</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="custom-tabs-one-messages-tab" data-toggle="pill" href="#custom-tabs-one-messages" role="tab" aria-controls="custom-tabs-one-messages" aria-selected="false">Data Gardu</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="custom-tabs-one-settings-tab" data-toggle="pill" href="#custom-tabs-one-settings" role="tab" aria-controls="custom-tabs-one-settings" aria-selected="false">Data Bay</a>
                        </li>
                        </ul>
                    </div>
                    <div class="card-body">
                        <div class="tab-content" id="custom-tabs-one-tabContent">
                            <div class="tab-pane fade show active" id="custom-tabs-one-home" role="tabpanel" aria-labelledby="custom-tabs-one-home-tab">
                                <?php echo form_open_multipart('AdminHome/tambahUPT') ?>
                                    <!-- Form Utama -->
                                    <div class="card card-default">
                                        <div class="row margin-top margin-side">
                                            <div class="col d-flex">
                                            <h3 class="card-title">Tambah Data UPT</h3>
                                            </div>
                                            <div class="col">
                                                <button class="btn btn-info float-right" type="submit" value="Upload">Simpan Data</button>
                                            </div>
                                        </div>
                                        <!-- /.card-header -->
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                    <label>Lokasi UPT</label>
                                                    <input type="text" class="form-control" placeholder="contoh: Medan" name="nama_upt" required>
                                                    <input type="hidden" value="<?php echo $this->session->userdata("user_nip") ?>" name="id_user_upload">
                                                    <input type="hidden" value="<?php echo $this->session->userdata("user_nama") ?>" name="user_upload"> 
                                                    </div>
                                                    <!-- /.form-group -->
                                                </div>
                                                <!-- /.col -->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                    <label>Nama UPT</label>
                                                    <input type="text" class="form-control" placeholder="contoh: UPT Medan" name="inisial_upt" required>
                                                    </div>
                                                    <!-- /.form-group -->
                                                </div>
                                                <!-- /.col -->
                                            </div>
                                            <!-- /.row -->
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                    <label>Keterangan Lokasi UPT</label>
                                                    <input type="text" class="form-control" placeholder="contoh: Medan, Sumatera Utara" name="keterangan_upt" required>
                                                    </div>
                                                    <!-- /.form-group -->
                                                </div>
                                                <!-- /.col -->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                    <label>Kode UPT</label>
                                                    <input type="text" class="form-control" placeholder="contoh: UPTMDN" name="kode_upt" required>
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

                                    <!-- Form Upload -->
                                    <div class="card card-default">
                                        <div class="card-header">
                                            <h3 class="card-title">Upload <small><em>foto UPT</em></small></h3>
                                        </div>
                                        <div class="card-body">
                                            <div class="custom-file">
                                            <input type="file" class="custom-file-input" name="pdf_file" id="foto_upt_upload" accept=".png" required>
                                            <label class="custom-file-label" for="foto_upt_upload">Pilih file foto UPT... *.png</label>
                                            </div>
                                        </div>
                                        <!-- /.card-body -->
                                        <div class="card-footer">
                                            Contact <a href="#">Admin</a> for more information.
                                        </div>
                                    </div>
                                    <!-- /.card -->
                                <?php echo form_close() ?>
                            </div>
                            <div class="tab-pane fade" id="custom-tabs-one-profile" role="tabpanel" aria-labelledby="custom-tabs-one-profile-tab">
                                <?php echo form_open_multipart('AdminHome/tambahtragi') ?>
                                    <!-- Form Utama -->
                                    <div class="card card-default">
                                        <div class="row margin-top margin-side">
                                            <div class="col d-flex">
                                            <h3 class="card-title">Tambah Data ULTG</h3>
                                            </div>
                                            <div class="col">
                                                <button class="btn btn-info float-right" type="submit" value="Upload">Simpan Data</button>
                                            </div>
                                        </div>
                                        <!-- /.card-header -->
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                    <label>Nama ULTG</label>
                                                    <input type="text" class="form-control" placeholder="contoh: Binjai" name="nama_tragi" required>
                                                    </div>
                                                    <!-- /.form-group -->
                                                </div>
                                                <!-- /.col -->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                    <label>Kode ULTG</label>
                                                    <input type="text" class="form-control" placeholder="contoh: BNJAI" name="kode_tragi" required>
                                                    </div>
                                                    <!-- /.form-group -->
                                                </div>
                                                <!-- /.col -->
                                            </div>
                                            <!-- /.row -->
                                            <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">                                                    
                                                    <label>Pilih UPT</label>
                                                    <input type="hidden" class="form-control" value="" name="id_upt" id="id_upt">
                                                    <div class="select2-purple">
                                                        <select class="form-control select2bs4" style="width: 100%;" name="nama_upt" required>
                                                            <option value="" disabled selected>Pilih salah satu</option>
                                                            <?php                            
                                                            foreach($data_upt as $hasil){
                                                            ?>
                                                            <option><?php echo $hasil->nama_upt ?></option>
                                                            <?php } ?> 
                                                        </select>
                                                    </div>                                                
                                                </div>
                                                <!-- /.form-group -->
                                            </div>
                                            <!-- /.col -->
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Kode UPT</label>                                                    
                                                    <input class="form-control" value="" name="kode_upt" id="kode_upt" readonly>
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
                                <?php echo form_close() ?>
                            </div>
                            <div class="tab-pane fade" id="custom-tabs-one-messages" role="tabpanel" aria-labelledby="custom-tabs-one-messages-tab">
                                <?php echo form_open_multipart('AdminHome/tambahGardu') ?>
                                    <!-- Form Utama -->
                                    <div class="card card-default">
                                        <div class="row margin-top margin-side">
                                            <div class="col d-flex">
                                            <h3 class="card-title">Tambah Data Gardu</h3>
                                            </div>
                                            <div class="col">
                                                <button class="btn btn-info float-right" type="submit" value="Upload">Simpan Data</button>
                                            </div>
                                        </div>
                                        <!-- /.card-header -->
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                    <label>Nama Gardu</label>
                                                    <input type="text" class="form-control" placeholder="contoh: Binjai" name="nama_gardu" required>
                                                    </div>
                                                    <!-- /.form-group -->
                                                </div>
                                                <!-- /.col -->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                    <label>Kode Gardu</label>
                                                    <input type="text" class="form-control" placeholder="contoh: BNJAI" name="kode_gardu" required>
                                                    </div>
                                                    <!-- /.form-group -->
                                                </div>
                                                <!-- /.col -->
                                            </div>
                                            <!-- /.row -->
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">                                                    
                                                    <label>Pilih ULTG</label>
                                                    <input type="hidden" class="form-control" value="" name="id_tragi" id="id_tragi" readonly>
                                                    <div class="select2-purple">
                                                        <select class="form-control select2bs4" style="width: 100%;" name="nama_tragi" required>
                                                        <option value="" disabled selected>Pilih salah satu</option>
                                                        <?php                            
                                                            foreach($data_tragi as $hasil){
                                                        ?>
                                                        <option><?php echo $hasil->nama_tragi ?></option>
                                                        <?php } ?> 
                                                        </select>
                                                    </div>                                                
                                                    </div>
                                                    <!-- /.form-group -->
                                                </div>
                                                <!-- /.col -->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                    <label>Kode ULTG</label>
                                                    <input class="form-control" name="kode_tragi" id="kode_tragi" value="" readonly></input>
                                                    </div>
                                                    <!-- /.form-group -->
                                                </div>
                                                <!-- /.col -->
                                            </div>
                                            <!-- /.row -->
                                            <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">                                                    
                                                    <label>UPT</label>                                                    
                                                    <input type="hidden" class="form-control" value="" name="id_upt" id="id_upt2" readonly>
                                                    <input class="form-control" name="nama_upt" id="nama_upt2" value="" readonly></input>                                               
                                                </div>
                                                <!-- /.form-group -->
                                            </div>
                                            <!-- /.col -->
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Kode UPT</label>
                                                    <input class="form-control" name="kode_upt" id="kode_upt2" value="" readonly></input>
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
                                            <div class="col">
                                                <div class="form-group">
                                                <label>Level Tegangan Gardu</label>
                                                <!-- radio -->
                                                    <div class="form-group clearfix row">
                                                        <div class="icheck-primary">
                                                            <input type="radio" value="500 KV" id="radio500" name="radioTeganganperalatan" required>
                                                            <label for="radio500">
                                                            500 KV
                                                            </label>
                                                        </div>
                                                        <div class="icheck-primary">
                                                            <input type="radio" value="275 KV" id="radio275" name="radioTeganganperalatan" required>
                                                            <label for="radio275">
                                                            275 KV
                                                            </label>
                                                        </div>
                                                        <div class="icheck-primary">
                                                            <input type="radio" value="150 KV" id="radio150" name="radioTeganganperalatan" required>
                                                            <label for="radio150">
                                                            150 KV
                                                            </label>
                                                        </div>
                                                        <div class="icheck-primary">
                                                            <input type="radio" value="70 KV" id="radio70" name="radioTeganganperalatan" required>
                                                            <label for="radio70">
                                                            70 KV
                                                            </label>
                                                        </div> 
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6 form-group">
                                                            <label>Sistem Tegangan Peralatan yang Terpasang</label>
                                                            <!-- multiple -->
                                                            <div class="row form-group clearfix">
                                                                <div class="col">
                                                                    <div class="icheck-primary">
                                                                        <input type="checkbox" value="500 KV" id="checkbox500" name="checkboxTeganganperalatan[]">
                                                                        <label for="checkbox500">
                                                                            500 KV
                                                                        </label>
                                                                    </div>
                                                                    <div class="icheck-primary">
                                                                        <input type="checkbox" value="275 KV" id="checkbox275" name="checkboxTeganganperalatan[]">
                                                                        <label for="checkbox275">
                                                                            275 KV
                                                                        </label>
                                                                    </div>
                                                                    <div class="icheck-primary">
                                                                        <input type="checkbox" value="150 KV" id="checkbox150" name="checkboxTeganganperalatan[]">
                                                                        <label for="checkbox150">
                                                                            150 KV
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                                <div class="col">
                                                                    <div class="icheck-primary">
                                                                        <input type="checkbox" value="70 KV" id="checkbox70" name="checkboxTeganganperalatan[]">
                                                                        <label for="checkbox70">
                                                                            70 KV
                                                                        </label>
                                                                    </div>
                                                                    <div class="icheck-primary">
                                                                        <input type="checkbox" value="20 KV" id="checkbox20" name="checkboxTeganganperalatan[]">
                                                                        <label for="checkbox20">
                                                                            20 KV
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                                <div class="col">
                                                                    <div class="icheck-primary">
                                                                        <input type="checkbox" value="220 VAC" id="checkbox220" name="checkboxTeganganperalatan[]">
                                                                        <label for="checkbox220">
                                                                            220 VAC
                                                                        </label>
                                                                    </div>
                                                                    <div class="icheck-primary">
                                                                        <input type="checkbox" value="110 VDC" id="checkbox110" name="checkboxTeganganperalatan[]">
                                                                        <label for="checkbox110">
                                                                            110 VDC
                                                                        </label>
                                                                    </div>
                                                                    <div class="icheck-primary">
                                                                        <input type="checkbox" value="48 VDC" id="checkbox48" name="checkboxTeganganperalatan[]">
                                                                        <label for="checkbox48">
                                                                            48 VDC
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6 form-group">
                                                            <label>Kategori Peralatan yang Terpasang</label>
                                                            <!-- multiple -->
                                                            <div class="form-group clearfix row">
                                                                <div class="col">
                                                                <div class="icheck-primary">
                                                                    <input type="checkbox" value="PENGHANTAR" id="checkboxPenghantar" name="checkboxKategorilanjutan[]">
                                                                    <label for="checkboxPenghantar">
                                                                    Penghantar
                                                                    </label>
                                                                </div>
                                                                <div class="icheck-primary">
                                                                    <input type="checkbox" value="TRAFO" id="checkboxTrafo" name="checkboxKategorilanjutan[]">
                                                                    <label for="checkboxTrafo">
                                                                    Trafo
                                                                    </label>
                                                                </div>
                                                                <div class="icheck-primary">
                                                                    <input type="checkbox" value="KOPEL" id="checkboxKopel" name="checkboxKategorilanjutan[]">
                                                                    <label for="checkboxKopel">
                                                                    Kopel
                                                                    </label>
                                                                </div>
                                                                </div>
                                                                <div class="col">
                                                                <div class="icheck-primary">
                                                                    <input type="checkbox" value="KAPASITOR" id="checkboxKapasitor" name="checkboxKategorilanjutan[]">
                                                                    <label for="checkboxKapasitor">
                                                                    Kapasitor
                                                                    </label>
                                                                </div>
                                                                <div class="icheck-primary">
                                                                    <input type="checkbox" value="DIAMETER" id="checkboxDiameter" name="checkboxKategorilanjutan[]">
                                                                    <label for="checkboxDiameter">
                                                                    Diameter
                                                                    </label>
                                                                </div>
                                                                <div class="icheck-primary">
                                                                    <input type="checkbox" value="BUSBAR" id="checkboxBusbar" name="checkboxKategorilanjutan[]">
                                                                    <label for="checkboxBusbar">
                                                                    Busbar dan Synchro
                                                                    </label>
                                                                </div>
                                                                </div>
                                                                <div class="col">
                                                                <div class="icheck-primary">
                                                                    <input type="checkbox" value="ACDC" id="checkboxAcdc" name="checkboxKategorilanjutan[]">
                                                                    <label for="checkboxAcdc">
                                                                    AC/DC
                                                                    </label>
                                                                </div>
                                                                <div class="icheck-primary">
                                                                    <input type="checkbox" value="ALAT PEREKAM" id="checkboxAlatperekam2" name="checkboxKategorilanjutan[]">
                                                                    <label for="checkboxAlatperekam2">
                                                                    Alat Perekam
                                                                    </label>
                                                                </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- /.col -->
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
                                <?php echo form_close() ?>
                            </div>
                            <div class="tab-pane fade" id="custom-tabs-one-settings" role="tabpanel" aria-labelledby="custom-tabs-one-settings-tab">
                                <?php echo form_open_multipart('AdminHome/tambahBay') ?>
                                    <!-- Form Utama -->
                                    <div class="card card-default">
                                        <div class="row margin-top margin-side">
                                            <div class="col d-flex">
                                            <h3 class="card-title">Tambah Data Bay</h3>
                                            </div>
                                            <div class="col">
                                                <button class="btn btn-info float-right" type="submit" value="Upload">Simpan Data</button>
                                            </div>
                                        </div>
                                        <!-- /.card-header -->
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                    <label>Nama Bay</label>
                                                    <input type="text" class="form-control" placeholder="contoh: BAY PHT 150 KV BINJAI - PAYA GELI 1" name="nama_bay" required>
                                                    </div>
                                                    <!-- /.form-group -->
                                                </div>
                                                <!-- /.col -->
                                                <div class="col-md-12 form-group">
                                                    <label>Kategori Bay</label>
                                                    <!-- radio -->
                                                    <div class="form-group clearfix row">
                                                        <div class="col">
                                                            <input type="hidden" class="form-control" value="" name="jumlah_wiring" id="jumlah_wiring" readonly>
                                                            <div class="icheck-primary">
                                                                <input type="radio" value="PENGHANTAR" id="radioPenghantarbay" name="radioKategorilanjutanbay" required>
                                                                <label for="radioPenghantarbay">
                                                                Penghantar
                                                                </label>
                                                            </div>
                                                            <div class="icheck-primary">
                                                                <input type="radio" value="TRAFO" id="radioTrafobay" name="radioKategorilanjutanbay" required>
                                                                <label for="radioTrafobay">
                                                                Trafo
                                                                </label>
                                                            </div>
                                                            <div class="icheck-primary">
                                                                <input type="radio" value="KOPEL" id="radioKopelbay" name="radioKategorilanjutanbay" required>
                                                                <label for="radioKopelbay">
                                                                Kopel
                                                                </label>
                                                            </div>
                                                            </div>
                                                            <div class="col">
                                                            <div class="icheck-primary">
                                                                <input type="radio" value="KAPASITOR" id="radioKapasitorbay" name="radioKategorilanjutanbay" required>
                                                                <label for="radioKapasitorbay">
                                                                Kapasitor
                                                                </label>
                                                            </div>
                                                            <div class="icheck-primary">
                                                                <input type="radio" value="DIAMETER" id="radioDiameterbay" name="radioKategorilanjutanbay" required>
                                                                <label for="radioDiameterbay">
                                                                Diameter
                                                                </label>
                                                            </div>
                                                            <div class="icheck-primary">
                                                                <input type="radio" value="BUSBAR" id="radioBusbarbay" name="radioKategorilanjutanbay" required>
                                                                <label for="radioBusbarbay">
                                                                Busbar dan Synchro
                                                                </label>
                                                            </div>
                                                            </div>
                                                            <div class="col">
                                                            <div class="icheck-primary">
                                                                <input type="radio" value="ACDC" id="radioAcdcbay" name="radioKategorilanjutanbay" required>
                                                                <label for="radioAcdcbay">
                                                                AC/DC
                                                                </label>
                                                            </div>
                                                            <div class="icheck-primary">
                                                                <input type="radio" value="ALAT PEREKAM" id="radioAlatperekam2bay" name="radioKategorilanjutanbay" required>
                                                                <label for="radioAlatperekam2bay">
                                                                Alat Perekam
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- /.row -->
                                        </div>
                                        <!-- /.card-body -->
                                    </div>
                                    <!-- /.card -->
                                    <!-- Form Deatil -->
                                    <div class="card card-default">
                                        <div class="card-body">
                                            <div class="row">
                                            <div class="col-md-6">
                                                    <div class="form-group">
                                                    <label>Pilih Gardu</label>
                                                    <input type="hidden" class="form-control" value="" name="id_gardu" id="id_gardu" readonly>
                                                    <div class="select2-purple">
                                                        <select class="form-control select2bs4" style="width: 100%;" name="nama_gardu" required>
                                                        <option value="" disabled selected>Pilih salah satu</option>
                                                        <?php                            
                                                            foreach($data_gardu as $hasil){
                                                        ?>
                                                        <option><?php echo $hasil->nama_gardu ?></option>
                                                        <?php } ?> 
                                                        </select>
                                                    </div>
                                                    </div>
                                                    <!-- /.form-group -->
                                                </div>
                                                <!-- /.col -->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                    <label>Kode Gardu</label>
                                                    <input class="form-control" value="" name="kode_gardu" id="kode_gardu" readonly>
                                                    </div>
                                                    <!-- /.form-group -->
                                                </div>
                                                <!-- /.col -->
                                            </div>
                                            <!-- /.row -->
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">                                                    
                                                    <label>ULTG</label>
                                                    <input type="hidden" class="form-control" value="" name="id_tragi" id="id_tragi2" readonly>
                                                    <input type="hidden" class="form-control" value="" name="kode_tragi" id="kode_tragi2" readonly>
                                                    <input class="form-control" value="" name="nama_tragi" id="nama_tragi2" readonly>                                                
                                                    </div>
                                                    <!-- /.form-group -->
                                                </div>
                                                <!-- /.col -->
                                                <div class="col-md-6">
                                                    <div class="form-group">                                                    
                                                    <label>Pilih UPT</label>
                                                    <input type="hidden" class="form-control" value="" name="id_upt" id="id_upt3" readonly>
                                                    <input type="hidden" class="form-control" value="" name="kode_upt" id="kode_upt3" readonly>
                                                    <input class="form-control" value="" name="nama_upt" id="nama_upt3" readonly>                                                
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
                                <?php echo form_close() ?>
                            </div>
                        </div>
                    </div>
                    <!-- /.card -->
                    </div>
                </div>
                </div>
            </div><!-- /.container-fluid -->
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

        $('select[name="nama_upt"]').on('change', function() {
            var nama_upt = $(this).val();
            if(nama_upt) {
                $.ajax({
                    url: '<?php echo base_url('adminhome/get_id_upt_by_name'); ?>',
                    type: "POST",
                    dataType: "json",
                    data: {'nama_upt':nama_upt},
                    success: function(data) {
                        $('#id_upt').val(data.id_upt);
                    }
                });
            } else {
                $('#id_upt').val('');
            }
        });

        $('select[name="nama_upt"]').on('change', function() {
            var nama_upt = $(this).val();
            if(nama_upt) {
                $.ajax({
                    url: '<?php echo base_url('adminhome/get_kode_upt_by_name'); ?>',
                    type: "POST",
                    dataType: "json",
                    data: {'nama_upt':nama_upt},
                    success: function(data) {
                        $('#kode_upt').val(data.kode_upt);
                    }
                });
            } else {
                $('#kode_upt').val('');
            }
        });

        $('select[name="nama_tragi"]').on('change', function() {
            var nama_tragi = $(this).val();
            if(nama_tragi) {
                $.ajax({
                    url: '<?php echo base_url('adminhome/get_data_tragi_by_name_idtragi'); ?>',
                    type: "POST",
                    dataType: "json",
                    data: {'nama_tragi':nama_tragi},
                    success: function(data) {
                        $('#id_tragi').val(data.id_tragi);
                    }
                });
            } else {
                $('#id_tragi').val('');
            }
        });

        $('select[name="nama_tragi"]').on('change', function() {
            var nama_tragi = $(this).val();
            if(nama_tragi) {
                $.ajax({
                    url: '<?php echo base_url('adminhome/get_data_tragi_by_name_kodetragi'); ?>',
                    type: "POST",
                    dataType: "json",
                    data: {'nama_tragi':nama_tragi},
                    success: function(data) {
                        $('#kode_tragi').val(data.kode_tragi);
                    }
                });
            } else {
                $('#kode_tragi').val('');
            }
        });

        $('select[name="nama_tragi"]').on('change', function() {
            var nama_tragi = $(this).val();
            if(nama_tragi) {
                $.ajax({
                    url: '<?php echo base_url('adminhome/get_data_tragi_by_name_idupt'); ?>',
                    type: "POST",
                    dataType: "json",
                    data: {'nama_tragi':nama_tragi},
                    success: function(data) {
                        $('#id_upt2').val(data.id_upt);
                    }
                });
            } else {
                $('#id_upt2').val('');
            }
        });

        $('select[name="nama_tragi"]').on('change', function() {
            var nama_tragi = $(this).val();
            if(nama_tragi) {
                $.ajax({
                    url: '<?php echo base_url('adminhome/get_data_tragi_by_name_namaupt'); ?>',
                    type: "POST",
                    dataType: "json",
                    data: {'nama_tragi':nama_tragi},
                    success: function(data) {
                        $('#nama_upt2').val(data.nama_upt);
                    }
                });
            } else {
                $('#nama_upt2').val('');
            }
        });

        $('select[name="nama_tragi"]').on('change', function() {
            var nama_tragi = $(this).val();
            if(nama_tragi) {
                $.ajax({
                    url: '<?php echo base_url('adminhome/get_data_tragi_by_name_kodeupt'); ?>',
                    type: "POST",
                    dataType: "json",
                    data: {'nama_tragi':nama_tragi},
                    success: function(data) {
                        $('#kode_upt2').val(data.kode_upt);
                    }
                });
            } else {
                $('#kode_upt2').val('');
            }
        });

        $('select[name="nama_gardu"]').on('change', function() {
            var nama_gardu = $(this).val();
            if(nama_gardu) {
                $.ajax({
                    url: '<?php echo base_url('adminhome/get_data_gardu_by_name_idgardu'); ?>',
                    type: "POST",
                    dataType: "json",
                    data: {'nama_gardu':nama_gardu},
                    success: function(data) {
                        $('#id_gardu').val(data.id_gardu);
                    }
                });
            } else {
                $('#id_gardu').val('');
            }
        });

        $('select[name="nama_gardu"]').on('change', function() {
            var nama_gardu = $(this).val();
            if(nama_gardu) {
                $.ajax({
                    url: '<?php echo base_url('adminhome/get_data_gardu_by_name_kodegardu'); ?>',
                    type: "POST",
                    dataType: "json",
                    data: {'nama_gardu':nama_gardu},
                    success: function(data) {
                        $('#kode_gardu').val(data.kode_gardu);
                    }
                });
            } else {
                $('#kode_gardu').val('');
            }
        });

        $('select[name="nama_gardu"]').on('change', function() {
            var nama_gardu = $(this).val();
            if(nama_gardu) {
                $.ajax({
                    url: '<?php echo base_url('adminhome/get_data_gardu_by_name_idtragi'); ?>',
                    type: "POST",
                    dataType: "json",
                    data: {'nama_gardu':nama_gardu},
                    success: function(data) {
                        $('#id_tragi2').val(data.id_tragi);
                    }
                });
            } else {
                $('#id_tragi2').val('');
            }
        });

        $('select[name="nama_gardu"]').on('change', function() {
            var nama_gardu = $(this).val();
            if(nama_gardu) {
                $.ajax({
                    url: '<?php echo base_url('adminhome/get_data_gardu_by_name_namatragi'); ?>',
                    type: "POST",
                    dataType: "json",
                    data: {'nama_gardu':nama_gardu},
                    success: function(data) {
                        $('#nama_tragi2').val(data.nama_tragi);
                    }
                });
            } else {
                $('#nama_tragi2').val('');
            }
        });

        $('select[name="nama_gardu"]').on('change', function() {
            var nama_gardu = $(this).val();
            if(nama_gardu) {
                $.ajax({
                    url: '<?php echo base_url('adminhome/get_data_gardu_by_name_kodetragi'); ?>',
                    type: "POST",
                    dataType: "json",
                    data: {'nama_gardu':nama_gardu},
                    success: function(data) {
                        $('#kode_tragi2').val(data.kode_tragi);
                    }
                });
            } else {
                $('#kode_tragi2').val('');
            }
        });

        $('select[name="nama_gardu"]').on('change', function() {
            var nama_gardu = $(this).val();
            if(nama_gardu) {
                $.ajax({
                    url: '<?php echo base_url('adminhome/get_data_gardu_by_name_idupt'); ?>',
                    type: "POST",
                    dataType: "json",
                    data: {'nama_gardu':nama_gardu},
                    success: function(data) {
                        $('#id_upt3').val(data.id_upt);
                    }
                });
            } else {
                $('#id_upt3').val('');
            }
        });

        $('select[name="nama_gardu"]').on('change', function() {
            var nama_gardu = $(this).val();
            if(nama_gardu) {
                $.ajax({
                    url: '<?php echo base_url('adminhome/get_data_gardu_by_name_namaupt'); ?>',
                    type: "POST",
                    dataType: "json",
                    data: {'nama_gardu':nama_gardu},
                    success: function(data) {
                        $('#nama_upt3').val(data.nama_upt);
                    }
                });
            } else {
                $('#nama_upt3').val('');
            }
        });

        $('select[name="nama_gardu"]').on('change', function() {
            var nama_gardu = $(this).val();
            if(nama_gardu) {
                $.ajax({
                    url: '<?php echo base_url('adminhome/get_data_gardu_by_name_kodeupt'); ?>',
                    type: "POST",
                    dataType: "json",
                    data: {'nama_gardu':nama_gardu},
                    success: function(data) {
                        $('#kode_upt3').val(data.kode_upt);
                    }
                });
            } else {
                $('#kode_upt3').val('');
            }
        });

        $('input[name="radioKategorilanjutanbay"]').on('change', function() {
        var jumlah_wiring = 0;
        if ($('#radioPenghantarbay').is(':checked')) {
            jumlah_wiring += 5;
        }
        if ($('#radioTrafobay').is(':checked')) {
            jumlah_wiring += 6;
        }
        if ($('#radioKopelbay').is(':checked')) {
            jumlah_wiring += 4;
        }
        if ($('#radioKapasitorbay').is(':checked')) {
            jumlah_wiring += 5;
        }
        if ($('#radioDiameterbay').is(':checked')) {
            jumlah_wiring += 5;
        }
        if ($('#radioBusbarbay').is(':checked')) {
            jumlah_wiring += 1;
        }
        if ($('#radioAcdcbay').is(':checked')) {
            jumlah_wiring += 1;
        }
        if ($('#radioAlatperekam2bay').is(':checked')) {
            jumlah_wiring += 1;
        }
        // Tambahkan kondisi untuk radio button lainnya
        
        $('#jumlah_wiring').val(jumlah_wiring);
    });
        
    });
</script>






</body>
</html>
