<?php
defined('BASEPATH') or exit('No direct script access allowed');

class C_tindakan_aplikom extends CI_Controller
{
    public function index()
    {
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('V_tindakan_aplikom');
        $this->load->view('templates/footer');
    }
}
