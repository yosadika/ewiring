<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class UserHome extends MY_Controller {

	public function __construct() {
        parent::__construct();
		$this->load->library('session');
    }

	public function index()
	{
		$this->load->view('user/dashboard');
	}

	public function logout() {
        // Menghapus semua data session
        $this->session->sess_destroy();

        // Dialihkan ke halaman login
        redirect('login');
    }
}