<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class AdminBukuWiring extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        //load library form validasi
        $this->load->library('form_validation');
        //load model admin
        $this->load->model('data_pegawai');
        //load model buku wiring		
		$this->load->model('data_bukuwiring');
    }

	public function index()
	{
        if($this->data_pegawai->logged_id())
			{
				if($this->session->userdata('user_level') == 3)
	            {
                $id_pdf = 1;
                $data = array(
        
                    'title' 	        => 'Data Buku Wiring',
                    'data_bukuwiring'	=> $this->data_bukuwiring->get_all(),
                    'edit_bukuwiring'   => $this->data_bukuwiring->edit($id_pdf)
        
                );
				//jika memang session adalah admin, maka redirect ke halaman pdf
				$this->load->view('admin/admin_bukuwiring', $data);
				} else {
					redirect("userhome");
				}

			} else {
                redirect("login");
            }
	}

	public function logout(){
		$this->session->sess_destroy();
		redirect('login');
	}
}