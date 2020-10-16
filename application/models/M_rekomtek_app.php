<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_rekomtek_app extends CI_model
{
    //masuk baru
    public function tampil_data()
    {
        return $this->db->query("SELECT * FROM rekomtek_app  
            JOIN skpd ON rekomtek_app.skpd = skpd.kode_skpd
            JOIN rekomtek_app_log ON rekomtek_app.id_rekomtek = rekomtek_app_log.id_rekomtek
            WHERE status = 0 ORDER BY log_masuk DESC");
    }

    //sudah ditolak/disetujui
    public function list_data()
    {
        // return $this->db->get('domain');
        return $this->db->query("SELECT * FROM rekomtek_app  
            JOIN skpd ON rekomtek_app.skpd = skpd.kode_skpd
            JOIN rekomtek_app_log ON rekomtek_app.id_rekomtek = rekomtek_app_log.id_rekomtek 
            WHERE status <> 0 ORDER BY log_masuk DESC");
    }

    //menampilkan semua data rekomtek app
    public function tampil_semua_data($id_rekomtek =null, $token)
    {
        // return $this->db->get('domain');
        if ($id_rekomtek){
            return $this->db->query("SELECT * FROM rekomtek_app
            WHERE id_rekomtek = '$id_rekomtek' AND skpd = (SELECT kode_skpd FROM skpd WHERE token = '$token') ");

        }else{
        
            return $this->db->query("SELECT * FROM rekomtek_app WHERE skpd = (SELECT kode_skpd FROM skpd WHERE token = '$token') ");
        }
        
    }


    //ditolak
    public function ditolak()
    {
        // return $this->db->get('domain');
        return $this->db->query("SELECT * FROM rekomtek_app_log
            WHERE status = 2");
    }

    //diolak 1 untuk chart
    public function ditolak1($bulan, $tahun)
    {
        // return $this->db->get('domain');
        return $this->db->query("SELECT * FROM rekomtek_app_log
            WHERE status = 2 AND (MONTH(log_tolak) = $bulan AND YEAR(log_tolak) = $tahun)");
    }

    //disetujui
    public function diterima()
    {
        // return $this->db->get('domain');
        return $this->db->query("SELECT * FROM rekomtek_app_log
            WHERE status = 1");
    }

    //diterima 1 untuk chart
    public function diterima1($bulan, $tahun)
    {
        // return $this->db->get('domain');
        return $this->db->query("SELECT * FROM rekomtek_app_log
            WHERE status = 1 AND (MONTH(log_terima) = $bulan AND YEAR(log_terima) = $tahun)");
    }


    //menghitung data permohonan masuk setiap bulannya
    public function HitungPermohonanBulanan($i){
        return $this->db->query("SELECT * FROM rekomtek_app
        JOIN rekomtek_app_log ON rekomtek_app.id_rekomtek = rekomtek_app_log.id_rekomtek
        WHERE status = 0 AND MONTH(log_masuk) = $i");
    }

    public function hapusRekomtek($id)
    {
        $this->db->where('id_rekomtek', $id);
        $this->db->delete('rekomtek_app');
    }

    public function hapusLogRekomtek($id)
    {
        $this->db->where('id_rekomtek', $id);
        $this->db->delete('rekomtek_app_log');
    }

    public function detail($id)
    {
        return $this->db->query("SELECT * FROM rekomtek_app 
            JOIN skpd ON rekomtek_app.skpd = skpd.kode_skpd
            JOIN rekomtek_app_log ON rekomtek_app.id_rekomtek = rekomtek_app_log.id_rekomtek
            WHERE rekomtek_app.id_rekomtek = '$id'");
    }

    public function terima($id, $tanggal_terima)
    {
        $this->db->query("UPDATE rekomtek_app_log SET status = 1, log_terima ='$tanggal_terima' WHERE id_rekomtek = '$id'");
    }

    public function tolak($id, $tanggal_tolak)
    {
        $this->db->query("UPDATE rekomtek_app_log SET status = 2 , log_tolak ='$tanggal_tolak' WHERE id_rekomtek = '$id'");
    }

    public function ambilData($id)
    {
        return $this->db->query("SELECT * FROM rekomtek_app WHERE id_rekomtek = '$id' ")->row_array();
    }

    public function updateFileRekomtek($id, $nama_file)
    {
        $this->db->query("UPDATE rekomtek_app SET file_rekomtek_app = '$nama_file' WHERE id_rekomtek = '$id'");
    }

}
