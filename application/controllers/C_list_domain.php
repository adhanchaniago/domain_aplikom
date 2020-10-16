<?php
defined('BASEPATH') or exit('No direct script access allowed');

class C_list_domain extends CI_Controller
{



    public function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('login') != true) {
            redirect('C_auth');
        }
        $this->load->library('form_validation');
        $this->load->model('M_domain');
    }


    public function index()
    {
        $data['domain'] = $this->M_domain->list_data()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('V_list_domain', $data);
        $this->load->view('templates/footer');
    }
    public function detail($id)
    {
        $this->load->model('m_domain');
        $data['detail'] = $this->M_domain->detail($id)->result_array();

        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('V_detail_domain', $data);
        $this->load->view('templates/footer');
    }
    public function send($id)
    {
        if (function_exists('date_default_timezone_set')) {
            date_default_timezone_set('Asia/Jakarta');
            $tanggal_sekarang = date("d-m-Y");
        }


        $data['domain'] =  $this->M_domain->ambilData($id);
        $to = $data['domain']['email'];
        $nama_domain = $data['domain']['nama_domain'];
        $nama = $data['domain']['nama'];

        $id_domain = $data['domain']['id_domain'];
        // $file = $this->input->post('file');
        $subject = 'Permohonan Domain';
        $pesan = $this->input->post('pesan');

        //untuk menentukan lokasi file foto
        $lokasi = './uploads/file_domain/';

        $file = $_FILES['file'];
        $nama_file = str_replace('.', '_', $nama_domain);
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
                redirect('C_list_domain');
            } else {
                //unlink($lokasi."/$row->foto");
                $file = $this->upload->data("file_name");
            }
        }

        $this->M_domain->updateFileDomain($id_domain, $file);

        $url_file = base_url() . "uploads/file_domain/" . $file;

        $from = 'bearhello3@gmail.com';



        $emailContent = '<!DOCTYPE><html><head> <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"></head><body><table width="600px" style="border:1px solid #cccccc;margin: auto;border-spacing:0;"><tr><td style="background:#0066ff;padding-left:3%; text-align:center; vertical-align : middle;"><img src="https://diskominfo.jatengprov.go.id/landing//assets/img/logo-kominfo-putih.png" width="300px" vspace=10 /></td></tr>';
        $emailContent .= '<tr><td style="height:20px"></td></tr>';


        $emailContent .= '<div style: "margin-left: 20px; margin-right:20px;">' . '<p> Selamat pengajuan domain : <br>
        Atas Nama : ' . $nama . '  <br>  
        Nama domain : ' . $nama_domain . '   <br>
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
        $this->session->set_flashdata('nama_domain', $this->session->userdata('nama_domain'));
        redirect('C_list_domain');
    }
}
