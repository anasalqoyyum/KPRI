<!DOCTYPE html>
<html lang="en">
<head>
<?php $this->load->view('template/head.php'); ?>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
    <?php $this->load->view('template/navbar.php'); ?>
    <?php $this->load->view('template/sidebar.php'); ?>
    
    <div class="content-wrapper">
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0 text-dark">Data Kehadiran Ricky</h1>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div>
        </div>

        <section class="content">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <a href="<?php echo base_url("admin/daftar_staff") ?>" class="btn btn-primary"><i class="fas fa-arrow-left fa-fw"></i>&nbsp;Kembali</a>
                            <a href="<?php echo base_url("export/export") ?>" class="btn btn-primary"><i class="fas fa-print"></i>&nbsp;Print</a>
                        </div>
                        <div class="card-body">
                            <div class="col-6">
                            <form id="myForm" action="" method="post" enctype="multipart/form-data">
                                    <div class="form-group">
                                        <label for="nama">Nama</label>
                                        <input class="form-control" type="text" name="nama" placeholder="" value="" disabled="" />
                                    </div>
                                    <div class="form-group">
                                        <label for="nama">Jabatan</label>
                                        <input class="form-control" type="text" name="nama" placeholder="" value="" disabled="" />
                                    </div>
                                    <div class="form-group">
                                        <label for="nama">Bulan</label>
                                        <input class="form-control" type="text" name="nama" placeholder="" value="" disabled="" />
                                    </div>
                                    <div class="form-group">
                                        <label for="nama">Tahun</label>
                                        <input class="form-control" type="text" name="nama" placeholder="" value="" disabled="" />
                                    </div>
                            </form>
                            </div>
                            <table id="example1" class="table table-bordered table-striped">
                                <thead style="background-color: white;">
                                    <tr>
                                        <th>NO</th>
                                        <th>DATANG TERLAMBAT</th>
                                        <th>PULANG AWAL</th>
                                        <th>PULANG TERLAMBAT</th>
                                        <th>TIDAK MASUK</th>
                                    </tr>
                                </thead>
                                <style>
                                    tbody.belang tr:nth-child(even) {
                                        background-color: white;
                                    }
                                </style>
                                <div>
                                    <tbody class="belang">
                                        <!-- <?php foreach ($data_responden as $d) {
                                        ?>
                                        <tr>
                                            <td><?php echo  $d->ID; ?></td>
                                            <td><?php echo  $d->Umur; ?></td>
                                            <td><?php echo  $d->Jenis_kelamin; ?></td>
                                            <td><?php echo  $d->Pendidikan; ?></td>
                                            <td><?php echo  $d->Pekerjaan; ?></td>
                                        </tr>
                                        <?php } ?> -->
                                    </tbody>
                                </div>
                                <tfoot style="background-color: white;">
                                    <tr>
                                        <th>NO</th>
                                        <th>DATANG TERLAMBAT</th>
                                        <th>PULANG AWAL</th>
                                        <th>PULANG TERLAMBAT</th>
                                        <th>TIDAK MASUK</th>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <?php $this->load->view('template/footer.php'); ?>
    <?php $this->load->view('template/js.php'); ?>
</body>
</html>