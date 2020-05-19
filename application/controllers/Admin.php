<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends MY_Controller {
	public function index()
	{
		$this->load->view('admin/overview');
	}

	public function daftar_staff(){
		$this->load->view('admin/daftar_staff');
	}

	public function detail_staff()
	{
		$this->load->view('admin/detail_staff');
	}
}
