<?php
defined('BASEPATH') OR exit('No direct script access allowed');

// use chriskacerguis\RestServer\RestController;
require(APPPATH . 'libraries/RestController.php');

class Aplikom extends RestController {

    function __construct()
    {
        // Construct the parent class
        parent::__construct();
        $this->load->library('form_validation');
        $this->load->model('M_rekomtek_app');
    }

    public function aplikom_get()
    {
        // Users from a data store e.g. database

        

        $id_rekomtek = $this->get( 'id_rekomtek' );
        $token = $this->get('token');
        //$token = $this->get('token');

        if ( $id_rekomtek === null )
        {
            $rekomtek = $this->M_rekomtek_app->tampil_semua_data(null, $token)->result();
            //$domain = json_encode($domain);
            if ( $rekomtek )
            {
                // Set the response and exit
                $this->response( [
                    'status' => True,
                    'data' =>$rekomtek
                ], 200 );
            }
            else
            {
                // Set the response and exit
                $this->response( [
                    'status' => false,
                    'message' => 'Belum ada Permohonan Rekomendasi Teknik Aplikasi Masuk'
                ], 404 );
            }
        }
        else
        {
            $rekomtek = $this->M_rekomtek_app->tampil_semua_data($id_rekomtek, $token)->result();
           // $domain = json_encode($domain);
            if ( $rekomtek )
            {
                // Set the response and exit
                $this->response( [
                    'status' => True,
                    'data' => $rekomtek
                ], 200 );
            }
            else
            {
                // Set the response and exit
                $this->response( [
                    'status' => false,
                    'message' => 'Data Permohonan Domain Tidak Ditemukan'
                ], 404 );
            }
        }
    }
}