<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Afa extends CI_Controller
	{
		//contructor => default utk semua function dlm controller nih...
		public function __construct()
			{
				parent::__construct();

				//$this->load->model('model1');				//nak tau controller ni pakai model mana 1...

				//helper
				$this->load->helper(array('url', 'template_inheritance'));
				
				//libraries
				$this->load->library(array('session'));

				//mesti ikut peraturan ni..
				//user mesti log on kalau tidak redirect to index
				if ($this->session->userdata('logged_in') === FALSE)
					{
						redirect('', 'location');
					}
			}
###############################################################################################################

		public function index()
			{
			
			}

		public function buy()
			{
				echo 'buy me';
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