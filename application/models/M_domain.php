<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_domain extends CI_model
{
    public function tampil_data()
    {
        return $this->db->get('domain');
    }
}
