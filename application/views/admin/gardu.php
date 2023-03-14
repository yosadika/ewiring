<!DOCTYPE html>
<html lang="en">
<head>
<?php $this->load->view('admin/admin_layout_head'); ?>

<style>
.card-body-gardu ul {
  display: flex;
}

.card-body-gardu li {
  flex: 0 0 auto;
  margin-right: 10px;
  list-style: none;
}

.container{
    margin-left: 10px;
    margin-right: 10px;
    margin-bottom: 10px;
}

.info-box{
    margin-bottom: 5px;
    box-shadow: none;
    border-radius: 18px;
}

.info-box .info-box-number{
    margin-top: 5px;
}

.info-box .info-box-content{
    line-height: 1;
}
.cont-1{
    width: 260pt;
}

.darken-image {
  filter: brightness(0.5) grayscale(0);
}

.row-main{
    margin-bottom:10pt;
}

.div-table{
    margin-left: 10px;
    margin-right: 10px;
}

.text-black{    
    color: black;
}

.text-secondary{    
    color: gray;
}

.modal-body {
  align-items: center;
  overflow-x: auto;
}

.btn-app{
  margin: 5px 5px 5px 5px;
  padding: 5px;
  min-width: 78pt;
}

.justify-content-gardu{
  justify-content: flex-start;
}

