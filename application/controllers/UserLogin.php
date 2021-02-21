<?php
defined('BASEPATH') or exit('No direct script access allowed');

class UserLogin extends CI_Controller
{
    
  public function __construct()
  {
    parent::__construct();
  }

  public function index()
  {
    $data['title']='Kurs Script | Kullanıcı Giriş';
    $this->load->view('UserLoginView',$data);
  }

}
