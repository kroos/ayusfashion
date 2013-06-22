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
				
				//load db
				$this->load->database();

				//mesti ikut peraturan ni..
				//user mesti log on kalau tidak redirect to index
				if ($this->session->userdata('logged_in') === FALSE)
					{
						redirect('oms/login', 'location');
					}
			}
###############################################################################################################

		public function index()
			{
				//load model
				$this->load->model(array('client', 'order_my', 'order_item', 'item', 'payment_info', 'delivery_info'));

				$data['ty'] = $this->client->GetWhere(array('client_id' => $this->session->userdata('id_user')), NULL, NULL);
				$data['tw'] = $this->order_my->GetWhere(array('client_id' => $this->session->userdata('id_user')), NULL, NULL);
				$this->load->view('user/home', @$data);
			}

		public function kemaskini()
			{
				$this->load->model('client');
				$this->load->library('ckeditor/Ckeditor5');
				$id = $this->session->userdata('id_user');
				$this->form_validation->set_error_delimiters('<font color="#FF0000">', '</font>');
				if ($this->form_validation->run() === TRUE)
					{
						if ($this->input->post('save', TRUE))
							{
								$client = ucwords(strtolower($this->input->post('name', TRUE)));
								$address = ucwords(strtolower($this->input->post('address', TRUE)));
								$phone = $this->input->post('phone', TRUE);
								$email = $this->input->post('email', TRUE);
								$fbook = $this->input->post('fbook', TRUE);
								$twtr = $this->input->post('twtr', TRUE);

								$hj = $this->client->update(array('client_id' => $id), array('client' => $client, 'address_client' => $address, 'phone_client' => $phone, 'email_client' => $email, 'facebook_id_client' => $fbook, 'twitter_id_client' => $twtr));
								if($hj)
									{
										redirect('afa/index', 'location');
									}
									else
									{
										$data['info'] = 'Sila cuba sebentar lagi, kami tidak dapat mengemaskini data';
									}
							}
					}
				$data['ra'] = $this->client->GetWhere(array('client_id' => $id), NULL, NULL);
				$this->load->view('user/kemaskini', $data);
			}

		public function tukar_katalaluan()
			{
				$this->load->model('client');
				$id = $this->session->userdata('id_user');
				$this->form_validation->set_error_delimiters('<font color="#FF0000">', '</font>');
				if ($this->form_validation->run() === TRUE)
					{
						if ($this->input->post('save', TRUE))
							{
								$username = $this->input->post('username', TRUE);
								$oldpass = $this->input->post('oldpass', TRUE);
								$pass1 = $this->input->post('pass1', TRUE);
								$pass2 = $this->input->post('pass2', TRUE);

								if($oldpass == $this->session->userdata('password'))
									{
										$hj = $this->client->update(array('client_id' => $id), array('username' => $username, 'password' => $pass1));
										$session = array
														(
															'username' => $username,
															'password' => $pass1,
														);
										$this->session->set_userdata($session);
		
										if($hj)
											{
												redirect('afa/index', 'location');
											}
											else
											{
												$data['info'] = 'Sila cuba sebentar lagi, kami tidak dapat mengemaskini data';
											}
									}
									else
									{
										$data['info'] = 'Sila cuba sebentar lagi, kami tidak dapat mengemaskini data';
									}
							}
					}
				$data['ra'] = $this->client->GetWhere(array('client_id' => $id), NULL, NULL);
				$this->load->view('user/katalaluan', $data);
			}

		public function buy()
			{
				//load model
				$this->load->model(array('order_my', 'order_item', 'item', 'bank', 'delivery_address', 'delivery_info', 'feedback', 'order_item', 'payment_info', 'size', 'color'));

				//item part
				$data['item'] = $this->item->GetAll(NULL, NULL);

				$this->load->view('user/buy', @$data);
			}

		public function checkout()
			{
				//load library
				$this->load->library(array('cart', 'phpmailer/Phpmailer'));

				//load model
				$this->load->model(array('client', 'order_my', 'order_item', 'delivery_address', 'feedback', 'order_item', 'payment_info', 'bank', 'mode_payment', 'size'));

				//load helper
				$this->load->helper(array('array', 'search_array'));

				$this->form_validation->set_error_delimiters('<font color="#FF0000">', '</font>');
				if ($this->form_validation->run() === TRUE)
					{
						if ($this->input->post('save', TRUE))
							{
								//print_r($this->input->post(NULL, TRUE));
								$post = $this->input->post(NULL, TRUE);
								unset($post['save']);
								//print_r($post);

								//1st sekali check ada dak poslaju dalam cart...
								//echo '<pre>';
								//print_r($this->cart->contents());
								//echo '</pre>';

								if( search_array($this->cart->contents(), 'id', 13) == 13 || search_array($this->cart->contents(), 'id', 14) == 14 )
									{
										if($this->cart->format_number($this->cart->total()) <= $this->input->post('total_payment' , TRUE))
											{
												//pakai transaction
												$this->db->trans_start();
													//memula insert dalam order_my
													$this->order_my->insert(array('date_order' => datetime_db(now()), 'method_order_id' => 5, 'client_id' => $this->session->userdata('id_user'), 'order_type_id' => 1, 'order_status' => 1));
													$oid = $this->db->insert_id();
													//inserting into order_item
													foreach($this->cart->contents() AS $key)
														{
															//echo $key['rowid'].' rowid <br />'.$key['id'].' id <br />'.$key['qty'].' qty <br />'.$key['name'].' name <br />'.$key['price'].' price <br />'.$key['subtotal'].' subtotal <br />'.$key['options'].' options <br /><br />';
															if ($this->cart->has_options($key['rowid']) == TRUE)
																{
																	foreach ($this->cart->product_options($key['rowid']) as $option_name => $option_value)
																		{
																			//echo $option_name.' option_name <br />'.$option_value.' option_value <br /><br />';
																			$this->order_item->insert(array('order_my_id' => $oid, 'item_id' => $key['id'], 'size_id' => $option_value, 'color_id' => 7, 'quantity' => $key['qty'], 'discount' => '0.00', 'total_price' => $key['subtotal']));
																			//echo $this->db->last_query();
																		}
																}
														}
													//insert into payment_info
													$this->payment_info->insert(array('order_my_id' => $oid, 'bank_id' => $post['bank'], 'total_payment' => $post['total_payment'], 'mode_payment_id' => $post['mode_payment'], 'date_payment' => $post['date'], 'ref_no' => $post['ref_no']));
													if($post['address'] != NULL)
														{
															//insert into delivery_address
															$this->delivery_address->insert(array('order_my_id' => $oid, 'name_delivery' => $post['name'], 'address_delivery' => $post['address'], 'phone_delivery' => $post['phone'], 'email_delivery' => $post['email']));
														}
													if($post['info'] != NULL)
														{
															$this->feedback->insert(array('order_my_id' => $oid, 'comments' => $post['info']));
														}
												$this->db->trans_complete();

												if ($this->db->trans_status() === TRUE)
													{
														//$this->cart->destroy();
														$rt = $this->client->GetWhere(array('client_id' => $this->session->userdata('id_user')), NULL, NULL)->row();
														//send invoice
														//process phpmailer
														$mesej =	"
																	<p>Salam ".$rt->client.",</p>
																	<p>Kami mengucapkan ribuan terima kasih atas pembelian anda. Kami dari ".$this->config->item('stitle')." mendoakan ".$rt->client."  mencapai impian melalui produk kami. Berikut adalah rujukan Order No untuk ".$rt->client." rujuk di website kami bagi mengetahui proses penghantaran.</p>
																	<p>Order No : <b>".$oid."</b></p>
																	<p>Jangan lupa untuk berkongsi kisah kejayaan anda dengan kami selepas 30 hari!!!</p>
																	<p>&nbsp;</p>
																	<p>Salam sayang dari kami ".$this->config->item('stitle')."</p>
																	<p>Sila jangan reply email ini. Anda boleh menghubungi kami di ayustrading@gmail.com</p>
																	";
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
														$this->phpmailer->AddAddress($rt->email_client, $rt->client);										//recipient

														$this->phpmailer->IsHTML(TRUE);
														$this->phpmailer->Subject = 'Inbois pembayaran dari '.$this->config->item('stitle');
														$this->phpmailer->MsgHTML($mesej);
														//$this->phpmailer->AddAttachment(base_url.'afa/invoice/'.$oid, 'Invoice_'.$oid.'.pdf');												// attachment
														$this->phpmailer->AltBody    = "To view the message, please use HTML compatible email viewer!";		// optional, comment out and test

														if (!$this->phpmailer->Send())
															{
																$data['info'] = $this->phpmailer->ErrorInfo;
															}
															else
															{
																$data['info'] = 'Penghantaran email dan transaksi proses berjaya. Kami akan membuat penghantaran secepat mungkin selepas pembayaran disahkan.';
																$this->cart->destroy();
															}
													}
													else
													{
														$data['info'] = 'Sila cuba sebentar lagi. Kami tidak dapat memproses order anda';
													}
											}
											else
											{
												$data['info'] = 'Minta maaf, pembayaran anda tidak mencukupi';
											}
									}
									else
									{
										$data['info'] = 'Sila masukkan perkhidmatan POSLAJU kedalam Cart anda';
									}
							}
					}

				//user_id
				$id = $this->session->userdata('id_user');
				
				$data['cart'] = $this->cart->contents();
				$data['id'] = $this->client->GetWhere(array('client_id' => $id), NULL, NULL);
				
				//payment part
				$data['bank'] = $this->bank->GetAll(NULL, NULL);
				$data['mode_payment'] = $this->mode_payment->GetAll(NULL, NULL);

				$this->load->view('user/checkout', @$data);
			}

		public function invoice()
			{
				//load library
				$this->load->library('tcpdf/mypdf');

				//load model
				$this->load->model(array('client', 'order_my', 'order_item', 'item', 'bank', 'delivery_address', 'delivery_info', 'feedback', 'order_item', 'payment_info', 'size', 'color'));

				$ord = $this->uri->segment(3, 0);
				if(is_numeric($ord) && $ord > 0)
					{
						//1st sekali pastikan no order dengan id adalah sama..
						//ini bermakna dia tak boleh tekan sebarang no untuk tgk invoice org lain...
						//so.....
						$gu = $this->order_my->GetWhere(array('order_my_id' => $ord, 'client_id' => $this->session->userdata('id_user')), NULL, NULL);
						if($gu->num_rows() < 1)
							{
								redirect('afa/index' , 'location');
							}
							else
							{
							
								$kl = $this->client->GetWhere(array('client_id' => $this->session->userdata('id_user')), NULL, NULL);
								$oi = $this->order_item->GetWhere(array('order_my_id' => $ord), NULL, NULL);

								// set document information
								$this->mypdf->SetCreator(PDF_CREATOR);
								$this->mypdf->SetAuthor('Zaugola');
								$this->mypdf->SetTitle($this->config->item('stitle').' Invoice');
								$this->mypdf->SetSubject('Invoice '.$ord.'');
								$this->mypdf->SetKeywords('korset, girdle, bengkung, corset');

								// set default header data
								$this->mypdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE, PDF_HEADER_STRING);

								// set header and footer fonts
								$this->mypdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
								$this->mypdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

								// set default monospaced font
								$this->mypdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

								// set margins
								$this->mypdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
								$this->mypdf->SetHeaderMargin(PDF_MARGIN_HEADER);
								$this->mypdf->SetFooterMargin(PDF_MARGIN_FOOTER);

								// set auto page breaks
								$this->mypdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);

								// set image scale factor
								$this->mypdf->setImageScale(PDF_IMAGE_SCALE_RATIO);

								// set font
								$this->mypdf->SetFont('times', 'BI', 12);

								// add a page
								$this->mypdf->AddPage();

								// print a block of text using Write()
								$this->mypdf->SetY(60);

								$tell = array('');
								$this->load->library('parser');
								$html = $this->parser->parse('user/invoice', $tell);

								$this->mypdf->writeHTML($html, true, false, true, false, '');

								$this->mypdf->Output('Invoice_'.$ord.'.pdf', 'I');
							}
					}
			}

		public function invoicehtml()
			{
				//load library
				$this->load->library('tcpdf/mypdf');

				//load model
				$this->load->model(array('client', 'order_my', 'order_item', 'item', 'bank', 'delivery_address', 'delivery_info', 'feedback', 'order_item', 'payment_info', 'size', 'color'));

				$data['ord'] = $this->uri->segment(3, 0);
				if(is_numeric($data['ord']) && $data['ord'] > 0)
					{
						//1st sekali pastikan no order dengan id adalah sama..
						//ini bermakna dia tak boleh tekan sebarang no untuk tgk invoice org lain...
						//so.....
						$gu = $this->order_my->GetWhere(array('order_my_id' => $data['ord'], 'client_id' => $this->session->userdata('id_user')), NULL, NULL);
						if($gu->num_rows() < 1)
							{
								redirect('afa/index' , 'location');
							}
							else
							{
								$data['kl'] = $this->client->GetWhere(array('client_id' => $this->session->userdata('id_user')), NULL, NULL);
								$data['oi'] = $this->order_item->GetWhere(array('order_my_id' => $data['ord']), NULL, NULL);

								$this->load->view('user/invoice', $data);
							}
					}
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