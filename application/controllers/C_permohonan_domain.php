<?php
defined('BASEPATH') or exit('No direct script access allowed');

class C_permohonan_domain extends CI_Controller
{
    public function index()
    {
        $data['domain'] = $this->M_domain->tampil_data()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('V_permohonan_domain', $data);
        $this->load->view('templates/footer');
    }
}
