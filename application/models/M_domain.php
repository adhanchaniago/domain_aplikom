<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_domain extends CI_model
{


    //masuk baru
    public function tampil_data()
    {
        // return $this->db->get('domain');
        return $this->db->query("SELECT * FROM domain
        JOIN skpd ON domain.skpd = skpd.kode_skpd
        JOIN domain_log ON domain.id_domain = domain_log.id_domain
         WHERE status = 0 ORDER BY log_masuk DESC");
    }

    //sudah ditolak/disetujui
    public function list_data()
    {
        // return $this->db->get('domain');
        return $this->db->query("SELECT * FROM domain 
            JOIN skpd ON domain.skpd = skpd.kode_skpd
            JOIN domain_log ON domain.id_domain = domain_log.id_domain
            WHERE status <> 0 ORDER BY log_masuk DESC");
    }

    //menampilkan semua data domain
    public function tampil_semua_data($id_domain =null, $token)
    {
        // return $this->db->get('domain');
        if ($id_domain){
            return $this->db->query("SELECT * FROM domain WHERE id_domain = '$id_domain' AND skpd = (SELECT kode_skpd FROM skpd WHERE token = '$token') ");

        }else{
        
            return $this->db->query("SELECT * FROM domain WHERE skpd = (SELECT kode_skpd FROM skpd WHERE token = '$token') ");
        }
        
    }

    //ditolak
    public function ditolak()
    {
        // return $this->db->get('domain');
        return $this->db->query("SELECT * FROM domain_log
            WHERE status = 2");
    }

    //diolak 1 untuk chart
    public function ditolak1($bulan, $tahun)
    {
        // return $this->db->get('domain');
        return $this->db->query("SELECT * FROM domain_log
            WHERE status = 2 AND (MONTH(log_tolak) = $bulan AND YEAR(log_tolak) = $tahun)");
    }

    //diterima
    public function diterima()
    {
        // return $this->db->get('domain');
        return $this->db->query("SELECT * FROM domain_log
            WHERE status = 1");
    }

    //diterima 1 untuk chart
    public function diterima1($bulan, $tahun)
    {
        // return $this->db->get('domain_log');
        return $this->db->query("SELECT * FROM domain_log
            WHERE status = 1 AND (MONTH(log_terima) = $bulan AND YEAR(log_terima) = $tahun)");
    }

    //menghitung data permohonan masuk setiap bulannya
    public function HitungPermohonanBulanan($i){
        return $this->db->query("SELECT * FROM domain
            JOIN domain_log ON domain.id_domain = domain_log.id_domain
            WHERE status = 0 AND MONTH(log_masuk) = $i");
    }


    public function hapusDomain($id)
    {
        $this->db->where('id_domain', $id);
        $this->db->delete('domain');
    }

    public function hapusLogDomain($id)
    {
        $this->db->where('id_domain', $id);
        $this->db->delete('domain_log');
    }

    public function detail($id)
    {
        return $this->db->query("SELECT * FROM domain 
            JOIN skpd ON domain.skpd = skpd.kode_skpd
            JOIN domain_log ON domain.id_domain = domain_log.id_domain
            WHERE domain.id_domain = '$id'");
    }

    public function terima($id, $tanggal_terima)
    {
        $this->db->query("UPDATE domain_log SET status = 1, log_terima ='$tanggal_terima' WHERE id_domain = '$id'");
    }

    public function tolak($id, $tanggal_tolak)
    {
        $this->db->query("UPDATE domain_log SET status = 2, log_tolak ='$tanggal_tolak' WHERE id_domain = '$id'");
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
