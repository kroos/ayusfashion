<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Afa extends CI_Controller
	{
		//contructor => default utk semua function dlm controller nih...
		public function __construct()
			{
				parent::__construct();

				//load database
				$this->load->database();

				//$this->load->model('model1');				//nak tau controller ni pakai model mana 1...

				//helper
				$this->load->helper(array('url', 'template_inheritance', 'form', 'password', 'date'));
				
				//libraries
				$this->load->library(array('session', 'form_validation'));

				//mesti ikut peraturan ni..
				//user mesti log on kalau tidak redirect to index
				if ($this->session->userdata('logged_in') === FALSE)
					{
						redirect('oms/index', 'location');
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

###############################################################################################################
//Logout
		public function logout()
			{
				if ($this->session->userdata('logged_in') === TRUE)
					{
						//process
						$array = array 
								(
									'id_user' => '',
									'username' => '',
									'password' => '',
									'logged_in' => FALSE
								);
						$this->session->unset_userdata($array);
						redirect('', 'location');
					}
					else
					{
						redirect('', 'location');
					}
			}

###############################################################################################################
	}

/* End of file afa.php */
/* Location: ./application/controllers/afa.php */