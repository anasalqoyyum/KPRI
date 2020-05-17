<html>

<head>
    <?php $this->load->view('template/head.php'); ?>
</head>

<body class="hold-transition login-page">
    <div class="login-box">
        <div class="login-logo">
            <a><b>Sistem</b>Kehadiran</a>
        </div>
        <?php if ($this->session->flashdata('message')) : ?>
            <div class="alert alert-danger" role="alert">
                <?php echo $this->session->flashdata('message'); ?>
            </div>
        <?php endif; ?>
        <!-- /.login-logo -->
        <div class="card">
            <div class="card-body login-card-body">
                <form action="<?php echo base_url('auth/login') ?>" method="post">
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" placeholder="Username" name="username">
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-envelope"></span>
                            </div>
                        </div>
                    </div>
                    <div class="input-group mb-3">
                        <input type="password" class="form-control" placeholder="Password" name="password">
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-lock"></span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <!-- /.col -->
                        <div class="col-12">
                            <button type="submit" class="btn btn-primary btn-block">Login</button>
                        </div>
                        <!-- /.col -->
                    </div>
                </form>
            </div>
            <!-- /.login-card-body -->
        </div>
    </div>
    <!-- /.login-box -->
    <?php $this->load->view('template/js.php'); ?>
</body>

</html>