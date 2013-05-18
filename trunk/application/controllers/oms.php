<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Oms extends CI_Controller
	{
		//contructor => default utk semua function dlm controller nih...
		public function __construct()
			{
				parent::__construct();

				//$this->load->model('model1');				//nak tau controller ni pakai model mana 1...

				//helper
				$this->load->helper(array('url', 'template_inheritance'));

				//mesti ikut peraturan ni..
				//user mesti log on kalau tidak redirect to index
				/*
				if ($this->session->userdata('logged_in') === FALSE)
					{
						redirect('/welcome/index', 'location');
					}
				//*/
			}
###############################################################################################################

		public function index()
			{
				$this->load->view('home');
			}

		public function beli_sekarang()
			{
				$this->load->view('beli_sekarang');
			}

		public function hubungi_kami()
			{
				//load helper
				$this->load->helper(array('form'));

				//load library
				$this->load->library(array('form_validation', 'phpmailer/Phpmailer', 'ckeditor/Ckeditor5'));

				$this->load->view('hubungi_kami');
			}

		public function senarai_agen()
			{
				$this->load->view('senarai_agen');
			}

		public function faq()
			{
				$this->load->view('faq');
			}

		public function testimoni()
			{
				$this->load->view('testimoni');
			}

		public function ayus_di_media()
			{
			
			}

		public function order_status()
			{
			
			}

		public function register()
			{
			
			}

		public function login()
			{
				$this->load->library('session');
			}

###############################################################################################################
//error 404
		public function page_missing()
			{
				$this->load->view('error/show404');
			}
	}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */