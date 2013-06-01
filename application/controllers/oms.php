<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Oms extends CI_Controller
{
		//contructor => default utk semua function dlm controller nih...
		public function __construct()
			{
				parent::__construct();

				//helper
				$this->load->helper(array('url', 'template_inheritance', 'date'));

				//load library
				$this->load->library(array('session'));

/* 				if ($this->session->userdata('logged_in') === TRUE)
					{
						redirect('/afa/buy', 'location');
					} */
			}
###############################################################################################################

		public function index()
			{
				$this->load->view('home');
			}

###############################################################################################################
//shopping cart
		public function beli_sekarang()
			{
				//load library
				$this->load->library(array('cart'));

				//load database
				$this->load->database();
				
				//load model
				$this->load->model(array('item'));

				//show products
				$data['pro'] = $this->item->GetAll(NULL, NULL);
				//echo $this->db->last_query();
				$this->load->view('beli_sekarang', @$data);
			}

		public function detail()
			{
				//load library
				$this->load->library(array('cart', 'form_validation'));

				//load database
				$this->load->database();
				
				//load model
				$this->load->model(array('item', 'size'));

				//load helper
				$this->load->helper(array('form'));

				// show the product and an "add to cart" link
				$product_id = $this->uri->segment(3, 0);

				if($product_id == NULL || $product_id == 0)
					{
						redirect('oms/beli_sekarang', 'location');
					}
					else
					{
						if(is_numeric($product_id))
							{
								$data['item'] = $this->item->GetWhere(array('item_id' => $product_id), NULL, NULL);
								$data['size'] = $this->size->GetAll(NULL, NULL);
							}
					}

				$this->form_validation->set_error_delimiters('<font color="#FF0000">', '</font>');
				if ($this->form_validation->run() === TRUE)
					{
						if ($this->input->post('add', TRUE))
							{
								//add to cart
								// add the selected product to the cart
								$dataa = array
										(
											'id' => $this->input->post('product_id', TRUE),
											'qty' => $this->input->post('qty', TRUE),
											'price' => $this->input->post('product_price', TRUE),
											'name' => $this->input->post('product_name', TRUE),
											'options' => array
															(
																'size' => $this->input->post('size', TRUE)
															)
										);

								//print_r($dataa);
								$fp = $this->cart->insert($dataa);
								if($fp)
									{
										redirect('oms/show_cart', 'location');
									}
							}
					}
				$this->load->view('detail', @$data);
			}

		function show_cart()
			{
				//load library
				$this->load->library(array('cart'));

				//load database
				$this->load->database();
				
				//load model
				$this->load->model(array('item', 'size'));

				//load helper
				$this->load->helper(array('form'));

				//$this->form_validation->set_error_delimiters('<font color="#FF0000">', '</font>');
				//if ($this->form_validation->run() === TRUE)
				//	{
						if ($this->input->post('update', TRUE))
							{
								for ($i = 1; $i <= $this->cart->total_items(); $i++)
									{
											$item = $this->input->post($i, TRUE);
											$dataa = array(
													'rowid' => $item['rowid'], 
													'qty' => $item['qty']
											);
											$this->cart->update($dataa);
									}
							}
				//	}
				$data['cart'] = $this->cart->contents();
				$this->load->view('show_cart', @$data);
			}

###############################################################################################################
		public function hubungi_kami()
			{
				//load helper
				$this->load->helper(array('form', 'captcha'));

				//load library
				$this->load->library(array('form_validation', 'phpmailer/Phpmailer', 'ckeditor/Ckeditor5'));

				//load database
				$this->load->database();

				//load model
				$this->load->model(array('captcha'));

				$vals = array
					(
						'word' => rand(10000, 99999),
						'img_path' => './images/captcha/',
						'img_url' => base_url().'images/captcha/',
						//'font_path' => './path/to/fonts/texb.ttf',
						'img_width' => 150,
						'img_height' => 30,
						'expiration' => 1800
					);
				$data['cap'] = create_captcha($vals);
				//echo $data['cap']['word'];
				$this->captcha->insert_captcha($data['cap']['time'], $data['cap']['word']);

				$this->form_validation->set_error_delimiters('<font color="#FF0000">', '</font>');
				if ($this->form_validation->run() === TRUE)
					{
						if ($this->input->post('submit', TRUE))
							{
								$nama = ucwords(strtolower($this->input->post('username', TRUE)));
								$email = $this->input->post('email', TRUE);
								$mesej = ucwords(strtolower($this->input->post('editor', TRUE)));
								$verify = $this->input->post('verify', TRUE);

								//we need to check the capthca
								$expiration = time()-1800; // Two hour limit
								//delete captcha 2 hours ago
								$this->captcha->delete_captcha($expiration);

								//check the new 1
								$check = $this->captcha->captcha($verify, $expiration)->num_rows();

								if ($check == 0)
									{
										$data['info'] = 'You must submit the word that appears in the image';
										$this->captcha->delete(array('word' => $vals['word']));
									}
									else
									{
										//process phpmailer
										$this->load->library('phpmailer/Pop3');
										$this->pop3->Authorise($this->config->item('pop3_server'), $this->config->item('pop3_port'), 30, $this->config->item('username'), $this->config->item('password'), 1);

										$this->phpmailer->IsSMTP();
										$this->phpmailer->SMTPDebug  = 0;																	//debug = 0 (no debug), 1 = errors and messages, 2 = messages only
										$this->phpmailer->SMTPAuth   = $this->config->item('SMTP_auth');									//enable SMTP authentication, TRUE or FALSE
										$this->phpmailer->Host       = $this->config->item('smtp_server');									//smtp server
										$this->phpmailer->Port       = $this->config->item('smtp_port');									//change this port if you are using different port than mine
										$this->phpmailer->SMTPSecure = $this->config->item('SMTP_Secure');									//tls or ssl

										$this->phpmailer->Username   = $this->config->item('username');										//email account username
										$this->phpmailer->Password   = $this->config->item('password');										//email account password

										$this->phpmailer->AddReplyTo($email, $nama);														//reply from who
										$this->phpmailer->SetFrom($email, $nama);															//from who?
										$this->phpmailer->AddAddress($this->config->item('from'), $this->config->item('from_name'));		//recipient

										$this->phpmailer->IsHTML(TRUE);
										$this->phpmailer->Subject = 'Hubungi kami dari '.site_url();
										$this->phpmailer->MsgHTML($mesej);
										$this->phpmailer->AltBody    = "To view the message, please use an HTML compatible email viewer!";	// optional, comment out and test

										if (!$this->phpmailer->Send())
											{
												$data['info'] = $this->phpmailer->ErrorInfo;
												$this->captcha->delete(array('word' => $vals['word']));
											}
											else
											{
												$data['info'] = 'Success sending email';
												$this->captcha->delete(array('word' => $verify));
												//echo $vals['word'];
											}
									}
							}
					}
				$this->load->view('hubungi_kami', $data);
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
				$this->load->view('ayus_di_media');
			}

		public function daftar()
			{
				//load helper
				$this->load->helper(array('form', 'captcha'));

				//load library
				$this->load->library(array('form_validation'));

				//load database
				$this->load->database();

				//load model
				$this->load->model(array('captcha', 'client'));

				$vals = array
					(
						'word' => rand(10000, 99999),
						'img_path' => './images/captcha/',
						'img_url' => base_url().'images/captcha/',
						//'font_path' => './path/to/fonts/texb.ttf',
						'img_width' => 150,
						'img_height' => 30,
						'expiration' => 1800
					);
				$data['cap'] = create_captcha($vals);
				//echo $data['cap']['word'];
				$this->captcha->insert_captcha($data['cap']['time'], $data['cap']['word']);

				$this->form_validation->set_error_delimiters('<font color="#FF0000">', '</font>');
				if ($this->form_validation->run() === TRUE)
					{
						if ($this->input->post('reg', TRUE))
							{
								$nama = ucwords(strtolower($this->input->post('nama', TRUE)));
								$pass2 = $this->input->post('pass2', TRUE);
								$alamat = ucwords(strtolower($this->input->post('alamat', TRUE)));
								$phone = $this->input->post('phone', TRUE);
								$email = $this->input->post('email', TRUE);
								$fb = $this->input->post('fb', TRUE);
								$twitter = $this->input->post('twitter', TRUE);
								$verify = $this->input->post('verify', TRUE);
								$username = $this->input->post('username', TRUE);

								//we need to check the capthca
								$expiration = time()-1800; // Two hour limit
								//delete captcha 2 hours ago
								$this->captcha->delete_captcha($expiration);

								//check the new 1
								$check = $this->captcha->captcha($verify, $expiration)->num_rows();

								if ($check == 0)
									{
										$data['info'] = 'You must submit the word that appears in the image';
										//$this->captcha->delete(array('word' => $vals['word']));
									}
									else
									{
										$client = $this->client->insert(array('client' => $nama, 'username' => $username, 'password' => $pass2, 'address_client' => $alamat, 'phone_client' => $phone, 'email_client' => $email, 'facebook_id_client' => $fb, 'twitter_id_client' => $twitter, 'group_id' => 2));
										if($client)
											{
												$session = array
																(
																	'id_user' => $this->db->insert_id(),
																	'username' => $username,
																	'password' => $pass2,
																	'logged_in' => TRUE
																);
		
												$this->session->set_userdata($session);
												redirect('afa/index', 'location');
												$this->captcha->delete(array('word' => $verify));
												//$data['info'] = 'OK';
											}
											else
											{
												$data['info'] = 'Maaf. Sila cuba sebentar lagi';
											}
									}
							}
					}
				$this->load->view('daftar', @$data);
			}

		public function lupa_kata_laluan()
			{
				//load helper
				$this->load->helper(array('form'));

				//load library
				$this->load->library(array('phpmailer/Phpmailer', 'form_validation'));

				//load database
				$this->load->database();

				//load model
				$this->load->model(array('client'));

				$this->form_validation->set_error_delimiters('<font color="#FF0000">', '</font>');
				if ($this->form_validation->run() === TRUE)
					{
						if ($this->input->post('send', TRUE))
							{
								$emntel = $this->input->post('ntel', TRUE);
								$re = $this->client->GetWhere("phone_client = '$emntel' OR email_client = '$emntel'", NULL, NULL);
								//echo $this->db->last_query();
								if($re->num_rows() == 1)
									{
										if($re->row()->email_client)
											{
												//echo $re->num_rows();
												$msg = "
												<p>Terima kasih ".$re->row()->client." kerana menjadi pelanggan kami. Kami mendoakan anda mencapai impian anda dalam masa yang singkat.</p>
												<p>&nbsp;</p>
												<p>Berikut adalah butir maklumat anda :</p>
												<p>Username : ".$re->row()->username."</p>
												<p>Password : ".$re->row()->password."</p>
												<p>Layarilah ".anchor(site_url(), 'laman web kami')." untuk maklumat terkini mengenai produk dan juga promosi yang sedang dan akan berlangsung.</p>
												<p>&nbsp;</p>
												<p>Sekian, terima kasih.</p>";

												//process phpmailer
												$this->load->library('phpmailer/Pop3');
												$this->pop3->Authorise($this->config->item('pop3_server'), $this->config->item('pop3_port'), 30, $this->config->item('username'), $this->config->item('password'), 1);

												$this->phpmailer->IsSMTP();
												$this->phpmailer->SMTPDebug  = 0;																	//debug = 0 (no debug), 1 = errors and messages, 2 = messages only
												$this->phpmailer->SMTPAuth   = $this->config->item('SMTP_auth');									//enable SMTP authentication, TRUE or FALSE
												$this->phpmailer->Host       = $this->config->item('smtp_server');									//smtp server
												$this->phpmailer->Port       = $this->config->item('smtp_port');									//change this port if you are using different port than mine
												$this->phpmailer->SMTPSecure = $this->config->item('SMTP_Secure');									//tls or ssl

												$this->phpmailer->Username   = $this->config->item('username');										//email account username
												$this->phpmailer->Password   = $this->config->item('password');										//email account password

												$this->phpmailer->AddReplyTo($this->config->item('from'), $this->config->item('from_name'));		//reply from who
												$this->phpmailer->SetFrom($this->config->item('from'), $this->config->item('from_name'));			//from who?
												$this->phpmailer->AddAddress($re->row()->email_client, $re->row()->client);														//recipient

												$this->phpmailer->IsHTML(TRUE);
												$this->phpmailer->Subject = 'Kata Laluan dari '.$this->config->item('title');
												$this->phpmailer->MsgHTML($msg);
												$this->phpmailer->AltBody = "To view the message, please use an HTML compatible email viewer!";	// optional, comment out and test

												if (!$this->phpmailer->Send())
													{
														$data['info'] = $this->phpmailer->ErrorInfo;
													}
													else
													{
														$data['info'] = 'Success sending email';
													}
											}
											else
											{
												$data['info'] = 'Sila berhubung dengan kami melalui telefon kerana email anda tiada didalam sistem';
											}
									}
									else
									{
										$data['info'] = 'Maaf. Nombor telefon atau email anda tidak dapat dijumpai dalam sistem.';
									}
							}
					}
				$this->load->view('lupa_kata_laluan', @$data);
			}

		public function login()
			{
				//load helper
				$this->load->helper(array('form', 'password'));

				//load library
				$this->load->library(array('form_validation', 'cart'));

				//load database
				$this->load->database();

				//load model
				$this->load->model(array('client'));

				$this->form_validation->set_error_delimiters('<font color="#FF0000">', '</font>');
				if ($this->form_validation->run() === TRUE)
					{
						if ($this->input->post('login', TRUE))
							{
								$user = $this->input->post('usrnm', TRUE);
								$pass = $this->input->post('pswd', TRUE);

								$ro = $this->client->GetWhere(array('username' => $user, 'password' => $pass), NULL, NULL);
								if($ro->num_rows() == 1)
									{
										$session = array
														(
															'id_user' => $ro->row()->client_id,
															'username' => $user,
															'password' => $pass,
															'logged_in' => TRUE,
														);

										$this->session->set_userdata($session);
										if(count($this->cart->total_items()) < 1)
											{
												redirect('oms/beli_sekarang', 'location');
											}
											else
											{
												redirect('afa/checkout', 'location');
											}
									}
									else
									{
										$data['info'] = 'Username dan Password tidak sama.';
									}
							}
					}
				$this->load->view('log_masuk', @$data);
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

/* End of file oms.php */
/* Location: ./application/controllers/oms.php */