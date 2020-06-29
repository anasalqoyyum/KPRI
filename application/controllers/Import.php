<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Import extends CI_Controller
{

    public function index()
    {
        $this->load->view('import');
    }

    public function upload()
    {
        // Load plugin PHPExcel nya
        include APPPATH . 'third_party/PHPExcel/PHPExcel.php';

        $config['upload_path'] = realpath('excel');
        $config['allowed_types'] = 'xlsx|xls|csv';
        $config['max_size'] = '10000';
        $config['encrypt_name'] = true;

        $this->load->library('upload', $config);

        if (!$this->upload->do_upload()) {

            //upload gagal
            $this->session->set_flashdata('notif', '<div class="alert alert-danger"><b>PROSES IMPORT GAGAL!</b> ' . $this->upload->display_errors() . '</div>');
            //redirect halaman
            redirect('import/');
        } else {

            $data_upload = $this->upload->data();

            $excelreader     = new PHPExcel_Reader_Excel2007();
            $loadexcel         = $excelreader->load('excel/' . $data_upload['file_name']); // Load file yang telah diupload ke folder excel
            $sheet             = $loadexcel->getActiveSheet()->toArray(null, true, true, true);

            $data = array();

            $numrow = 1;
            foreach ($sheet as $row) {
                if ($numrow > 2) {
                    array_push($data, array(
                        'nama' => $row['A'],
                        'no_staff'      => $row['B'],
                        'departemen'      => $row['C'],
                        'tanggal'      => $row['D'],
                        'hari'      => $row['E'],
                        'tipe'      => $row['F'],
                        'jadwal'      => $row['G'],
                        'tgl_masuk'      => $row['H'],
                        'masuk'      => $row['I'],
                        'tgl_keluar'      => $row['J'],
                        'keluar'      => $row['K'],
                        'lembur_masuk'      => $row['L'],
                        'lembur_keluar'      => $row['M'],
                        'jam_kerja'      => $row['N'],
                        'jam_lembur'      => $row['O'],
                        'jam_kurang'      => $row['P'],
                        'jam_terlambat'      => $row['Q'],
                        'jam_pulangcpt'      => $row['R'],
                        'jam_absen'      => $row['S'],
                        'hari_lupa_io'      => $row['T'],
                        'jam_ijin'      => $row['U'],
                    ));
                }
                $numrow++;
            }
            $this->db->insert_batch('absen_karyawan', $data);
            //delete file from server
            unlink(realpath('excel/' . $data_upload['file_name']));

            //upload success
            $this->session->set_flashdata('notif', '<div class="alert alert-success"><b>PROSES IMPORT BERHASIL!</b> Data berhasil diimport!</div>');
            //redirect halaman
            redirect('import/');
        }
    }
}
