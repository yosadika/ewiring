<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        //load library form validasi
        $this->load->library('form_validation');
        //load model admin
        $this->load->model('data_pegawai');
    }

	public function index()
	{
		
			if($this->data_pegawai->logged_id())
			{
				if($this->session->userdata('user_level') == 3)
	            {
				//jika memang session sudah terdaftar, maka redirect ke halaman dahsboard
				redirect("adminhome");
				} else {
					redirect("userhome");
				}

			}else{

				//jika session belum terdaftar

				//set form validation
	            $this->form_validation->set_rules('username', 'Username', 'required');
	            $this->form_validation->set_rules('password', 'Password', 'required');

	            //set message form validation
	            $this->form_validation->set_message('required', '<div class="alert alert-danger" style="margin-top: 3px">
	                <div class="header"><b><i class="fa fa-exclamation-circle"></i> {field}</b> harus diisi</div></div>');

	            //cek validasi
				if ($this->form_validation->run() == TRUE) {

				//get data dari FORM
	            $username = $this->input->post("username", TRUE);
	            $password = $this->input->post('password', TRUE);
				$remember = $this->input->post('remember');	            

				// check remember me 
				if($remember){
					//set remember me cookie
					$this->input->set_cookie('username', $username, 86500);
					$this->input->set_cookie('password', $password, 86500);
				}
	            //checking data via model
	            $checking = $this->data_pegawai->check_login('data_pegawai', array('username' => $username), array('password' => $password));
	            
	            //jika ditemukan, maka create session
	            if ($checking != FALSE) {
	                foreach ($checking as $apps) {

	                    $session_data = array(
	                        'user_id'   	=> $apps->id_user,
							'user_nip' 		=> $apps->nip,
	                        'user_name' 	=> $apps->username,
	                        'user_password' => $apps->password,
							'user_nama' 	=> $apps->nama,
							'user_level'	=> $apps->level,
							'logged_in' => TRUE
	                    );
	                    //set session userdata
	                    $this->session->set_userdata($session_data);

	                    if($this->session->userdata('user_level') == 3)
						{
						//jika memang session sudah terdaftar, maka redirect ke halaman dahsboard
						redirect("adminhome");
						} else {
							redirect("userhome");
						}

	                }
	            }else{

	            	$data['error'] = '<div class="alert alert-danger" style="margin-top: 3px">
	                	<div class="header"><b><i class="fa fa-exclamation-circle"></i> ERROR</b> NIP atau password salah!</div></div>';
	            	$this->load->view('login_view', $data);
	            }

	        }else{

	            $this->load->view('login_view');
	        }

		}

	}
}
