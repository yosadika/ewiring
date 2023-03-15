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
                                                    </div>
                                                    <!-- /.form-group -->
                                                </div>
                                                <!-- /.col -->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                    <label>Inisial UPT</label>
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
                                                    <label>Ketrangan Lokasi UPT</label>
                                                    <input type="text" class="form-control" placeholder="contoh: Medan, Sumatera Utara" name="keterangan_upt" required>
                                                    </div>
                                                    <!-- /.form-group -->
                                                </div>
                                                <!-- /.col -->
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                    <label>Inisial UPT</label>
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
                                            <label class="custom-file-label" for="foto_upt_upload">Pilih file foto UPT... *png</label>
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
                            <?php echo form_open_multipart('AdminHome/tambahULTG') ?>
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
                                                <div class="select2-purple">
                                                    <select class="form-control select2bs4" style="width: 100%;" name="merk_peralatan" required>
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
                                                <div class="select2-purple">
                                                    <select class="form-control select2bs4" style="width: 100%;" name="merk_peralatan" required>
                                                    <option value="" disabled selected>Pilih salah satu</option>
                                                    <?php                            
                                                        foreach($data_upt as $hasil){
                                                    ?>
                                                    <option><?php echo $hasil->kode_upt ?></option>
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
                            <?php echo form_close() ?>
                            </div>
                            <div class="tab-pane fade" id="custom-tabs-one-messages" role="tabpanel" aria-labelledby="custom-tabs-one-messages-tab">
                                Morbi turpis dolor, vulputate vitae felis non, tincidunt congue mauris. Phasellus volutpat augue id mi placerat mollis. Vivamus faucibus eu massa eget condimentum. Fusce nec hendrerit sem, ac tristique nulla. Integer vestibulum orci odio. Cras nec augue ipsum. Suspendisse ut velit condimentum, mattis urna a, malesuada nunc. Curabitur eleifend facilisis velit finibus tristique. Nam vulputate, eros non luctus efficitur, ipsum odio volutpat massa, sit amet sollicitudin est libero sed ipsum. Nulla lacinia, ex vitae gravida fermentum, lectus ipsum gravida arcu, id fermentum metus arcu vel metus. Curabitur eget sem eu risus tincidunt eleifend ac ornare magna.
                            </div>
                            <div class="tab-pane fade" id="custom-tabs-one-settings" role="tabpanel" aria-labelledby="custom-tabs-one-settings-tab">
                                Pellentesque vestibulum commodo nibh nec blandit. Maecenas neque magna, iaculis tempus turpis ac, ornare sodales tellus. Mauris eget blandit dolor. Quisque tincidunt venenatis vulputate. Morbi euismod molestie tristique. Vestibulum consectetur dolor a vestibulum pharetra. Donec interdum placerat urna nec pharetra. Etiam eget dapibus orci, eget aliquet urna. Nunc at consequat diam. Nunc et felis ut nisl commodo dignissim. In hac habitasse platea dictumst. Praesent imperdiet accumsan ex sit amet facilisis.
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
      
    });
  </script>





</body>
</html>
