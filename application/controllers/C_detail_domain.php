<?php
defined('BASEPATH') or exit('No direct script access allowed');

class C_detail_domain extends CI_Controller
{
    public function detail($id)
    {
        $this->load->model('m_domain');
        $data['detail'] = $this->m_domain->list_detail($id);

        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('V_detail_domain', $data);
        $this->load->view('templates/footer');
    }
}