.table-hidden{
  display:none;
  visibility:hidden;
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
        <!-- ULTG info row content -->
        <div class="row row-main"> 
          <!-- /.col widget ULTG info -->
            <div class="container cont-1">
                <div class="card mb-2 bg-gradient-dark shadow-lg">
                    <img class="card-img-top darken-image" src="<?php echo base_url(); ?>assets/front/background/login-bg.jpeg" alt="Dist Photo 1">
                    <div class="card-img-overlay d-flex flex-column justify-content-end">
                      <?php                            
                      foreach($data_gardu as $hasil){
                      ?>
                      <h5 class="card-title text-primary text-white"><?php echo $hasil->nama_gardu ?> <?php echo $hasil->level_tegangan ?></h5>
                      <p class="card-text text-white pb-2 pt-1">ULTG <?php echo $hasil->nama_tragi ?></p>
                      <a href="http://wa.me/6261123" class="text-white">+6261123</a>
                      <?php } ?>
                    </div>
                </div>
            </div>
            <div class="container col-md-3">
                <div class="row">
                  <a href="#" class="info-box" data-toggle="modal" data-target="#modal-acdc">
                    <span class="info-box-icon bg-info shadow-lg"><i class="far fa-envelope"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text text-black">Sistem DC</span>
                        <span class="info-box-number text-black"><?php echo $count_sistem_dc ?></span>
                    </div>
                    <!-- /.info-box-content -->
                  </a>
                    <!-- /.info-box -->
                </div>
                <div class="row">
                  <a href="#" class="info-box" data-toggle="modal" data-target="#modal-bay">
                    <span class="info-box-icon bg-info shadow-lg"><i class="far fa-envelope"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text text-black">Bay</span>
                        <span class="info-box-number text-black"><?php echo $count_bay_gardu ?></span>
                    </div>
                    <!-- /.info-box-content -->
                  </a>
                  <!-- /.info-box -->
                </div>
                <div class="row">
                  <a href="#" class="info-box" data-toggle="modal" data-target="#modal-alatperekam">
                    <span class="info-box-icon bg-info shadow-lg"><i class="far fa-envelope"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text text-black">Alat Perekam</span>
                        <span class="info-box-number text-black"><?php echo $count_alat_perekam ?></span>
                    </div>
                    <!-- /.info-box-content -->
                  </a>
                  <!-- /.info-box -->
                </div>                
                <?php $this->load->view('admin/admin_gardu_modal_acdc'); ?><!-- /.modal-acdc-page -->                
                <?php $this->load->view('admin/admin_gardu_modal'); ?><!-- /.modal-bay-page -->             
                <?php $this->load->view('admin/admin_gardu_modal_alatperekam'); ?><!-- /.modal-alat perekam-page -->
            </div>
          </div>
          <!-- /.col -->
          <!-- /.col widget ULTG info -->
	      </div>
        <div class="div-table row-main">
          <div class="card">
            <div class="card-header">
              <h3 class="card-title">Database Buku Wiring</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body table-responsive">
              <table id="table1" class="table table-bordered table-striped table-hover">
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
                  </tr>
                </thead>
                <tbody>
                  <?php
                    $no = 1;                            
                    foreach($data_buku_all as $hasil){
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
                  </tr>

                  <div class="modal fade" id="myModal-table1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
                          <a href="<?php echo base_url() ?>adminhome/edit/<?php echo $hasil->id_pdf ?>" type="button" class="btn btn-info" data-dismiss="modal">Edit</a>
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
        </div>
        <!-- End ULTG info row content -->
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
<script src="<?php echo base_url(); ?>assets/back/AdminLTE/dist/js/pages/dashboard3.js"></script>

<!-- DataTables  & Plugins -->
<script src="<?php echo base_url(); ?>assets/back/AdminLTE/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="<?php echo base_url(); ?>assets/back/AdminLTE/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="<?php echo base_url(); ?>assets/back/AdminLTE/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="<?php echo base_url(); ?>assets/back/AdminLTE/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="<?php echo base_url(); ?>assets/back/AdminLTE/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="<?php echo base_url(); ?>assets/back/AdminLTE/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script src="<?php echo base_url(); ?>assets/back/AdminLTE/plugins/jszip/jszip.min.js"></script>
<script src="<?php echo base_url(); ?>assets/back/AdminLTE/plugins/pdfmake/pdfmake.min.js"></script>
<script src="<?php echo base_url(); ?>assets/back/AdminLTE/plugins/pdfmake/vfs_fonts.js"></script>
<script src="<?php echo base_url(); ?>assets/back/AdminLTE/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="<?php echo base_url(); ?>assets/back/AdminLTE/plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="<?php echo base_url(); ?>assets/back/AdminLTE/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>

<script>
  $(document).ready(function() {
    $(".clickable-card").click(function() {
      var target = $(this).data("target");
      $(target).collapse('toggle');
    });

    $("#table1").DataTable({
      "responsive": true, "lengthChange": true, "autoWidth": false,
      "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
    }).buttons().container().appendTo('#table1_wrapper .col-md-6:eq(0)');

    $("#table-acdc").DataTable({
      "responsive": false, "lengthChange": true, "autoWidth": false
    });

    $("#table-alatperekam").DataTable({
      "responsive": false, "lengthChange": true, "autoWidth": false
    });

    $("#table-diameter").DataTable({
      "responsive": false, "lengthChange": true, "autoWidth": false
    });

    $("#table-pht").DataTable({
      "responsive": true, "lengthChange": true, "autoWidth": false
    });

    $("#table-trafohv").DataTable({
      "responsive": false, "lengthChange": true, "autoWidth": false
    });

    $("#table-trafolv").DataTable({
      "responsive": false, "lengthChange": true, "autoWidth": false
    });

    $("#table-kopel").DataTable({
      "responsive": false, "lengthChange": true, "autoWidth": false
    });

    $("#table-kapasitor").DataTable({
      "responsive": false, "lengthChange": true, "autoWidth": false
    });

    $("#table-busbar").DataTable({
      "responsive": false, "lengthChange": true, "autoWidth": false
    });

    var table_acdc = $('#table-acdc').DataTable();
    var table_alatperekam = $('#table-alatperekam').DataTable();
    var table_table1 = $('#table1').DataTable();
    var table_diameter = $('#table-diameter').DataTable();
    var table_pht = $('#table-pht').DataTable();
    var table_trafohv = $('#table-trafohv').DataTable();
    var table_trafolv = $('#table-trafolv').DataTable();
    var table_kopel = $('#table-kopel').DataTable();
    var table_kapasitor = $('#table-kapasitor').DataTable();
    var table_busbar = $('#table-busbar').DataTable();

    $('#table-acdc tbody').on('click', 'tr', function () {
    var data = table_acdc.row( this ).data();
    var tableContent = '<table class="table table-bordered">';
    tableContent += '<tr><td>Upload by</td><td>' + data[6] + '</td></tr>';
    tableContent += '<tr><td>Updated by</td><td>' + data[7] + '</td></tr>';
    tableContent += '<tr><td>Last update</td><td>' + data[5] + '</td></tr>';
    tableContent += '</table>';
    tableContent += '<a href="' + data[8] + '" target="_blank" class="btn btn-info">Download PDF</a>';
    $('#myModal-acdc .modal-body').html(tableContent);
    $('#myModal-acdc .modal-title').html(data[3]);
    $('#myModal-acdc').modal('show');
    });

    $('#table-alatperekam tbody').on('click', 'tr', function () {
    var data = table_alatperekam.row( this ).data();
    var tableContent = '<table class="table table-bordered">';
    tableContent += '<tr><td>Upload by</td><td>' + data[6] + '</td></tr>';
    tableContent += '<tr><td>Updated by</td><td>' + data[7] + '</td></tr>';
    tableContent += '<tr><td>Last update</td><td>' + data[5] + '</td></tr>';
    tableContent += '</table>';
    tableContent += '<a href="' + data[8] + '" target="_blank" class="btn btn-info">Download PDF</a>';
    $('#myModal-alatperekam .modal-body').html(tableContent);
    $('#myModal-alatperekam .modal-title').html(data[3]);
    $('#myModal-alatperekam').modal('show');
    });

    $('#table1 tbody').on('click', 'tr', function () {
    var data = table_table1.row( this ).data();
    var tableContent = '<table class="table table-bordered">';
    tableContent += '<tr><td>Upload by</td><td>' + data[6] + '</td></tr>';
    tableContent += '<tr><td>Updated by</td><td>' + data[7] + '</td></tr>';
    tableContent += '<tr><td>Last update</td><td>' + data[5] + '</td></tr>';
    tableContent += '</table>';
    tableContent += '<a href="' + data[8] + '" target="_blank" class="btn btn-info">Download PDF</a>';
    $('#myModal-table1 .modal-body').html(tableContent);
    $('#myModal-table1 .modal-title').html(data[3]);
    $('#myModal-table1').modal('show');
    });

    $('#table-diameter tbody').on('click', 'tr', function () {
    var data = table_diameter.row( this ).data();
    var tableContent = '<table class="table table-bordered">';
    tableContent += '<tr><td>Upload by</td><td>' + data[6] + '</td></tr>';
    tableContent += '<tr><td>Updated by</td><td>' + data[7] + '</td></tr>';
    tableContent += '<tr><td>Last update</td><td>' + data[5] + '</td></tr>';
    tableContent += '</table>';
    tableContent += '<a href="' + data[8] + '" target="_blank" class="btn btn-info">Download PDF</a>';
    $('#myModal-dia .modal-body').html(tableContent);
    $('#myModal-dia .modal-title').html(data[3]);
    $('#myModal-dia').modal('show');
    });

    $('#table-pht tbody').on('click', 'tr', function () {
    var data = table_pht.row( this ).data();
    var tableContent = '<table class="table table-bordered">';
    tableContent += '<tr><td>Upload by</td><td>' + data[6] + '</td></tr>';
    tableContent += '<tr><td>Updated by</td><td>' + data[7] + '</td></tr>';
    tableContent += '<tr><td>Last update</td><td>' + data[5] + '</td></tr>';
    tableContent += '</table>';
    tableContent += '<a href="' + data[8] + '" target="_blank" class="btn btn-info">Download PDF</a>';
    $('#myModal-pht .modal-body').html(tableContent);
    $('#myModal-pht .modal-title').html(data[3]);
    $('#myModal-pht').modal('show');
    });

    $('#table-trafohv tbody').on('click', 'tr', function () {
    var data = table_trafohv.row( this ).data();
    var tableContent = '<table class="table table-bordered">';
    tableContent += '<tr><td>Upload by</td><td>' + data[6] + '</td></tr>';
    tableContent += '<tr><td>Updated by</td><td>' + data[7] + '</td></tr>';
    tableContent += '<tr><td>Last update</td><td>' + data[5] + '</td></tr>';
    tableContent += '</table>';
    tableContent += '<a href="' + data[8] + '" target="_blank" class="btn btn-info">Download PDF</a>';
    $('#myModal-trafohv .modal-body').html(tableContent);
    $('#myModal-trafohv .modal-title').html(data[3]);
    $('#myModal-trafohv').modal('show');
    });

    $('#table-trafolv tbody').on('click', 'tr', function () {
    var data = table_trafolv.row( this ).data();
    var tableContent = '<table class="table table-bordered">';
    tableContent += '<tr><td>Upload by</td><td>' + data[6] + '</td></tr>';
    tableContent += '<tr><td>Updated by</td><td>' + data[7] + '</td></tr>';
    tableContent += '<tr><td>Last update</td><td>' + data[5] + '</td></tr>';
    tableContent += '</table>';
    tableContent += '<a href="' + data[8] + '" target="_blank" class="btn btn-info">Download PDF</a>';
    $('#myModal-trafolv .modal-body').html(tableContent);
    $('#myModal-trafolv .modal-title').html(data[3]);
    $('#myModal-trafolv').modal('show');
    });

    $('#table-kopel tbody').on('click', 'tr', function () {
    var data = table_kopel.row( this ).data();
    var tableContent = '<table class="table table-bordered">';
    tableContent += '<tr><td>Upload by</td><td>' + data[6] + '</td></tr>';
    tableContent += '<tr><td>Updated by</td><td>' + data[7] + '</td></tr>';
    tableContent += '<tr><td>Last update</td><td>' + data[5] + '</td></tr>';
    tableContent += '</table>';
    tableContent += '<a href="' + data[8] + '" target="_blank" class="btn btn-info">Download PDF</a>';
    $('#myModal-kopel .modal-body').html(tableContent);
    $('#myModal-kopel .modal-title').html(data[3]);
    $('#myModal-kopel').modal('show');
    });

    $('#table-kapasitor tbody').on('click', 'tr', function () {
    var data = table_kapasitor.row( this ).data();
    var tableContent = '<table class="table table-bordered">';
    tableContent += '<tr><td>Upload by</td><td>' + data[6] + '</td></tr>';
    tableContent += '<tr><td>Updated by</td><td>' + data[7] + '</td></tr>';
    tableContent += '<tr><td>Last update</td><td>' + data[5] + '</td></tr>';
    tableContent += '</table>';
    tableContent += '<a href="' + data[8] + '" target="_blank" class="btn btn-info">Download PDF</a>';
    $('#myModal-kapasitor .modal-body').html(tableContent);
    $('#myModal-kapasitor .modal-title').html(data[3]);
    $('#myModal-kapasitor').modal('show');
    });

    $('#table-busbar tbody').on('click', 'tr', function () {
    var data = table_busbar.row( this ).data();
    var tableContent = '<table class="table table-bordered">';
    tableContent += '<tr><td>Upload by</td><td>' + data[6] + '</td></tr>';
    tableContent += '<tr><td>Updated by</td><td>' + data[7] + '</td></tr>';
    tableContent += '<tr><td>Last update</td><td>' + data[5] + '</td></tr>';
    tableContent += '</table>';
    tableContent += '<a href="' + data[8] + '" target="_blank" class="btn btn-info">Download PDF</a>';
    $('#myModal-busbar .modal-body').html(tableContent);
    $('#myModal-busbar .modal-title').html(data[3]);
    $('#myModal-busbar').modal('show');
    });

    
  });
</script>





</body>
</html>
