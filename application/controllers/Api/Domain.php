<?php
defined('BASEPATH') OR exit('No direct script access allowed');

// use chriskacerguis\RestServer\RestController;
require(APPPATH . 'libraries/RestController.php');

class Domain extends RestController {

    function __construct()
    {
        // Construct the parent class
        parent::__construct();
        $this->load->library('form_validation');
        $this->load->model('M_domain');
    }

    public function domain_get()
    {
        // Users from a data store e.g. database

        

        $id_domain = $this->get( 'id_domain' );
        $token = $this->get('token');



        if ( $id_domain === null )
        {
            $domain = $this->M_domain->tampil_semua_data(null, $token)->result();
            //$domain = json_encode($domain);
            if ( $domain )
            {
                // Set the response and exit
                $this->response( [
                    'status' => True,
                    'data' =>$domain
                ], 200 );
            }
            else
            {
                // Set the response and exit
                $this->response( [
                    'status' => false,
                    'message' => 'Belum ada Permohonan Domain Masuk'
                ], 404 );
            }
        }
        else
        {
            $domain = $this->M_domain->tampil_semua_data($id_domain, $token)->result();
           // $domain = json_encode($domain);
            if ( $domain )
            {
                // Set the response and exit
                $this->response( [
                    'status' => True,
                    'data' => $domain
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