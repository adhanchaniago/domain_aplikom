<?php
defined('BASEPATH') or exit('No direct script access allowed');

class C_auth extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
        $this->load->model('M_auth');
    }

    public function index()
    {
        $this->form_validation->set_rules('nip', 'nip', 'trim|required');
        $this->form_validation->set_rules('password', 'password', 'trim|required');

        if ($this->form_validation->run() == false) {
            $this->load->view('templates/header');
            $this->load->view('V_login');
        } else {
            $this->_login();
        }
    }

    private function _login()
    {
        $nip = $this->input->post('nip');
        $password = $this->input->post('password');
        $user = $this->M_auth->auth($nip, $password);

        if ($user->num_rows() != 0) {
            $user = $user->row_array();
            $nama = $user['nama'];
            $nip = $user['nip'];
            $this->session->set_userdata('nama', $nama);
            $this->session->set_userdata('nip', $nip);
            $this->session->set_userdata('login', true);
            redirect('C_dashboard');
        } else {
            $this->session->set_flashdata('gagal_login', 'gagal');
            redirect('C_auth');
        }
    }

    public function logout()
    {
        $this->session->sess_destroy();
        redirect('C_auth');
    }
}
