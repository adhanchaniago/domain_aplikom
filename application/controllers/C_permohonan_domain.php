<?php
defined('BASEPATH') or exit('No direct script access allowed');

class C_permohonan_domain extends CI_Controller
{
    public function index()
    {
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('V_permohonan_domain');
        $this->load->view('templates/footer');
    }
}
