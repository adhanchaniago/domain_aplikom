<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_auth extends CI_model
{
    public function auth($nip, $password)
    {
        return $this->db->query("SELECT * FROM admin WHERE nip='$nip' AND password=MD5('$password') LIMIT 1");
    }
}
