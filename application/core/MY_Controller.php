<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MY_Controller extends CI_Controller {

    public function __construct() {
        parent::__construct();

        // Cek apakah user sudah login
        if (!$this->session->userdata('logged_in')) {
            redirect('login');
        }

        // Cek level user
        $user_level = $this->session->userdata('user_level');
        if ($user_level == 1 && $this->uri->segment(1) == 'adminhome') {
            redirect('userhome');
        } elseif ($user_level == 3 && $this->uri->segment(1) == 'userhome') {
            redirect('adminhome');
        }
    }
}
