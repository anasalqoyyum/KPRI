<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends MY_Controller {
	public function index()
	{
		$this->load->view('admin/overview');
	}

	public function daftar_staff(){
		$data['absen_karyawan'] = $this->db->query('select *, COUNT(tipe) as tipe from absen_karyawan where tipe = "Hari Kerja" group by no_staff') ->result();
		$this->load->view('admin/daftar_staff',$data);
	}

	public function detail_staff()
	{
		$this->load->view('admin/detail_staff');
	}
}
