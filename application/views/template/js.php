        <!-- Control Sidebar -->
        <aside class="control-sidebar control-sidebar-dark">
            <!-- Control sidebar content goes here -->
        </aside>
        <!-- /.control-sidebar -->
        </div>
        <!-- ./wrapper -->
        <!-- jQuery -->
        <script src="<?php echo base_url('plugins/jquery/jquery.min.js') ?>"></script>
        <!-- jQuery UI 1.11.4 -->
        <script src="<?php echo base_url('plugins/jquery-ui/jquery-ui.min.js') ?>"></script>
        <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
        <script>
            $.widget.bridge('uibutton', $.ui.button)
        </script>
        <!-- Bootstrap 4 -->
        <script src="<?php echo base_url('plugins/bootstrap/js/bootstrap.bundle.min.js') ?>"></script>
        <!-- ChartJS -->
        <script src="<?php echo base_url('plugins/chart.js/Chart.min.js') ?>"></script>
        <!-- Sparkline -->
        <script src="<?php echo base_url('plugins/sparklines/sparkline.js') ?>"></script>
        <!-- JQVMap -->
        <script src="<?php echo base_url('plugins/jqvmap/jquery.vmap.min.js') ?>"></script>
        <script src="<?php echo base_url('plugins/jqvmap/maps/jquery.vmap.usa.js') ?>"></script>
        <!-- jQuery Knob Chart -->
        <script src="<?php echo base_url('plugins/jquery-knob/jquery.knob.min.js') ?>"></script>
        <!-- daterangepicker -->
        <script src="<?php echo base_url('plugins/moment/moment.min.js') ?>"></script>
        <script src="<?php echo base_url('plugins/daterangepicker/daterangepicker.js') ?>"></script>
        <!-- Tempusdominus Bootstrap 4 -->
        <script src="<?php echo base_url('plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js') ?>"></script>
        <!-- Summernote -->
        <script src="<?php echo base_url('plugins/summernote/summernote-bs4.min.js') ?>"></script>
        <!-- overlayScrollbars -->
        <script src="<?php echo base_url('plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js') ?>"></script>
        <!-- AdminLTE App -->
        <script src="<?php echo base_url('dist/js/adminlte.js') ?>"></script>
        <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
        <script src="<?php echo base_url('dist/js/pages/dashboard.js') ?>"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="<?php echo base_url('dist/js/demo.js') ?>"></script>
        <!-- DataTables -->
        <script src="<?php echo base_url('plugins/datatables/jquery.dataTables.js') ?>"></script>
        <script src="<?php echo base_url('plugins/datatables-bs4/js/dataTables.bootstrap4.js') ?>"></script>
        <script src="<?php echo base_url() . '/plugins/bs-custom-file-input/bs-custom-file-input.min.js' ?>"></script>
        <script>
            $(function() {
                $("#example1").DataTable({
                    initComplete: function() {
                        this.api().columns().every(function() {
                            var column = this;
                            var select = $('<select><option value=""></option></select>')
                                .appendTo($(column.footer()).empty())
                                .on('change', function() {
                                    var val = $.fn.dataTable.util.escapeRegex(
                                        $(this).val()
                                    );

                                    column
                                        .search(val ? '^' + val + '$' : '', true, false)
                                        .draw();
                                });

                            column.data().unique().sort().each(function(d, j) {
                                select.append('<option value="' + d + '">' + d + '</option>')
                            });
                        });
                    }
                });

                $('#example2').DataTable({
                    "paging": true,
                    "lengthChange": false,
                    "searching": false,
                    "ordering": true,
                    "info": true,
                    "autoWidth": false,
                });
            });
        </script>
        <script>
            $(document).ready(function() {
                bsCustomFileInput.init();
            });

            $(function() {
                $('.date-own').datepicker({
                    minViewMode: 2,
                    format: 'yyyy'
                })

                $('.select2').select2()

                //Initialize Select2 Elements
                $('.select2bs4').select2({
                    theme: 'bootstrap4',
                    placeholder: "Masukkan Bulan"
                })
            });
        </script>