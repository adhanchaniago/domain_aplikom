<?php
defined('BASEPATH') or exit('No direct script access allowed');

class C_hapus_domain extends CI_Controller
{
    public function hapus($id)
    {
        $this->load->model('m_domain');
        $this->m_domain->hapus($id);
        $this->session->set_flashdata('flash', 'Dihapus');
        redirect('C_permohonan_domain');
    }
}
