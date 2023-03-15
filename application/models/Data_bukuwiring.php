<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Data_bukuwiring extends CI_model{
	

	public function get_all()
	{
		$query = $this->db->select("pdf.*")
                 ->from('pdf')
				 ->where("status", '1' )
				 ->order_by('id_pdf', 'ASC')
				 ->get();
		return $query->result();
    }

	public function get_all_unapprove()
	{
		$query = $this->db->select("pdf.*")
                 ->from('pdf')
				 ->where("status", '0' )
				 ->order_by('id_pdf', 'ASC')
				 ->get();
		return $query->result();
    }
    
    public function get_all_view()
	{
		$query = $this->db->select("*")
                 ->from('pdf')                  
				 ->order_by('id_pdf', 'ASC')
				 ->get();
		return $query->result();
    }

	public function data_merk_get()
	{
		$query = $this->db->select("*")
                 ->from('merk_peralatan')                  
				 ->order_by('id_merk', 'ASC')
				 ->get();
		return $query->result();
    }

	public function simpan_wiring($data)
	{
		
		$query = $this->db->insert("pdf", $data);

		if($query){
			return true;
		}else{
			return false;
		}

	}

	public function edit_wiring($id_pdf)
	{
		
		$query = $this->db
				->where("id_pdf", $id_pdf )
				->get("pdf");

		if($query){
			return $query->row();
		}else{
			return false;
		}

	}

	public function update_wiring($data, $id)
	{
		

		$query = $this->db->update("pdf", $data, $id);

		if($query){
			return true;
		}else{
			return false;
		}
 
	}

	public function tambahUPT($data)
	{
		

		$query = $this->db->insert("upt", $data);

		if($query){
			return true;
		}else{
			return false;
		}
 
	}

	public function tambahtragi($data)
	{
		

		$query = $this->db->insert("tragi", $data);

		if($query){
			return true;
		}else{
			return false;
		}
 
	}

	public function hapus_wiring($id_pdf)
	{
		// Ambil path file dari database
		$query = $this->db->get_where('pdf', array('id_pdf' => $id_pdf));
		$row = $query->row();
		$path = $row->link_pdf;
		
		// Konversi URL menjadi path file
		$path = realpath($_SERVER["DOCUMENT_ROOT"] . parse_url($path, PHP_URL_PATH));
		
		// Hapus file dari folder
		if (file_exists($path)) {
			unlink($path);
		}
	
		// Hapus data dari database
		$this->db->where('id_pdf', $id_pdf);
		$this->db->delete('pdf');

		if($query){
			return true;
		}else{
			return false;
		}

	}

	public function terima_wiring($data, $id_pdf)
	{
		$query = $this->db->where('id_pdf', $id_pdf)->update("pdf", $data);

		if($query){
			return true;
		}else{
			return false;
		}
 
	}

	public function get_id_upt_by_name($nama_upt) {
        $this->db->select('id_upt');
        $this->db->from('upt');
        $this->db->where('nama_upt', $nama_upt);
        $query = $this->db->get();
        $result = $query->row();
        if($result) {
            return $result->id_upt;
        } else {
            return false;
        }
    }
	
	




}