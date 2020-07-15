<?php
defined('BASEPATH') or exit('No direct script access allowed');

class C_tindakan_domain extends CI_Controller
{
    public function index()
    {
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('V_tindakan_domain');
        $this->load->view('templates/footer');
    }

    public function detail($id)
    {
        $this->load->model('m_domain');
        $data['detail'] = $this->m_domain->detail($id);

        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('V_tindakan_domain', $data);
        $this->load->view('templates/footer');
    }

    public function terima($id)
    {
        $this->load->model('m_domain');
        $data['terima'] = $this->m_domain->terima($id);
        $this->session->set_flashdata('flash', 'Diterima');
        redirect('C_list_domain');
    }

    public function tolak($id)
    {
        $this->load->model('m_domain');
        $data['terima'] = $this->m_domain->tolak($id);
        $this->session->set_flashdata('flash', 'Ditolak');
        redirect('C_list_domain');
    }
}
