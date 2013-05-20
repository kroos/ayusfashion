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
								'rules' => 'trim|required|alpha_dash|min_length[6]|max_length[10]|xss_clean'
							),
						array
							(
								'field' => 'pswd',
								'label' => 'Password',
								'rules' => 'trim|required|min_length[6]|max_length[10]|xss_clean'
							)
					),
					'oms/lupa_kata_laluan' => array
					( 
						array
							(
								'field' => 'ntel',
								'label' => 'Email Atau Nombor Telefon',
								'rules' => 'trim|required|xss_clean'
							),
					),
					'oms/daftar' => array
					( 
						array
							(
								'field' => 'nama',
								'label' => 'Nama',
								'rules' => 'trim|is_unique[client.client]|required|xss_clean'
							),
						array
							(
								'field' => 'username',
								'label' => 'Username',
								'rules' => 'trim|required|is_unique[client.username]|alpha_dash|min_length[6]|max_length[10]|xss_clean'
							),
						array
							(
								'field' => 'pass1',
								'label' => 'Password',
								'rules' => 'trim|required|min_length[6]|max_length[10]|xss_clean'
							),
						array
							(
								'field' => 'pass2',
								'label' => 'Password',
								'rules' => 'trim|required|min_length[6]|max_length[10]|matches[pass1]|xss_clean'
							),
						array
							(
								'field' => 'alamat',
								'label' => 'Alamat',
								'rules' => 'trim|required|xss_clean'
							),
						array
							(
								'field' => 'phone',
								'label' => 'Telefon Bimbit',
								'rules' => 'trim|required|is_unique[client.phone_client]|is_natural|xss_clean'
							),
						array
							(
								'field' => 'email',
								'label' => 'Email',
								'rules' => 'trim|required|is_unique[client.email_client]|valid_email|xss_clean'
							),
						array
							(
								'field' => 'fb',
								'label' => 'Facebook',
								'rules' => 'trim|is_unique[client.facebook_id_client]|xss_clean'
							),
						array
							(
								'field' => 'twitter',
								'label' => 'Twitter',
								'rules' => 'trim|is_unique[client.twitter_id_client]|xss_clean'
							),
						array
							(
								'field' => 'verify',
								'label' => 'Pengesahan Imej',
								'rules' => 'trim|required|exact_length[5]|is_natural_no_zero|xss_clean'
							),
					),
				);
/* End of file form_validator.php */
/* Location: ./application/config/form_validator.php */
