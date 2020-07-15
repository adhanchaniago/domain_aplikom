<?php
defined('BASEPATH') or exit('No direct script access allowed');

class C_list_domain extends CI_Controller
{
    public function index()
    {
        $data['domain'] = $this->M_domain->list_data()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('V_list_domain', $data);
        $this->load->view('templates/footer');
    }
}
