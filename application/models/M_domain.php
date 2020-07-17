<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_domain extends CI_model
{

    public function tampil_data()
    {
        // return $this->db->get('domain');
        return $this->db->query("SELECT * FROM domain WHERE status = 0");
    }

    public function list_data()
    {
        // return $this->db->get('domain');
        return $this->db->query("SELECT * FROM domain WHERE status <> 0");
    }

    public function hapus($id)
    {
        $this->db->where('id_domain', $id);
        $this->db->delete('domain');
    }

    public function detail($id)
    {
        return $this->db->query("SELECT * FROM domain WHERE id_domain = '$id'")->result_array();
    }

    public function list_detail($id)
    {
        return $this->db->query("SELECT * FROM domain WHERE id_domain = '$id'")->result_array();
    }

    public function terima($id)
    {
        $this->db->query("UPDATE domain SET status = 1 WHERE id_domain = '$id'");
    }

    public function tolak($id)
    {
        $this->db->query("UPDATE domain SET status = 2 WHERE id_domain = '$id'");
    }

    public function ambilData($id)
    {
        return $this->db->query("SELECT * FROM domain WHERE id_domain = '$id' ")->row_array();
    }

    public function updateFileDomain($id, $nama_file)
    {
        $this->db->query("UPDATE domain SET file_domain = '$nama_file' WHERE id_domain = '$id'");
    }
}
