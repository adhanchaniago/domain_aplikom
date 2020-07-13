<?php
defined('BASEPATH') or exit('No direct script access allowed');

class C_auth extends CI_Controller
{
    public function index()
    {
        $this->load->view('templates/header');
        // $this->load->view('templates/sidebar');
        $this->load->view('V_login');
        // $this->load->view('templates/footer');
    }

    public function register()
    {
        $this->load->view('templates/header');
        // $this->load->view('templates/sidebar');
        $this->load->view('V_register');
    }
}
