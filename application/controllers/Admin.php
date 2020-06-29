<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends MY_Controller {
	public function index()
	{
		$this->load->view('admin/overview');
	}

	public function daftar_staff(){
		// $data['absen_karyawan'] = $this->db->query('select *, COUNT(jam_kerja) as jam_kerja , COUNT(masuk) as masuk from absen_karyawan where jam_kerja > "1,00" group by no_staff') ->result();
		$data['absen_karyawan'] = $this->db->query(
			'select *, 
			SUM(CASE WHEN jam_kerja > "1,00" THEN 1 ELSE 0 END) AS jam_kerja,
			
			SUM(CASE WHEN masuk > "081500" THEN 1 ELSE 0 END) AS masuk,
			SUM(CASE WHEN keluar < "160000" AND keluar != "000000" AND hari != "Jumat" THEN 1 
			WHEN keluar < "163000" AND keluar != "000000" AND hari = "Jumat" THEN 1
			ELSE 0 END) AS keluar
			from absen_karyawan group by no_staff'
			) ->result();


		$this->load->view('admin/daftar_staff',$data);
	}

	public function detail_staff()
	{
		$this->load->view('admin/detail_staff');
	}
}
