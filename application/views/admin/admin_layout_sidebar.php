<aside class="main-sidebar sidebar-dark-primary elevation-4">
<!-- Brand Logo -->
<a href="#" class="brand-link">
    <img src="<?php echo base_url(); ?>assets/back/AdminLTE/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
    <span class="brand-text font-weight-light">Admin Board</span>
</a>

<!-- Sidebar -->
<div class="sidebar">
    <!-- Sidebar user panel (optional) -->
    <div class="user-panel mt-3 pb-3 mb-3 d-flex">
    <div class="image">
        <img src="<?php echo base_url(); ?>assets/back/AdminLTE/dist/img/default.jpg" class="img-circle elevation-2" alt="User Image">
    </div>
    <div class="info">
        <a href="#" class="d-block"><?php echo $this->session->userdata('user_nama') ?></a>
    </div>
    </div>

    <!-- Sidebar Menu -->
    <nav class="mt-2">
    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
        <!-- Add icons to the links using the .nav-icon class
            with font-awesome or any other icon font library -->
        <li class="nav-item">
        <a href="<?php echo base_url() ?>" class="nav-link">
            <i class="nav-icon fas fa-th"></i>
            <p>
            Dashboard
            </p>
        </a>
        </li>
        <li class="nav-item has-treeview">
            <a class="nav-link">
                <i class="nav-icon fas fa-layer-group"></i>
                <p>
                eWiring
                <i class="right fas fa-angle-left"></i>
                </p>
            </a>
            <ul class="nav nav-treeview">
                <li class="nav-item">
                <a href="<?php echo base_url() ?>adminhome/wiring" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Buku Wiring</p>
                </a>
                </li>
                <li class="nav-item">
                <a href="#" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Laporan Pemeliharaan</p>
                </a>
                </li>
            </ul>
        </li>
        <li class="nav-item has-treeview">
            <a href="#" class="nav-link active">
                <i class="nav-icon fas fa-edit"></i>
                <p>
                Tambah Data
                <i class="fas fa-angle-left right"></i>
                </p>
            </a>
            <ul class="nav nav-treeview">
                <li class="nav-item">
                    <a href="<?php echo base_url() ?>AdminHome/tambahWiring" class="nav-link">
                        <i class="far fa-circle nav-icon"></i>
                        <p>Buku Wiring</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="far fa-circle nav-icon"></i>
                        <p>Laporan Pemeliharaan</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>
                        Data Induk
                        <i class="right fas fa-angle-left"></i>
                    </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                            <i class="far fa-dot-circle nav-icon"></i>
                            <p>UPT</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                            <i class="far fa-dot-circle nav-icon"></i>
                            <p>ULTG</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                            <i class="far fa-dot-circle nav-icon"></i>
                            <p>Gardu</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                            <i class="far fa-dot-circle nav-icon"></i>
                            <p>Bay</p>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </li>
        <li class="nav-item">
            <a href="<?php echo base_url() ?>index.php/User" class="nav-link">
                <i class="nav-icon fas fa-user"></i>
                <p>
                User
                </p>
            </a>
        </li>
    </ul>
    </nav>
    <!-- /.sidebar-menu -->
</div>
<!-- /.sidebar -->
</aside>

<style>
    .sidebar-bg-info{
        background-color: #17a2b8;
    }
</style>