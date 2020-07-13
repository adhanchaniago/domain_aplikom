<?php
defined('BASEPATH') or exit('No direct script access allowed');

class C_dashboard extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('login') != true) {
            redirect('C_auth');
        }
        $this->load->library('form_validation');
        $this->load->model('M_auth');
    }
    public function index()
    {
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('V_dashboard');
        $this->load->view('templates/footer');
    }
}
