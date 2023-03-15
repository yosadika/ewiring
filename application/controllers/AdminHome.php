<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class AdminHome extends MY_Controller {

	public function __construct() {
        parent::__construct();
		$this->load->library('session');
		$this->load->helper('url');
		$this->load->model('data_bukuwiring');
		$this->load->model('data_induk');
    }	

	public function index()
	{
		$data['data_upt']				= $this->data_induk->data_upt();
		
		$this->load->view('admin/dashboard', $data);
	}

	public function UPT($id_upt)
	{
		$id_upt = $this->uri->segment(3);

		$data['data_upt']				= $this->data_induk->get_upt($id_upt);		
		$data['count_tragi'] 			= $this->data_induk->count_data_tragi($id_upt);
		$data['count_gardu'] 			= $this->data_induk->count_data_gardu($id_upt);
		$data['count_bay'] 				= $this->data_induk->count_data_bay($id_upt);
		$data['count_pdf'] 				= $this->data_induk->count_data_pdf($id_upt);
		$data['sum'] 					= $this->data_induk->sum_bay_pdf($id_upt);
		$data['data_tragi_upt']			= $this->data_induk->data_tragi_upt($id_upt);
		$data['data_gardu_upt']			= $this->data_induk->data_gardu_upt($id_upt);

		$this->load->view('admin/upt', $data);
	}

	public function ULTG($id_tragi)
	{
		$id_tragi = $this->uri->segment(3);
		
        
		$data['data_tragi']				= $this->data_induk->get_data_tragi($id_tragi);		
		
		$nama_tragi = $data['data_tragi'][0]->nama_tragi;
		$data['jumlah_trafo']			= $this->data_induk->count_jumlah_trafo($nama_tragi);
		$data['jumlah_penghantar']		= $this->data_induk->count_jumlah_penghantar($nama_tragi);
		$data['jumlah_baylain']			= $this->data_induk->count_jumlah_baylain($nama_tragi);
		$data['data_gardu']				= $this->data_induk->get_data_gardu($nama_tragi);

		$this->load->view('admin/ultg', $data);
	}

	public function Gardu($id_gardu)
	{
		$id_gardu = $this->uri->segment(3);

		$data['data_gardu']				= $this->data_induk->get_data_gardu2($id_gardu);

		$nama_gardu = $data['data_gardu'][0]->nama_gardu;

		$data['data_buku_all']				= $this->data_induk->get_all_buku($nama_gardu);
		$data['count_sistem_dc'] 			= $this->data_induk->count_sistem_dc($nama_gardu);
		$data['count_bay_gardu'] 			= $this->data_induk->count_bay_gardu($nama_gardu);
		$data['count_alat_perekam'] 		= $this->data_induk->count_alat_perekam($nama_gardu);
		$data['cek_diameter'] 				= $this->data_induk->cek_diameter($nama_gardu);
		$data['cek_penghantar'] 			= $this->data_induk->cek_penghantar($nama_gardu);
		$data['cek_trafo'] 					= $this->data_induk->cek_trafo($nama_gardu);
		$data['cek_kopel'] 					= $this->data_induk->cek_kopel($nama_gardu);
		$data['cek_kapasitor'] 				= $this->data_induk->cek_kapasitor($nama_gardu);
		$data['cek_busbar'] 				= $this->data_induk->cek_busbar($nama_gardu);
		$data['count_wiring_diameter'] 		= $this->data_induk->count_wiring_diameter($nama_gardu);
		$data['count_wiring_penghantar'] 	= $this->data_induk->count_wiring_penghantar($nama_gardu);
		$data['count_wiring_trafo'] 		= $this->data_induk->count_wiring_trafo($nama_gardu);
		$data['count_wiring_kopel'] 		= $this->data_induk->count_wiring_kopel($nama_gardu);
		$data['count_wiring_kapasitor'] 	= $this->data_induk->count_wiring_kapasitor($nama_gardu);
		$data['count_wiring_busbar'] 		= $this->data_induk->count_wiring_busbar($nama_gardu);
		$data['count_wiring_trafohv'] 		= $this->data_induk->count_wiring_trafohv($nama_gardu);
		$data['count_wiring_trafolv'] 		= $this->data_induk->count_wiring_trafolv($nama_gardu);

		$data['data_buku_diameter']			= $this->data_induk->data_buku_diameter($nama_gardu);
		$data['data_buku_penghantar']		= $this->data_induk->data_buku_penghantar($nama_gardu);
		$data['data_buku_trafo_hv']			= $this->data_induk->data_buku_trafo_hv($nama_gardu);
		$data['data_buku_trafo_lv']			= $this->data_induk->data_buku_trafo_lv($nama_gardu);
		$data['data_buku_kopel']			= $this->data_induk->data_buku_kopel($nama_gardu);
		$data['data_buku_kapasitor']		= $this->data_induk->data_buku_kapasitor($nama_gardu);
		$data['data_buku_busbar']			= $this->data_induk->data_buku_busbar($nama_gardu);
		$data['data_buku_acdc']				= $this->data_induk->data_buku_acdc($nama_gardu);
		$data['data_buku_alatperekam']		= $this->data_induk->data_buku_alatperekam($nama_gardu);



		$this->load->view('admin/gardu', $data );
	}

	public function wiring() {
		
		$data['data_wiring']				= $this->data_bukuwiring->get_all();

		$this->load->view('admin/bukuwiring', $data);

	}

	public function terimawiring() {
		
		$data['data_wiring']				= $this->data_bukuwiring->get_all_unapprove();

		$this->load->view('admin/admin_approve_wiring', $data);

	}

	public function edit_wiring($id_pdf)
	{
		
		$id_pdf = $this->uri->segment(3);

		$data = array(		
			
			'data_wiring' 	=> $this->data_bukuwiring->edit_wiring($id_pdf),
			'data_merk' 	=> $this->data_bukuwiring->data_merk_get(),
			'data_upt' 		=> $this->data_induk->data_upt(),

		);

		$this->load->view('admin/edit_bukuwiring', $data);
		
	}

	public function update_wiring()
	{
		
		$id['id_pdf'] = $this->input->post("id_pdf");
		$id_pdf = $this->input->post("id_pdf");
		$status = '0';

		$nama_gardu = $this->input->post('nama_gardu');
		$nama_bay = $this->input->post('nama_bay');
		$judul_pdf = $this->input->post('judul_pdf');
		$merk_peralatan = $this->input->post('merk_peralatan');
		$nama_upt = $this->input->post('nama_upt');
		$nama_tragi = $this->input->post('nama_tragi');
		$level_tegangan = $this->input->post('radioTeganganperalatan');
		$kategori_peralatan = $this->input->post('radioKategoriperalatan');
		$kategori_bay = $this->input->post('radioKategorilanjutan');
		$kategori_wiring = $this->input->post('radioKategoriwiring');
		$sub_kategori_wiring = $this->input->post('radioSubkategoriwiring');
		$keterangan = $this->input->post('keterangan');
		$id_user_update = $this->input->post('id_user_update');
		$user_update = $this->input->post('user_update');
		

		// Set upload directory
		$upload_dir = './assets/uploads/bukuwiring/' . $nama_gardu . '/';
		if (!file_exists($upload_dir)) {
			mkdir($upload_dir, 0777, true);
		}
	
		// Set file name and upload path
		$config['file_name'] = $nama_bay . '_' . $sub_kategori_wiring . '_' . date('dmY') . '.pdf';
		$config['upload_path'] = './../ewiring/' . $upload_dir;
		$config['allowed_types'] = 'pdf';
		$config['remove_spaces'] = TRUE;
		$config['max_size'] = 1024 * 100; // 100 MB
		$config['overwrite'] = TRUE; // Overwrite file with same name

		$file_name = str_replace(' ', '_', $config['file_name']); //Config pdf name for db
	
		// Load upload library and initialize with config
		$this->load->library('upload', $config);
	
		// Check if file is uploaded successfully
		if ($this->upload->do_upload('pdf_file')) {
			// File uploaded successfully
			$upload_data = $this->upload->data();
			$data = array(
				'status' => $status,
				'judul_pdf' => $judul_pdf,
				'merk_peralatan' => $merk_peralatan,
				'nama_upt' => $nama_upt,
				'nama_tragi' => $nama_tragi,
				'nama_gardu' => $nama_gardu,
				'nama_bay' => $nama_bay,
				'level_tegangan' => $level_tegangan,
				'kategori_peralatan' => $kategori_peralatan,
				'kategori_bay' => $kategori_bay,
				'kategori_wiring' => $kategori_wiring,
				'sub_kategori_wiring' => $sub_kategori_wiring,
				'keterangan' => $keterangan,
				'link_pdf' => base_url('assets/uploads/bukuwiring/' . $nama_gardu . '/' .  $file_name),
				'id_user_update' => $id_user_update,
				'user_update' => $user_update,
			);

			// Save PDF information to database
			$this->load->model('Data_bukuwiring');
			if ($this->Data_bukuwiring->update_wiring($data, $id)) {
				$this->session->set_flashdata('success', 'Data berhasil disimpan, buku wiring tersedia sampai perubahan disetujui admin');
			} else {
				$this->session->set_flashdata('gagalSimpan', 'Data tidak berhasil disimpan, silahkan coba lagi');
			}
			redirect('adminhome/edit_wiring/' . $id_pdf);
		} else {			
			$this->session->set_flashdata('gagalUpload', 'PDF tidak berhasil di Upload, silahkan coba lagi');
			redirect('adminhome/edit_wiring/' . $id_pdf);
		}	
		
	}


	public function hapus_wiring($id_pdf)
	{
		$this->data_bukuwiring->hapus_wiring($id_pdf);
        $this->session->set_flashdata('success', 'Data berhasil dihapus');

		//redirect
		redirect('adminhome/terimawiring');
		
	}

	public function terima_wiring($id_pdf)
	{
		$status = '1';

		$data = array(
			'status' => $status,
		);

		$this->data_bukuwiring->terima_wiring($data, $id_pdf);
        $this->session->set_flashdata('success', 'Buku Wiring sudah tersedia untuk semua user');

		//redirect
		redirect('adminhome/terimawiring');
		
	}

	public function logout() {
        // Menghapus semua data session
        $this->session->sess_destroy();

        // Dialihkan ke halaman login
        redirect('login');
    }

	public function tambahWiring() {

		

		$data = array(

			'data_merk' 	=> $this->data_bukuwiring->data_merk_get(),
			'data_upt' 		=> $this->data_induk->data_upt(),			
		);

		$this->load->view('admin/tambah_bukuwiring', $data);
	}

	public function tambahdatainduk() {

		

		$data = array(

			'data_merk' 	=> $this->data_bukuwiring->data_merk_get(),
			'data_upt' 		=> $this->data_induk->data_upt(),			
		);

		$this->load->view('admin/tambah_datainduk', $data);
	}

	public function get_tragi_by_upt($kode_upt)
    {
        $datatragi = $this->data_induk->get_tragi_by_upt($kode_upt);
        echo json_encode($datatragi);
    }

	public function get_gardu_by_tragi($kode_tragi)
	{
		$datagardu = $this->data_induk->get_gardu_by_tragi($kode_tragi);
		echo json_encode($datagardu);
	}

	public function get_bay_by_gardu($kode_gardu)
	{
		$databay = $this->data_induk->get_bay_by_gardu($kode_gardu);
		echo json_encode($databay);
	}

	public function tambahBuku() {
		// Get form input values
		$nama_gardu = $this->input->post('nama_gardu');
		$nama_bay = $this->input->post('nama_bay');
		$judul_pdf = $this->input->post('judul_pdf');
		$merk_peralatan = $this->input->post('merk_peralatan');
		$nama_upt = $this->input->post('nama_upt');
		$nama_tragi = $this->input->post('nama_tragi');
		$level_tegangan = $this->input->post('radioTeganganperalatan');
		$kategori_peralatan = $this->input->post('radioKategoriperalatan');
		$kategori_bay = $this->input->post('radioKategorilanjutan');
		$kategori_wiring = $this->input->post('radioKategoriwiring');
		$sub_kategori_wiring = $this->input->post('radioSubkategoriwiring');
		$keterangan = $this->input->post('keterangan');
		$id_user = $this->input->post('id_user');
		$user_upload = $this->input->post('user_upload');
	
		// Set upload directory
		$upload_dir = './assets/uploads/bukuwiring/' . $nama_gardu . '/';
		if (!file_exists($upload_dir)) {
			mkdir($upload_dir, 0777, true);
		}
	
		// Set file name and upload path
		$config['file_name'] = $nama_bay . '_' . $sub_kategori_wiring . '_' . date('dmY') . '.pdf';
		$config['upload_path'] = './../ewiring/' . $upload_dir;
		$config['allowed_types'] = 'pdf';
		$config['remove_spaces'] = TRUE;
		$config['max_size'] = 1024 * 100; // 100 MB
		$config['overwrite'] = TRUE; // Overwrite file with same name

		$file_name = str_replace(' ', '_', $config['file_name']); //Config pdf name for db
	
		// Load upload library and initialize with config
		$this->load->library('upload', $config);
	
		// Check if file is uploaded successfully
		if ($this->upload->do_upload('pdf_file')) {
			// File uploaded successfully
			$upload_data = $this->upload->data();
			$data = array(
				'judul_pdf' => $judul_pdf,
				'merk_peralatan' => $merk_peralatan,
				'nama_upt' => $nama_upt,
				'nama_tragi' => $nama_tragi,
				'nama_gardu' => $nama_gardu,
				'nama_bay' => $nama_bay,
				'level_tegangan' => $level_tegangan,
				'kategori_peralatan' => $kategori_peralatan,
				'kategori_bay' => $kategori_bay,
				'kategori_wiring' => $kategori_wiring,
				'sub_kategori_wiring' => $sub_kategori_wiring,
				'keterangan' => $keterangan,
				'link_pdf' => base_url('assets/uploads/bukuwiring/' . $nama_gardu . '/' .  $file_name),
				'id_user' => $id_user,
				'user_upload' => $user_upload,
			);

			// Save PDF information to database
			$this->load->model('Data_bukuwiring');
			if ($this->Data_bukuwiring->simpan_wiring($data)) {
				$this->session->set_flashdata('success', 'Data berhasil disimpan');
			} else {
				$this->session->set_flashdata('gagalSimpan', 'Data tidak berhasil disimpan, silahkan coba lagi');
			}
			redirect('adminhome/tambahwiring');
		} else {			
			$this->session->set_flashdata('gagalUpload', 'PDF tidak berhasil di Upload, silahkan coba lagi');
			redirect('adminhome/tambahwiring');
		}	

	}
	


	

}