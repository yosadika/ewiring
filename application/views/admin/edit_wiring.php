<!DOCTYPE html>
<html lang="en">
<head>
<?php $this->load->view('admin/admin_layout_head'); ?>

<!-- Select2 -->
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/back/AdminLTE/plugins/select2/css/select2.min.css">
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/back/AdminLTE/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">

</head>
<!--
`body` tag options:

  Apply one or more of the following classes to to the body tag
  to get the desired effect

  * sidebar-collapse
  * sidebar-mini
-->
<body class="hold-transition sidebar-mini layout-navbar-fixed layout-fixed">
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
            <div class="card">
              <div class="card-header">
                <a href="javascript:void(0)" onclick="goBack();"><i class="fas fa-arrow-left back-button"></i> Back</a>
              </div>

              <div class="card-body col-md-12">
                <?php echo form_open_multipart('Adminhome/update_wiring') ?>
                <div class="form-group">
                  <label for="text">Judul Buku Wiring</label>
                  <input type="text" name="nama_bay" value="<?php echo $data_wiring->judul_pdf ?>" class="form-control">
                  <input type="hidden" value="<?php echo $data_wiring->id_pdf ?>" name="id_pdf">
                  <input type="hidden" name="data_tanggal_update" value="<?php 
                  $datetime_today = new DateTime('', new DateTimeZone('Asia/Jakarta'));//Pass resignation date as a parameter.
                  echo $datetime_today->format('d-m-Y H:i:s');
                  ?>" >
                </div>

                  
                <!-- Form 1 -->
                <div class="form-group">
                  <label for="form1">Nama ULTG</label>
                  <select id="form1" name="form1" class="form-control select2bs4">
                    <option><?php echo $data_wiring->nama_tragi ?></option>
                    <?php foreach ($data_tragi as $tragi) {
                      if ($tragi['nama_tragi'] != $data_wiring->nama_tragi) {
                    ?>
                    <option>
                        <?php echo $tragi['nama_tragi']; ?>
                    </option>
                    <?php 
                      }
                    } ?>
                  </select>
                </div>

                <!-- Form 2 -->
                <div class="form-group">
                  <label for="form2">Nama Gardu</label>
                  <?php 
                  $form2valuefromform1 = '<span id="form2valuefromform1"></span>'; 
                  echo $form2valuefromform1;
                  ?>

                  <select id="form2" name="form2" class="form-control select2bs4">
                      <option><?php echo $data_wiring->nama_gardu ?></option>
                      <?php foreach ($data_gardu as $gardu) {
                        // mengecek apakah nama_tragi pada form 1 sama dengan nama_tragi pada tabel gardu
                        $form2value = '$_POST['form2valuefromform1']';
                        if ($form2value == $gardu['nama_tragi'] && $gardu['nama_gardu'] != $data_wiring->nama_gardu) {
                        ?>
                      <option>
                          <?php echo $gardu['nama_gardu']; ?>
                      </option>

                      <?php 
                        }
                      } ?>

                  </select>
                </div>


                

                <!-- Form 3 -->
                <div class="form-group">
                  <label for="form3">Nama Bay</label>
                  <select id="form3" name="form3" class="form-control select2bs4">
                    <option><?php echo $data_wiring->nama_bay ?></option>
                    <?php foreach ($data_bay as $bay) { ?>
                    <?php if ($bay['id_bay'] == $data_pdf['id_bay']) { ?>
                    <option value="<?php echo $bay['id_bay']; ?>" selected>
                        <?php echo $bay['nama_bay']; ?>
                    </option>
                    <?php } ?>
                    <?php } ?>
                  </select>
                </div>
                  

                  
                                
                <button type="reset" class="btn btn-md btn-warning">Reset</button>
                <input class="btn btn-success" type="submit" name="btn" value="Update" />
                <?php echo form_close() ?>
              </div>
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

<!-- OPTIONAL SCRIPTS -->
<script src="<?php echo base_url(); ?>assets/back/AdminLTE/plugins/chart.js/Chart.min.js"></script>

<!-- Select2 -->
<script src="<?php echo base_url(); ?>assets/back/AdminLTE/plugins/select2/js/select2.full.min.js"></script>

<script src="<?php echo base_url(); ?>assets/back/AdminLTE/dist/js/pages/dashboard3.js"></script>

<script>
  //Back Button
  function goBack() {
    window.history.back();
  }

  //Initialize Select2 Elements
  $('.select2bs4').select2({
    theme: 'bootstrap4'
  })

  // Enable form 2 when form 1 is selected
  $("#form1").change(function () {
      $("#form2").prop("disabled", false);
  });

  // Enable form 3 when form 2 is selected
  $("#form2").change(function () {
      $("#form3").prop("disabled", false);
  });

  $(document).ready(function(){
    $("#form1").change(function(){
        var selectedValue = $("#form1").val();
        $("#form2valuefromform1").html(selectedValue);
    });

    // Set default value for form2
    $("#form2valuefromform1").html("<?php echo $data_wiring->nama_tragi ?>");
  });

  
</script>

<datalist id="data_bay">
    <?php
    foreach ($data_bay->result() as $hasil_bay)
    {
        echo "<option value='$hasil_bay->nama_bay'></option>";
    }
    ?>
    
</datalist>

<datalist id="data_gardu">
    <?php
    foreach ($data_gardu->result() as $hasil_gardu)
    {
        echo "<option value='$hasil_gardu->nama_gardu'></option>";
    }
    ?>
    
</datalist>

</body>
</html>
