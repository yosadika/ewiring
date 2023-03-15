<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Data_induk extends CI_model{

    private $_table = "upt";
    public $id_upt;

	public function data_pdf()
	{
		return $this->db->get('pdf')->result_array();
    }

	public function data_bay()
	{
		return $this->db->get('bay')->result_array();
    }
	
	public function data_gardu()
	{
		return $this->db->get('gardu')->result_array();
    }
	
	public function data_tragi()
	{
		return $this->db->get('tragi')->result_array();
    }

	public function get_tragi_by_upt($kode_upt)
	{
		$query = $this->db->select("*")
				 ->where('kode_upt', $kode_upt)
                 ->from('tragi')       
				 ->get();
		return $query->result();
    }

	public function get_gardu_by_tragi($kode_tragi)
	{
		$query = $this->db->select("*")
				 ->where('kode_tragi', $kode_tragi)
                 ->from('gardu')       
				 ->get();
		return $query->result();
	}

	public function get_bay_by_gardu($kode_gardu)
	{
		$query = $this->db->select("*")
				 ->where('kode_gardu', $kode_gardu)
                 ->from('bay')       
				 ->get();
		return $query->result();
	}

    public function data_upt()
	{
		$query = $this->db->select("*")
                 ->from('upt')                  
				 ->order_by('id_upt', 'ASC')
				 ->get();
		return $query->result();
    }

	public function data_tragi_forminduk()
	{
		$query = $this->db->select("*")
                 ->from('tragi')                  
				 ->order_by('id_tragi', 'ASC')
				 ->get();
		return $query->result();
    }

	public function data_gardu_forminduk()
	{
		$query = $this->db->select("*")
                 ->from('gardu')                  
				 ->order_by('id_gardu', 'ASC')
				 ->get();
		return $query->result();
    }

	public function data_upts()
	{
		
		$query = $this->db
				->get("upt");

		if($query){
			return $query->row();
		}else{
			return false;
		}

	}

	public function data_tragis_forminduk()
	{
		
		$query = $this->db
				->get("tragi");

		if($query){
			return $query->row();
		}else{
			return false;
		}

	}

	public function count_data_tragi($id_upt)
	{
		$this->db->where('id_upt', $id_upt);
		$this->db->from('tragi');
		return $this->db->count_all_results();
	}

	public function count_data_gardu($id_upt)
	{
		$this->db->where('id_upt', $id_upt);
		$this->db->from('gardu');
		return $this->db->count_all_results();
	}

	public function count_data_bay($id_upt)
	{
		$this->db->where('id_upt', $id_upt);
		$this->db->from('bay');
		return $this->db->count_all_results();
	}

	public function count_data_pdf($id_upt)
	{
		$this->db->where('id_upt', $id_upt);
		$this->db->from('pdf');
		return $this->db->count_all_results();
	}

	public function sum_bay_pdf($id_upt)
	{
		$this->db->select_sum('bay_pdf_requirement');
		$this->db->from('pdf');
		$this->db->where('id_upt', $id_upt);
		return $this->db->get()->row()->bay_pdf_requirement;
	}

	public function data_tragi_upt($id_upt)
	{
		
		$query = $this->db->select("*")
				 ->where('id_upt', $id_upt)
                 ->from('tragi')                  
				 ->order_by('nama_tragi', 'ASC')
				 ->get();
		return $query->result();
	}

	public function data_gardu_upt($id_upt)
	{
		
		$query = $this->db->select("*")
				 ->where('id_upt', $id_upt)
                 ->from('gardu')                  
				 ->order_by('nama_tragi', 'ASC')
				 ->get();
		return $query->result();
	}

    public function get_data_tragi($id_tragi)
    {
        $query = $this->db->select("*")
				 ->where('id_tragi', $id_tragi)
                 ->from('tragi')       
				 ->get();
		return $query->result();
    }

	public function get_data_gardu($nama_tragi)
    {
        $query = $this->db->select("*")
				 ->where('nama_tragi', $nama_tragi)
                 ->from('gardu')
				 ->order_by('nama_gardu', 'ASC')       
				 ->get();
		return $query->result();
    }

	public function get_data_gardu2($id_gardu)
    {
        $query = $this->db->select("*")
				 ->where('id_gardu', $id_gardu)
                 ->from('gardu')       
				 ->get();
		return $query->result();
    }

    public function get_upt($id_upt)
    {
        $query = $this->db->select("*")             
                 ->where('id_upt', $id_upt)
                 ->from('upt')             
				 ->order_by('id_upt', 'ASC')
				 ->get();
		return $query->result();
    }

	public function get_all_buku($nama_gardu)
    {
        $query = $this->db->select("*")             
                 ->where('nama_gardu', $nama_gardu)
                 ->from('pdf')
				 ->where("status", '1' )             
				 ->order_by('id_pdf', 'ASC')
				 ->get();
		return $query->result();
    }

	public function count_jumlah_trafo($nama_tragi)
	{
		$this->db->where('nama_tragi', $nama_tragi);
		$this->db->where('kategori_bay', 'trafo');
		$this->db->from('bay');
		return $this->db->count_all_results();
	}

	public function count_jumlah_penghantar($nama_tragi)
	{
		$this->db->where('nama_tragi', $nama_tragi);
		$this->db->where('kategori_bay', 'penghantar');
		$this->db->from('bay');
		return $this->db->count_all_results();
	}

	public function count_jumlah_baylain($nama_tragi)
	{
    $this->db->where('nama_tragi', $nama_tragi);
    $this->db->where_not_in('kategori_bay', ['trafo', 'penghantar']);
    $this->db->from('bay');
    return $this->db->count_all_results();
	}

	public function count_sistem_dc($nama_gardu)
	{
		$this->db->where('nama_gardu', $nama_gardu);
		$this->db->where('kategori_peralatan', 'sistem dc');
		$this->db->where("status", '1' );
		$this->db->from('pdf');
		return $this->db->count_all_results();
	}

	public function count_bay_gardu($nama_gardu)
	{
		$this->db->where('nama_gardu', $nama_gardu);
		$this->db->where('kategori_peralatan', 'bay');
		$this->db->where("status", '1' );
		$this->db->from('pdf');
		return $this->db->count_all_results();
	}

	public function count_alat_perekam($nama_gardu)
	{
		$this->db->where('nama_gardu', $nama_gardu);
		$this->db->where('kategori_peralatan', 'alat perekam');
		$this->db->where("status", '1' );
		$this->db->from('pdf');
		return $this->db->count_all_results();
	}

	public function cek_diameter($nama_gardu)
	{
		$this->db->where('nama_gardu', $nama_gardu);
		$this->db->where("FIND_IN_SET('diameter', kategori_peralatan_yang_ada) !=", 0);
		$this->db->from('gardu');
		return $this->db->count_all_results();
	}

	public function cek_penghantar($nama_gardu)
	{
		$this->db->where('nama_gardu', $nama_gardu);
		$this->db->where("FIND_IN_SET('penghantar', kategori_peralatan_yang_ada) !=", 0);
		$this->db->from('gardu');
		return $this->db->count_all_results();
	}

	public function cek_trafo($nama_gardu)
	{
		$this->db->where('nama_gardu', $nama_gardu);
		$this->db->where("FIND_IN_SET('trafo', kategori_peralatan_yang_ada) !=", 0);
		$this->db->from('gardu');
		return $this->db->count_all_results();
	}

	public function cek_kopel($nama_gardu)
	{
		$this->db->where('nama_gardu', $nama_gardu);
		$this->db->where("FIND_IN_SET('kopel', kategori_peralatan_yang_ada) !=", 0);
		$this->db->from('gardu');
		return $this->db->count_all_results();
	}

	public function cek_kapasitor($nama_gardu)
	{
		$this->db->where('nama_gardu', $nama_gardu);
		$this->db->where("FIND_IN_SET('kapasitor', kategori_peralatan_yang_ada) !=", 0);
		$this->db->from('gardu');
		return $this->db->count_all_results();
	}

	public function cek_busbar($nama_gardu)
	{
		$this->db->where('nama_gardu', $nama_gardu);
		$this->db->where("FIND_IN_SET('busbar', kategori_peralatan_yang_ada) !=", 0);
		$this->db->from('gardu');
		return $this->db->count_all_results();
	}

	public function count_wiring_diameter($nama_gardu)
	{
		$this->db->where('nama_gardu', $nama_gardu);
		$this->db->where('kategori_bay', 'diameter');
		$this->db->where("status", '1' );
		$this->db->from('pdf');
		return $this->db->count_all_results();
	}

	public function count_wiring_penghantar($nama_gardu)
	{
		$this->db->where('nama_gardu', $nama_gardu);
		$this->db->where('kategori_bay', 'penghantar');
		$this->db->where("status", '1' );
		$this->db->from('pdf');
		return $this->db->count_all_results();
	}

	public function count_wiring_trafo($nama_gardu)
	{
		$this->db->where('nama_gardu', $nama_gardu);
		$this->db->where('kategori_bay', 'trafo');
		$this->db->where("status", '1' );
		$this->db->from('pdf');
		return $this->db->count_all_results();
	}

	public function count_wiring_trafohv($nama_gardu)
	{
		$this->db->where('nama_gardu', $nama_gardu);
		$this->db->where('kategori_bay', 'trafo');
		$this->db->where('level_tegangan', '150 KV');
		$this->db->where("status", '1' );
		$this->db->from('pdf');
		return $this->db->count_all_results();
	}

	public function count_wiring_trafolv($nama_gardu)
	{
		$this->db->where('nama_gardu', $nama_gardu);
		$this->db->where('kategori_bay', 'trafo');
		$this->db->where('level_tegangan', '20 KV');
		$this->db->where("status", '1' );
		$this->db->from('pdf');
		return $this->db->count_all_results();
	}

	public function count_wiring_kopel($nama_gardu)
	{
		$this->db->where('nama_gardu', $nama_gardu);
		$this->db->where('kategori_bay', 'kopel');
		$this->db->where("status", '1' );
		$this->db->from('pdf');
		return $this->db->count_all_results();
	}

	public function count_wiring_kapasitor($nama_gardu)
	{
		$this->db->where('nama_gardu', $nama_gardu);
		$this->db->where('kategori_bay', 'kapasitor');
		$this->db->where("status", '1' );
		$this->db->from('pdf');
		return $this->db->count_all_results();
	}

	public function count_wiring_busbar($nama_gardu)
	{
		$this->db->where('nama_gardu', $nama_gardu);
		$this->db->where('kategori_bay', 'busbar');
		$this->db->where("status", '1' );
		$this->db->from('pdf');
		return $this->db->count_all_results();
	}

	public function data_buku_acdc($nama_gardu)
    {
        $query = $this->db->select("*")             
                 ->where('nama_gardu', $nama_gardu)
				 ->where('kategori_bay', 'acdc')
                 ->from('pdf')
				 ->where("status", '1' )             
				 ->order_by('id_pdf', 'ASC')
				 ->get();
		return $query->result();
    }

	public function data_buku_alatperekam($nama_gardu)
    {
        $query = $this->db->select("*")             
                 ->where('nama_gardu', $nama_gardu)
				 ->where('kategori_bay', 'alat perekam')
                 ->from('pdf')
				 ->where("status", '1' )             
				 ->order_by('id_pdf', 'ASC')
				 ->get();
		return $query->result();
    }

	public function data_buku_diameter($nama_gardu)
    {
        $query = $this->db->select("*")             
                 ->where('nama_gardu', $nama_gardu)
				 ->where('kategori_bay', 'diameter')
                 ->from('pdf')
				 ->where("status", '1' )             
				 ->order_by('id_pdf', 'ASC')
				 ->get();
		return $query->result();
    }

	public function data_buku_penghantar($nama_gardu)
    {
        $query = $this->db->select("*")             
                 ->where('nama_gardu', $nama_gardu)
				 ->where('kategori_bay', 'penghantar')
                 ->from('pdf')
				 ->where("status", '1' )             
				 ->order_by('id_pdf', 'ASC')
				 ->get();
		return $query->result();
    }

	public function data_buku_trafo_hv($nama_gardu)
    {
        $query = $this->db->select("*")             
                 ->where('nama_gardu', $nama_gardu)
				 ->where('kategori_bay', 'trafo')
				 ->where_in('level_tegangan', array('150 KV', '275 KV'))
                 ->from('pdf')
				 ->where("status", '1' )             
				 ->order_by('id_pdf', 'ASC')
				 ->get();
		return $query->result();
    }

	public function data_buku_trafo_lv($nama_gardu)
    {
        $query = $this->db->select("*")             
                 ->where('nama_gardu', $nama_gardu)
				 ->where('kategori_bay', 'trafo')
				 ->where('level_tegangan', '20 KV')
                 ->from('pdf')
				 ->where("status", '1' )             
				 ->order_by('id_pdf', 'ASC')
				 ->get();
		return $query->result();
    }

	public function data_buku_kopel($nama_gardu)
    {
        $query = $this->db->select("*")             
                 ->where('nama_gardu', $nama_gardu)
				 ->where('kategori_bay', 'kopel')
                 ->from('pdf')
				 ->where("status", '1' )             
				 ->order_by('id_pdf', 'ASC')
				 ->get();
		return $query->result();
    }

	public function data_buku_kapasitor($nama_gardu)
    {
        $query = $this->db->select("*")             
                 ->where('nama_gardu', $nama_gardu)
				 ->where('kategori_bay', 'kapasitor')
                 ->from('pdf')
				 ->where("status", '1' )             
				 ->order_by('id_pdf', 'ASC')
				 ->get();
		return $query->result();
    }

	public function data_buku_busbar($nama_gardu)
    {
        $query = $this->db->select("*")             
                 ->where('nama_gardu', $nama_gardu)
				 ->where('kategori_bay', 'busbar')
                 ->from('pdf')
				 ->where("status", '1' )             
				 ->order_by('id_pdf', 'ASC')
				 ->get();
		return $query->result();
    }

	
	

	
}