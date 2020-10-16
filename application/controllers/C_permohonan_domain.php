<?php
defined('BASEPATH') or exit('No direct script access allowed');

class C_permohonan_domain extends CI_Controller
{

	public function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('login') != true) {
            redirect('C_auth');
        }
        $this->load->model('M_domain');
    }
    public function index()
    {
        $data['domain'] = $this->M_domain->tampil_data()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('V_permohonan_domain', $data);
        $this->load->view('templates/footer');
    }

    public function tindakan($id)
    {
        $data['detail'] = $this->M_domain->detail($id)->result_array();

        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('V_tindakan_domain', $data);
        $this->load->view('templates/footer');
    }

    public function terima($id)
    {
    	if ( function_exists( 'date_default_timezone_set' ) ){
          date_default_timezone_set('Asia/Jakarta');
        	$tanggal_terima = date("Y-m-d H:i:s");
     	}
        $this->load->model('m_domain');
        $this->m_domain->terima($id, $tanggal_terima);
        $this->session->set_flashdata('terima', $this->session->userdata('domain'));
        redirect('C_list_domain');
    }

    public function tolak($id)
    {
    	if ( function_exists( 'date_default_timezone_set' ) ){
          date_default_timezone_set('Asia/Jakarta');
        	$tanggal_tolak = date("Y-m-d H:i:s");
     	}
        $this->load->model('m_domain');
        $this->m_domain->tolak($id, $tanggal_tolak);
        $this->session->set_flashdata('tolak', $this->session->userdata('domain'));
        redirect('C_list_domain');
    }

    public function hapus($id)
    {
        $this->load->model('m_domain');
        $this->m_domain->hapusDomain($id);
        $this->m_domain->hapusLogDomain($id);
        $lokasi = './uploads/file/';
        unlink($lokasi."/".$this->session->userdata('file_name'));
        $this->session->set_flashdata('flash', 'Dihapus');
        redirect('C_permohonan_domain');
    }


}
