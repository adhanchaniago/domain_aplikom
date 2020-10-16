<?php
defined('BASEPATH') or exit('No direct script access allowed');

class C_permohonan_aplikom extends CI_Controller
{

	public function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('login') != true) {
            redirect('C_auth');
        }
        $this->load->model('M_rekomtek_app');
    }

    public function index()
    {
    	$data['rekomtek_app'] = $this->M_rekomtek_app->tampil_data()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('V_permohonan_aplikom', $data);
        $this->load->view('templates/footer');
    }
	
    public function tindakan($id)
    {
        $data['detail'] = $this->M_rekomtek_app->detail($id)->result_array();
        $data['detail1'] = $this->M_rekomtek_app->detail($id)->row_array();

        function rp($angka){	
			$angka = number_format($angka);	
			$angka = str_replace(',', '.', $angka);	
			$angka ="$angka";	
			return $angka;
		}

		function penyebut($nilai) {
			$nilai = abs($nilai);
			$huruf = array("", "Satu", "Dua", "Tiga", "Empat", "Lima", "Enam", "Tujuh", "Delapan", "Sembilan", "Sepuluh", "Sebelas");
			$temp = "";
			if ($nilai < 12) {
				$temp = " ". $huruf[$nilai];
			} else if ($nilai <20) {
				$temp = penyebut($nilai - 10). " Belas";
			} else if ($nilai < 100) {
				$temp = penyebut($nilai/10)." Puluh". penyebut($nilai % 10);
			} else if ($nilai < 200) {
				$temp = " Seratus" . penyebut($nilai - 100);
			} else if ($nilai < 1000) {
				$temp = penyebut($nilai/100) . " Ratus" . penyebut($nilai % 100);
			} else if ($nilai < 2000) {
				$temp = " Seribu" . penyebut($nilai - 1000);
			} else if ($nilai < 1000000) {
				$temp = penyebut($nilai/1000) . " Ribu" . penyebut($nilai % 1000);
			} else if ($nilai < 1000000000) {
				$temp = penyebut($nilai/1000000) . " Juta" . penyebut($nilai % 1000000);
			} else if ($nilai < 1000000000000) {
				$temp = penyebut($nilai/1000000000) . " Milyar" . penyebut(fmod($nilai,1000000000));
			} else if ($nilai < 1000000000000000) {
				$temp = penyebut($nilai/1000000000000) . " Trilyun" . penyebut(fmod($nilai,1000000000000));
			}     
			return $temp;
		}
 
		function terbilang($nilai) {
			if($nilai<0) {
				$hasil = "minus ". trim(penyebut($nilai));
			} else {
				$hasil = trim(penyebut($nilai));
			}     		
			return $hasil;
		}

        $biaya = $data['detail1']['biaya'];
        $data['rupiah'] = rp($biaya).",00";
        $data['terbilang'] = terbilang($biaya);

        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('V_tindakan_aplikom', $data);
        $this->load->view('templates/footer');
    }

    public function terima($id)
    {

    	if ( function_exists( 'date_default_timezone_set' ) ){
          date_default_timezone_set('Asia/Jakarta');
        	$tanggal_terima = date("Y-m-d H:i:s");
     	}
    	
        $this->M_rekomtek_app->terima($id, $tanggal_terima);
        $this->session->set_flashdata('terima', $this->session->userdata('usulan'));
        redirect('C_list_aplikom');
    }

    public function tolak($id)
    {
    	if ( function_exists( 'date_default_timezone_set' ) ){
          date_default_timezone_set('Asia/Jakarta');
        	$tanggal_tolak = date("Y-m-d H:i:s");
     	}
        $this->M_rekomtek_app->tolak($id, $tanggal_tolak);
        $this->session->set_flashdata('tolak', $this->session->userdata('usulan'));
        redirect('C_list_aplikom');
    }

    public function hapus($id)
    {
        $this->M_rekomtek_app->hapusRekomtek($id);
        $this->M_rekomtek_app->hapusLogRekomtek($id);
        $lokasi = './uploads/file/';
        unlink($lokasi."/".$this->session->userdata('file_name'));
        $this->session->set_flashdata('hapus', 'Dihapus');
        redirect('C_permohonan_aplikom');
    }

}
