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
        $this->load->model('M_domain');
        $this->load->model('M_rekomtek_app');
    }
    public function index()
    {

        function tanggal_indo($tanggal, $cetak_hari = false)
        {
            $hari = array ( 1 =>    'Senin',
                        'Selasa',
                        'Rabu',
                        'Kamis',
                        'Jumat',
                        'Sabtu',
                        'Minggu'
                    );
                    
            $bulan = array (1 =>   'Januari',
                        'Februari',
                        'Maret',
                        'April',
                        'Mei',
                        'Juni',
                        'Juli',
                        'Agustus',
                        'September',
                        'Oktober',
                        'November',
                        'Desember'
                    );
            $split    = explode('-', $tanggal);
            $tgl_indo = $split[2] . ' ' . $bulan[ (int)$split[1] ] . ' ' . $split[0];
            
            if ($cetak_hari) {
                $num = date('N', strtotime($tanggal));
                return $hari[$num] . ', ' . $tgl_indo;
            }
            return $tgl_indo;
        }

        //menghitung jumlah domain
        $data['domain1'] = $this->M_domain->tampil_data()->num_rows();//domain masuk
        $data['domain2'] = $this->M_domain->list_data()->num_rows();//domain sudah disetujui/ditolak
        $data['jumlah_domain'] = $data['domain1'] + $data['domain2'];//domain total

        //mengambil data domain_masuk
        $data['domain_masuk'] = $this->M_domain->tampil_data()->result();
        foreach ($data['domain_masuk'] as $d){
            $tanggal = explode(" ", $d->log_masuk);
            $d->log_masuk = tanggal_indo($tanggal[0], TRUE) . " | Pukul :". $tanggal[1];
        }

        //menghitung data domain ditolak
        $data['domain_ditolak']= $this->M_domain->ditolak()->num_rows();

        //menghitung data domain diterima
        $data['domain_diterima']= $this->M_domain->diterima()->num_rows();


        //menghitung jumlah Rekomtek app
        $data['rekomtek_app1'] = $this->M_rekomtek_app->tampil_data()->num_rows();//domain masuk
        $data['rekomtek_app2'] = $this->M_rekomtek_app->list_data()->num_rows();//domain sudah disetujui/ditolak
        $data['jumlah_rekomtek_app'] = $data['rekomtek_app1'] + $data['rekomtek_app2'];//domain total

        //mengambil data Rekomtek App Masuk
        $data['rekomtek_app_masuk'] = $this->M_rekomtek_app->tampil_data()->result();
        foreach ($data['rekomtek_app_masuk'] as $d){
            $tanggal = explode(" ", $d->log_masuk);
            $d->log_masuk = tanggal_indo($tanggal[0], TRUE) . " | Pukul :". $tanggal[1];
        }

        //menghitung data domain ditolak
        $data['rekomtek_ditolak']= $this->M_rekomtek_app->ditolak()->num_rows();

        //menghitung data domain diterima
        $data['rekomtek_diterima']= $this->M_rekomtek_app->diterima()->num_rows();


        //untuk chart jumlah permohonana masuk
        $data['jumlah_permohonan_domain_masuk'] = [];
        $data['jumlah_permohonan_rekomtek_masuk'] = [];
        for ($i=0 ; $i<12; $i++ ){

            $jumlah_bulanan_domain = $this->M_domain->HitungPermohonanBulanan($i+1)->num_rows();
            $jumlah_bulanan_rekomtek = $this->M_rekomtek_app->HitungPermohonanBulanan($i+1)->num_rows();
            $data['jumlah_permohonan_domain_masuk'][$i] = $jumlah_bulanan_domain;
            $data['jumlah_permohonan_rekomtek_masuk'][$i] = $jumlah_bulanan_rekomtek;
        }

        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('V_dashboard', $data);
        $this->load->view('templates/footer');
    }

    public function get_terima_tolak(){

        if ( function_exists( 'date_default_timezone_set' ) ){
            date_default_timezone_set('Asia/Jakarta');
            $tahun = date("Y");
        }

        $jp = $this->input->post('jenis_permohonan');
        $b = $this->input->post('bulan');

        if ($jp == 1){
            $diterima= $this->M_domain->diterima1($b, $tahun)->num_rows();
            $ditolak =$this->M_domain->ditolak1($b, $tahun)->num_rows();
        }
        else{
            $diterima= $this->M_rekomtek_app->diterima1($b, $tahun)->num_rows();
            $ditolak =$this->M_rekomtek_app->ditolak1($b, $tahun)->num_rows();
        }

        // $total = $diterima + $ditolak;
        // $diterima = ($diterima / $total) * 100;
        // $diterima = number_format($diterima,2);
        // $ditolak = ($ditolak / $total) * 100;
        // $ditolak = number_format($ditolak,2);
        $output[0] = $diterima;
        $output[1] = $ditolak;
        
        echo json_encode($output);
    }
}
