<!DOCTYPE html>
<html lang="en">
<head>
<?php $this->load->view('admin/admin_layout_head'); ?>
<!-- DataTables -->
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/back/AdminLTE/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/back/AdminLTE/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/back/AdminLTE/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">

<style>
  .table-hidden{
  display:none;
  visibility:hidden;
  }

  .row {
  overflow-x: auto;
  max-width: 100%;
  }

  .margin-left{
    margin-left: 5px;
  }
  
</style>

</head>

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
                <h3 class="card-title">Data Buku Wiring</h3>
              </div>
              <!-- table -->
              <div class="card-body table-responsive">
                <table id="example" class="table table-striped table-bordered table-hover">
                  <thead>
                  <tr>
                      <th>No.</th>
                      <th>UPT</th>
                      <th>ULTG</th>
                      <th>Gardu</th>
                      <th>Bay</th>
                      <th data-class='table-hidden'>Data Hidden 1</th>
                      <th data-class='table-hidden'>Data Hidden 2</th>
                      <th data-class='table-hidden'>Data Hidden 3</th>
                      <th data-class='table-hidden'>Data Hidden 4</th>
                      <th data-class='table-hidden'>Data Hidden 5</th>
                      <th>Judul Buku Wiring</th>
                      <th>Keterangan</th>
                      
                  </tr>
                  </thead>
                  <tbody>

                  <?php
                      $no = 1; 
                      foreach($data_wiring as $hasil){
                  ?>
                  
                  <tr data-widget="expandable-table">
                      <td><?php echo $no++ ?></td>
                      <td><?php echo $hasil->nama_upt ?></td>
                      <td><?php echo $hasil->nama_tragi ?></td>
                      <td><?php echo $hasil->nama_gardu ?></td>
                      <td><?php echo $hasil->nama_bay ?></td>
                      
                      <td><?php echo $hasil->update_terakhir ?></td>
                      <td><?php echo $hasil->user_upload ?></td>
                      <td><?php echo $hasil->user_update ?></td>
                      <td><?php echo $hasil->link_pdf ?></td>
                      <td><?php echo $hasil->id_pdf ?></td>
                      <td><?php echo $hasil->judul_pdf ?></td>
                      <td><?php echo $hasil->keterangan ?></td>
                  </tr>

                  

                  
                  

                  <?php } ?>

                  </tbody>
                </table>
              </div>
            </div>
            <!-- /.card -->
          </div>
        </div>
	    </div>
      <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
      <div class="modal fade modal_hapus_alat" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog modal-dialog-centered" role="document">
              <div class="modal-content">
                  <div class="modal-header">
                      <h5 class="modal-title" id="exampleModalLabel">Yakin Dihapus?</h5>
                      <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">×</span>
                      </button>
                  </div>
                  <div class="modal-body">Data yang dihapus tidak akan bisa dikembalikan</div>
                  <div class="modal-footer">
                      <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                      <a id="btn-delete" class="btn btn-danger" href="#">Delete</a>
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

<script src="<?php echo base_url(); ?>assets/back/AdminLTE/dist/js/pages/dashboard3.js"></script>

<!-- DataTables -->
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

  $("#example").DataTable({
      "responsive": false, "lengthChange": true, "autoWidth": false
  });

  var table = $('#example').DataTable();

  $('#example tbody').on('click', 'tr', function () {
    var data = table.row( this ).data();
    var tableContent = '<table class="table table-bordered">';
    tableContent += '<tr><td>Upload by</td><td>' + data[6] + '</td></tr>';
    tableContent += '<tr><td>Updated by</td><td>' + data[7] + '</td></tr>';
    tableContent += '<tr><td>Last update</td><td>' + data[5] + '</td></tr>';
    tableContent += '</table>';
    tableContent += '<a href="<?php echo base_url() ?>' + data[8] + '" target="_blank" class="btn btn-info">Download PDF</a>';
    $('#myModal .modal-body').html(tableContent);
    $('#myModal .modal-title').html(data[10]);
    // tambahkan kode modal footer di sini
    var modalFooter = '<div>';
    modalFooter += '<a href="<?php echo base_url() ?>adminhome/edit_wiring/' + data[9] + '" type="button" class="btn btn-info">Edit</a>';
    modalFooter += '<a href="#!" onclick="deleteConfirm(\'<?php echo base_url(); ?>adminhome/hapus_wiring/' + data[9] + '\')" type="button" class="btn btn-danger margin-left">Hapus</a>';
    modalFooter += '</div>';
    $('#myModal .modal-footer').html(modalFooter);
    $('#myModal').modal('show');
  });
});
</script>

<script>
function deleteConfirm(url){
    $('#btn-delete').attr('href', url);
    $('.modal_hapus_alat').modal();
}
</script>





</body>
</html>
