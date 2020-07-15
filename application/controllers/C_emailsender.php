<?php
defined('BASEPATH') or exit('No direct script access allowed');

class C_emailsender extends CI_Controller
{
    public function send($to)
    {
        $file = $this->input->post('file');
        $subject = 'wkwkwk';
        $pesan = $this->input->post('pesan');

        $from = 'bearhello3@gmail.com';

        $emailContent = '<!DOCTYPE><html><head></head><body><table width="600px" style="border:1px solid #cccccc;margin: auto;border-spacing:0;"><tr><td style="background:#000000;padding-left:3%"><img src="http://codingmantra.co.in/assets/logo/logo.png" width="300px" vspace=10 /></td></tr>';
        $emailContent .= '<tr><td style="height:20px"></td></tr>';


        $emailContent .= $this->input->post('pesan');  //   Post message available here


        $emailContent .= '<tr><td style="height:20px"></td></tr>';
        $emailContent .= "<tr><td style='background:#000000;color: #999999;padding: 2%;text-align: center;font-size: 13px;'><p style='margin-top:1px;'><a href='http://codingmantra.co.in/' target='_blank' style='text-decoration:none;color: #60d2ff;'>www.codingmantra.co.in</a></p></td></tr></table></body></html>";

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
        $this->email->to("williamwirahardi@gmail.com");
        $this->email->subject($subject);
        $this->email->message($emailContent);
        $this->email->send();

        if ($this->email->send()) {
            echo "Success! - An email has been sent to " . $to;
        } else {
            show_error($this->email->print_debugger());
            return false;
        }
    }

    // redirect('C_dashboard');
}
