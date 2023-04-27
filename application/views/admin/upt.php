<!DOCTYPE html>
<html lang="en">
<head>
<?php $this->load->view('admin/admin_layout_head'); ?>

<style>
  .progress-text {
      position: absolute;
      left: 50%;
      transform: translate(-50%, -50%);
  }

  .text-black{    
    color: black;
  }

  .text-white{    
    color: white;
  }
  
  .progress{
    background-color: #adb5bd;
    border-radius:5px;
  }

  .card-margin-botton{
    margin-bottom: 0px;
  }

  .card-body-padding{
    padding: 0px;
  }

  .card-title-font-size{
    font-size: 12pt;
  }

  .card-header-padding-topbottom{
    padding: .5rem 1.25rem;
  }

  .card-border-radius{
    border-radius: 0px;
  }

  .col-md-auto-progress{
    padding-right: 0px;
    padding-left: 0px;
    margin-top: 20pt;
  }

  .card-body-subcollapse{
    padding: 10px;
  }

  .badge-submenu{
    padding: 5px;
  }

  .h5-extra{
    font-size:12pt;
  }

  .col-1{
    max-width: 50px;
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
        <div class="row">          
          <div class="col-md-4">
            <!-- Widget: UPT Medan -->
            <div class="card card-widget widget-user-2 clickable-card">
              <!-- Add the bg color to the header using any of the bg-* classes -->
              <?php                            
                foreach($data_upt as $hasil){
              ?>
              <div class="widget-user-header bg-info" data-toggle="collapse" data-target="#card-1-content">   
                <a href="#" class="row"> 
                  <div class="col">           
                    <div class="widget-user-image">
                      <img class="img-circle elevation-2" src="<?php echo base_url(); ?><?php echo $hasil->link_foto_upt ?>" alt="User Avatar">
                    </div>
                    <!-- /.widget-user-image -->
                    <h3 class="widget-user-username">UPT <?php echo $hasil->nama_upt ?></h3>
                    <h5 class="widget-user-desc h5-extra"><?php echo $hasil->keterangan_upt ?></h5>
                  </div>
                </a>                
              </div>               
              <?php } ?>          
          
              <div class="card-footer p-0 collapse show" id="card-1-content">             
                <!-- /.begin card widget UPT -->
                <div class="card-body card-body-padding">
                <!-- we are adding the accordion ID so Bootstrap's collapse plugin detects it -->
                <div id="accordion">
                  <div class="card card-margin-botton card-border-radius">
                    <div class="card-header card-header-padding-topbottom">
                      <h4 class="card-title w-100 card-title-font-size">
                        <a class="d-block w-100 text-black" data-toggle="collapse" href="#collapseOne">
                          ULTG <span class="float-right badge bg-secondary"><?php echo $count_tragi; ?></span>
                        </a>
                      </h4>
                    </div>
                    <div id="collapseOne" class="collapse" data-parent="#accordion">
                      <div class="card-body card-body-subcollapse">
                      <?php                            
                        foreach($data_tragi_upt as $hasil){
                      ?>
                      <a href="<?php echo base_url() ?>AdminHome/ULTG/<?php echo $hasil->id_tragi ?>" class="btn btn-xs bg-primary"><?php echo $hasil->nama_tragi ?></a>
                      <?php } ?>  
                    </div>
                    </div>
                  </div>
                  <div class="card card-margin-botton card-border-radius">
                    <div class="card-header card-header-padding-topbottom">
                      <h4 class="card-title w-100 card-title-font-size">
                        <a class="d-block w-100 text-black" data-toggle="collapse" href="#collapseTwo">
                          Gardu <span class="float-right badge bg-info"><?php echo $count_gardu; ?></span>
                        </a>
                      </h4>
                    </div>
                    <div id="collapseTwo" class="collapse" data-parent="#accordion">
                    <div class="card-body card-body-subcollapse">
                    <?php                            
                      foreach($data_gardu_upt as $hasil){
                    ?>
                    <a href="<?php echo base_url() ?>AdminHome/gardu/<?php echo $hasil->id_gardu ?>" class="btn btn-xs bg-info"><?php echo $hasil->nama_gardu ?></a>
                    <?php } ?>
                    </div>
                    </div>
                  </div>
                  <div class="card card-margin-botton card-border-radius">
                    <div class="card-header card-header-padding-topbottom">
                      <h4 class="card-title w-100 card-title-font-size">
                        <span class="d-block w-100 text-black">
                          Bay <span class="float-right badge bg-gray-dark"><?php echo $count_bay; ?></span>
                        </span>
                      </h4>
                    </div>
                  </div>
                  <div class="card card-margin-botton card-border-radius">
                    <div class="card-header card-header-padding-topbottom">
                      <h4 class="card-title w-100 card-title-font-size">
                        <span class="d-block w-100 text-black">
                          Buku Wiring <span class="float-right badge bg-danger text-white"><?php echo $count_pdf; ?></span>
                        </span>
                      </h4>
                      <div class="col progress col-md-auto-progress">
                      <?php
                      if ($count_pdf != 0){                        
                        $percentage = ($count_pdf / $sum) * 100;
                        $aria_valuenow = round($percentage);
                        echo                    
                        '<div class="progress-bar bg-info progress-bar-striped progress-bar-animated" 
                              role="progressbar" 
                              aria-valuenow="'. $aria_valuenow.'" 
                              aria-valuemin="0" 
                              aria-valuemax="100" 
                              style="width: '. $percentage .'%">
                              <span class="progress-text">'. $aria_valuenow . '% of ' . $sum . '</span>
                          </div>';
                        } else {
                          echo                    
                        '<div class="progress-bar bg-info progress-bar-striped progress-bar-animated" 
                              role="progressbar" 
                              aria-valuenow="0" 
                              aria-valuemin="0" 
                              aria-valuemax="100" 
                              style="width: 0%">
                              <span class="progress-text">0% of ~</span>
                          </div>';
                        }
                      ?>

                      </div>
                    </div>                
                  </div>              
                </div>
              </div>
              <!-- /.end card widget UPT -->
            </div>
            <!-- /.widget-user -->
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
