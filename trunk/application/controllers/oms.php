<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Oms extends CI_Controller
	{
		//contructor => default utk semua function dlm controller nih...
		public function __construct()
			{
				parent::__construct();

				//$this->load->model('model1');				//nak tau controller ni pakai model mana 1...

				//mesti ikut peraturan ni..
				//user mesti log on kalau tidak redirect to index
				/*
				if ($this->session->userdata('logged_in') === FALSE)
					{
						redirect('/welcome/index', 'location');
					}
				//*/
			}

		public function index()
			{
				$this->load->view('template/ayusfashion');
			}

		public function test()
			{
			
			}
	}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */