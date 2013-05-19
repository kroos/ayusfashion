<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
##################################################################################################

//form validation through controller
//format
/*
$config = array	( 
					'controller/function' => array
					( 
						array
							(
								'field' => 'login',
								'label' => 'Login',
								'rules' => 'trim|required|min_length[6]|max_length[12]|xss_clean'
							)
					)
				);
*/
##################################################################################################
$config = array	( 
					'oms/hubungi_kami' => array
					( 
						array
							(
								'field' => 'username',
								'label' => 'Nama',
								'rules' => 'trim|required|max_length[50]|xss_clean'
							),
						array
							(
								'field' => 'email',
								'label' => 'Email',
								'rules' => 'trim|required|valid_email|max_length[50]|xss_clean'
							),
						array
							(
								'field' => 'editor',
								'label' => 'Mesej',
								'rules' => 'trim|required|xss_clean'
							),
						array
							(
								'field' => 'verify',
								'label' => 'Pengesahan Imej',
								'rules' => 'trim|required|exact_length[5]|is_natural|xss_clean'
							)
					),
					'oms/login' => array
					( 
						array
							(
								'field' => 'usrnm',
								'label' => 'Username',
								'rules' => 'trim|required|max_length[50]|xss_clean'
							),
						array
							(
								'field' => 'pswd',
								'label' => 'Password',
								'rules' => 'trim|required|max_length[50]|xss_clean'
							)
					),
				);
/* End of file form_validator.php */
/* Location: ./application/config/form_validator.php */
