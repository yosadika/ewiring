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

.card-body {
  max-height: 400px;
  overflow-y: auto;
}

.bg-none{
  background-color: transparent;
}

.card-footer{
  background-color: rgba(0,0,0,0);
}

.text-black{    
    color: black;
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
        <div class="row"> 
          <!-- /.col widget ULTG info -->
          <div class="col-md-4">
            <!-- Widget: user widget style 1 -->
            <div class="card widget-user shadow-lg">
              <!-- Add the bg color to the header using any of the bg-* classes -->
              <?php                            
                foreach($data_tragi as $hasil){
              ?>
              <div class="widget-user-header text-white"
                   style="background: url('<?php echo base_url(); ?>assets/front/background/black-bg.jpeg') center;">
                <h3 class="widget-user-username text-right">ULTG <?php echo $hasil->nama_tragi ?></h3>
                <h5 class="widget-user-desc text-right">UPT <?php echo $hasil->nama_upt ?></h5>
                <input type="hidden" value="<?php echo $hasil->nama_tragi ?>" name="nama_tragi">
              </div>
              <?php } ?>  
              <div class="widget-user-image">
                <img class="img-circle elevation-2" src="<?php echo base_url(); ?>android_login/foto_upt/medan.png" alt="User Avatar">
              </div>
              <div class="card-footer">
                <div class="row">
                  <div class="col-sm-4 border-right">
                    <div class="description-block">
                      <h5 class="description-header"><?php echo $jumlah_trafo ?></h5>
                      <span>Bay Trafo</span>
                    </div>
                    <!-- /.description-block -->
                  </div>
                  <!-- /.col -->
                  <div class="col-sm-4 border-right">
                    <div class="description-block">
                      <h5 class="description-header"><?php echo $jumlah_penghantar ?></h5>
                      <span>Bay PHT</span>
                    </div>
                    <!-- /.description-block -->
                  </div>
                  <!-- /.col -->
                  <div class="col-sm-4">
                    <div class="description-block">
                      <h5 class="description-header"><?php echo $jumlah_baylain ?></h5>
                      <span>Bay Lain</span>
                    </div>
                    <!-- /.description-block -->
                  </div>
                  <!-- /.col -->
                </div>
                <!-- /.row -->
              </div>
            </div>
            <!-- /.widget-user -->
          </div>
          <!-- /.col -->
          <!-- START ACCORDION & CAROUSEL-->
            <div class="col-md-4 bg-none">
                  <!-- we are adding the accordion ID so Bootstrap's collapse plugin detects it -->
              <div id="accordion">
                <div class="card card-warning">
                  <div class="card-header">
                    <h4 class="card-title w-100">
                      <a class="d-block w-100 text-black" data-toggle="collapse" href="#collapseTwo">
                        Regu Pemeliharaan
                      </a>
                    </h4>
                  </div>
                  <div id="collapseTwo" class="collapse" data-parent="#accordion">
                    <div class="card-body card-body-gardu p-1">
                      <ul class="users-list clearfix">
                        <li>
                          <a href="">
                          <img src="<?php echo base_url(); ?>assets/front/background/login-bg-sm.png" alt="User Image">
                          <span class="users-list-name">HAR PMO</span>
                        </a>
                        </li>
                        <li>
                          <a href="">
                          <img src="<?php echo base_url(); ?>assets/front/background/login-bg-sm.png" alt="User Image">
                          <span class="users-list-name">HAR GI</span>
                        </a>
                        </li>
                        <li>
                          <a href="">
                          <img src="<?php echo base_url(); ?>assets/front/background/login-bg-sm.png" alt="User Image">
                          <span class="users-list-name">HAR JAR</span>
                        </a>
                        </li>
                        <li>
                          <a href="">
                          <img src="<?php echo base_url(); ?>assets/front/background/login-bg-sm.png" alt="User Image">
                          <span class="users-list-name">K4L</span>
                        </a>
                        </li>
                      </ul>
                      <!-- /.users-list -->
                    </div>
                  </div>
                </div>
                
                <div class="card card-gray-dark">
                  <div class="card-header">
                    <h4 class="card-title w-100">
                      <a class="d-block w-100 text-black" data-toggle="collapse" href="#collapseOne">
                        Gardu Induk
                      </a>
                    </h4>
                  </div>
                  <div id="collapseOne" class="collapse show" data-parent="#accordion">
                    <div class="card-body card-body-gardu p-1">
                      <ul class="users-list clearfix">
                        <?php                            
                        foreach($data_gardu as $hasil){
                        ?>
                        <li>
                          <a href="<?php echo base_url() ?>AdminHome/Gardu/<?php echo $hasil->id_gardu ?>">
                          <img src="<?php echo base_url(); ?>assets/front/background/login-bg-sm.png" alt="User Image">
                          <span class="users-list-name"><?php echo $hasil->nama_gardu ?></span>
                        </a>
                        </li>
                        <?php } ?>
                      </ul>
                      <!-- /.users-list -->
                    </div>
                  </div>
                </div>                    
              </div>
            </div>
            <!-- /.col -->
          <!-- END ACCORDION & CAROUSEL-->
          <!-- PRODUCT LIST -->
          <div class="col-md-4">
            <div class="card shadow-lg">
              <div class="card-header">
                <h3 class="card-title">Rencana Kerja Harian</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0">
                <ul class="products-list product-list-in-card pl-2 pr-2">
                  <li class="item">
                    <div class="product-img">
                      <img src="<?php echo base_url(); ?>assets/back/AdminLTE/dist/img/default-150x150.png" alt="Product Image" class="img-size-50">
                    </div>
                    <div class="product-info">
                      <a href="javascript:void(0)" class="product-title">JarGI Paya Geli
                        <span class="badge badge-warning float-right">Dalam Proses</span></a>
                      <span class="product-description">
                        Pemeliharaan Genset/Performance Test Genset M4
                      </span>
                    </div>
                  </li>
                  <!-- /.item -->
                  <li class="item">
                    <div class="product-img">
                      <img src="<?php echo base_url(); ?>assets/back/AdminLTE/dist/img/default-150x150.png" alt="Product Image" class="img-size-50">
                    </div>
                    <div class="product-info">
                      <a href="javascript:void(0)" class="product-title">HAR PMO ULTG Binjai
                        <span class="badge badge-secondary float-right">Reschedule</span></a>
                      <span class="product-description">
                        Pengujian Kapasitas Baterai Bank 2 110VDC GI Namorambe
                      </span>
                    </div>
                  </li>
                  <!-- /.item -->
                  <li class="item">
                    <div class="product-img">
                      <img src="<?php echo base_url(); ?>assets/back/AdminLTE/dist/img/default-150x150.png" alt="Product Image" class="img-size-50">
                    </div>
                    <div class="product-info">
                      <a href="javascript:void(0)" class="product-title">
                        JarGI Binjai <span class="badge badge-danger float-right">
                        Dibatalkan
                      </span>
                      </a>
                      <span class="product-description">
                        Thermovisi Tiang Portal Pertama 20kV GI Binjai
                      </span>
                    </div>
                  </li>
                  <!-- /.item -->
                  <li class="item">
                    <div class="product-img">
                      <img src="<?php echo base_url(); ?>assets/back/AdminLTE/dist/img/default-150x150.png" alt="Product Image" class="img-size-50">
                    </div>
                    <div class="product-info">
                      <a href="javascript:void(0)" class="product-title">HAR JAR ULTG Binjai
                        <span class="badge badge-secondary float-right">Selesai</span></a>
                      <span class="product-description">
                        Validasi ROW dan Pengukuran Tahanan Pentanahan Tower 184-180 PSUSU-BNJAI
                      </span>
                    </div>
                  </li>
                  <!-- /.item -->
                </ul>
              </div>
              <!-- /.card-body -->
              <div class="card-footer text-center">
                <a href="javascript:void(0)" class="uppercase">Lihat Semua</a>
              </div>
              <!-- /.card-footer -->
            </div>
          </div>
          <!-- /.card -->
          <!-- /.col widget ULTG info -->
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

<script>
  $(document).ready(function() {
    $(".clickable-card").click(function() {
      var target = $(this).data("target");
      $(target).collapse('toggle');
    });
  });
</script>





</body>
</html>
