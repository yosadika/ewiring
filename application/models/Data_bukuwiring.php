<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Data_bukuwiring extends CI_model{
	

	public function get_all()
	{
		$query = $this->db->select("pdf.*")
                 ->from('pdf')
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

	public function hapus_wiring($id)
	{
		$query = $this->db->delete("pdf", $id);

		if($query){
			return true;
		}else{
			return false;
		}

	}

	
	




}