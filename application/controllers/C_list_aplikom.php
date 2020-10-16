<?php
defined('BASEPATH') or exit('No direct script access allowed');

class C_list_aplikom extends CI_Controller
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
    	$data['rekomtek_app'] = $this->M_rekomtek_app->list_data()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('V_list_aplikom', $data);
        $this->load->view('templates/footer');
    }

    public function detail($id)
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
        $this->load->view('V_detail_aplikom', $data);
        $this->load->view('templates/footer');
    }


    public function send($id)
    {
        if (function_exists('date_default_timezone_set')) {
            date_default_timezone_set('Asia/Jakarta');
            $tanggal_sekarang = date("d-m-Y");
        }

        $data['domain'] =  $this->M_rekomtek_app->ambilData($id);
        $to = $data['domain']['email'];
        $usulan = $data['domain']['usulan'];
        $nama = $data['domain']['nama'];

        $id_rekomtek = $data['domain']['id_rekomtek'];
        // $file = $this->input->post('file');
        $subject = 'Permohonan Domain';
        $pesan = $this->input->post('pesan');

        //untuk menentukan lokasi file foto
        $lokasi = './uploads/file_aplikom/';

        $file = $_FILES['file'];
        $nama_file = str_replace('.', '_', $usulan);
        $nama_file = $tanggal_sekarang . "_" . $nama_file;
        if (!empty($_FILES['file']['name'])) {
            $config['upload_path'] = $lokasi;
            $config['allowed_types'] = 'pdf|docx|doc';
            $config['file_name'] = $nama_file;
            $config['overwrite']     = true;
            $config['max_size']      = 2048;

            $this->load->library('upload', $config);
            if (!$this->upload->do_upload('file')) {
                $this->session->set_flashdata('gagal_upload_file', 'Tidak Sesuai Format');
                redirect('C_list_aplikom');
            } else {
                //unlink($lokasi."/$row->foto");
                $file = $this->upload->data("file_name");
            }
        }

        $this->M_rekomtek_app->updateFileRekomtek($id_rekomtek, $file);

        $url_file = base_url() . "uploads/file_aplikom/" . $file;

        $from = 'bearhello3@gmail.com';



        $emailContent = '<!DOCTYPE><html><head> <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"></head><body><table width="600px" style="border:1px solid #cccccc;margin: auto;border-spacing:0;"><tr><td style="background:#0066ff;padding-left:3%; text-align:center; vertical-align : middle;"><img src="https://diskominfo.jatengprov.go.id/landing//assets/img/logo-kominfo-putih.png" width="300px" vspace=10 /></td></tr>';
        $emailContent .= '<tr><td style="height:20px"></td></tr>';


        $emailContent .= '<div style: "margin-left: 20px; margin-right:20px;">' . '<p> Selamat pengajuan rekomtek aplikom : <br>
        Atas Nama : ' . $nama . '  <br>  
        Usulan : ' . $usulan . '   <br>
        <h5 style="text-align:center;" > <strong> DITERIMA ! </strong> </h5></p> <br>';  //   Post message available here
        $emailContent .= '<p?> Silahkan cek file anda pada link berikut  </p> <br>';
        $emailContent .=  "<a href='" . $url_file . "'> <button type='button' class='btn btn-primary'>Unduh File</button></a> </div>";

        $emailContent .= '<tr><td style="height:20px"></td></tr>';
        $emailContent .= "<tr><td style='background:#0066ff;color: #ffffff;padding: 2%;text-align: center;font-size: 13px;'><p style='margin-top:1px;'><a href='https://diskominfo.jatengprov.go.id/landing/' target='_blank' style='text-decoration:none;color: #60d2ff;'>www.diskominfo.jatengprov.go.id</a></p></td></tr></table></body></html>";

        $config['protocol'] = 'smtp';
        $config['smtp_host'] = 'ssl://smtp.gmail.com';
        $config['smtp_port'] = '465';
        $config['smtp_timeout'] = '60';

        $config['smtp_user'] = 'bearhello3@gmail.com';
        $config['smtp_pass'] = 'terimakasih123';

        $config['charset'] = 'utf-8';
        $config['newline'] = "\r\n";
        $config['mailtype'] = 'html';
        $config['validation'] = true;

        $this->email->initialize($config);
        $this->email->set_mailtype("html");
        $this->email->from($from);
        $this->email->to($to);
        $this->email->subject($subject);
        $this->email->message($emailContent);
        $this->email->send();

        $this->session->set_flashdata('email', $this->session->userdata('email'));
        $this->session->set_flashdata('usulan', $this->session->userdata('usulan'));
        redirect('C_list_aplikom');
    }
}
