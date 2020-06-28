<!DOCTYPE html>
<html>

<head>
  <?php $this->load->view('template/head.php'); ?>
</head>

<body class="hold-transition sidebar-mini layout-fixed">

  <?php $this->load->view('template/navbar.php'); ?>
  <?php $this->load->view('template/sidebar.php'); ?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Import Excel</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <?php $this->load->view('template/breadcrumb.php'); ?>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- Main row -->
        <div class="row">
          <div class="col-4"></div>
          <div class="col-4">
            <div class="card">
              <!-- /.card-header -->
              <div class="card-body">
                <div class="row">
                  <div class="col-md-8 offset-2">
                    <?php echo $this->session->flashdata('notif') ?>
                    <form method="POST" action="<?php echo base_url() ?>import/upload" enctype="multipart/form-data">
                      <div class="form-group">
                        <input name="userfile" type="file" class="custom-file-input <?php echo form_error('datask') ? 'is-invalid' : '' ?>" id="exampleInputFile"></input>
                        <label class="custom-file-label align-center" for="exampleInputFile">Masukkan Excel</label>
                      </div>
                      <button type="submit" class="btn btn-success">Import</button>
                    </form>
                  </div>
                </div>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
        </div>
      </div>
    </section>
    <!-- /.Left col -->
  </div>
  <!-- /.row (main row) -->
  </div><!-- /.container-fluid -->
  </section>
  <!-- /.content -->
  </div>

  <?php $this->load->view('template/footer.php'); ?>
  <?php $this->load->view('template/js.php'); ?>
</body>

</html>