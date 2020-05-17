        <!-- Main Sidebar Container -->
        <aside class="main-sidebar elevation-4 sidebar-light-primary">
            <!-- Brand Logo -->
            <a href="#" class="brand-link navbar-primary">
                <img src="<?php echo base_url("dist/img/chika.jpg") ?>" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
                <span class="brand-text font-weight-light" style="color: white;">KPRI</span>
            </a>

            <!-- Sidebar -->
            <div class="sidebar">
                <!-- Sidebar user panel (optional) -->
                <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                    <div class="image">
                        <img src="<?php echo base_url("dist/img/chika.jpg") ?>" class="img-circle elevation-2" alt="User Image">
                    </div>
                    <div class="info">
                        <a href="#" class="d-block">Admin</a>
                    </div>
                </div>

                <!-- Sidebar Menu -->
                <nav class="mt-2">
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                        <li class="nav-item">
                            <a href="<?php echo base_url('admin') ?>" class="nav-link <?php if($this->uri->segment(2)=="overview"){echo "active";}?>">
                                <i class="nav-icon fas fa-home"></i>
                                <p>
                                    Home
                                </p>
                            </a>
                        </li>
                        <li class="nav-header">INFORMASI KEHADIRAN PEGAWAI</li>
                        <li class="nav-item">
                            <a href="<?php echo base_url('admin') ?>" class="nav-link <?php if($this->uri->segment(2)=="smartbook"){echo "active";}?>">
                                <i class="nav-icon fas fa-th"></i>
                                <p>
                                    Data Kehadiran Pegawai
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?php echo base_url('admin') ?>" class="nav-link <?php if($this->uri->segment(2)=="scan"){echo "active";}?>">
                                <i class="nav-icon fas fa-th"></i>
                                <p>
                                    Data Kehadiran Staff
                                </p>
                            </a>
                        </li>
                        <li class="nav-item has-treeview">
                            <a href="<?php echo base_url('admin') ?>" class="nav-link <?php if($this->uri->segment(2)=="peminjaman"){echo "active";}?>">
                                <i class="nav-icon fas fa-book"></i>
                                <p>
                                    Import Excel
                                </p>
                            </a>
                        </li>
                    </ul>
                </nav>
                <!-- /.sidebar-menu -->
            </div>
            <!-- /.sidebar -->
        </aside>