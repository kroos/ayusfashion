<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Welcome extends CI_Controller
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
				$this->load->view('welcome_message');
			}
		
		public function pdf()
			{
				// set document information
				$this->tcpdf->SetCreator(PDF_CREATOR);
				$this->tcpdf->SetAuthor('Nicola Asuni');
				$this->tcpdf->SetTitle('TCPDF Example 001');
				$this->tcpdf->SetSubject('TCPDF Tutorial');
				$this->tcpdf->SetKeywords('TCPDF, PDF, example, test, guide');

				// set default header data
				$this->tcpdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE.' 001', PDF_HEADER_STRING, array(0,64,255), array(0,64,128));
				$this->tcpdf->setFooterData($tc=array(0,64,0), $lc=array(0,64,128));

				// set header and footer fonts
				$this->tcpdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
				$this->tcpdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

				// set default monospaced font
				$this->tcpdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

				//set margins
				$this->tcpdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
				$this->tcpdf->SetHeaderMargin(PDF_MARGIN_HEADER);
				$this->tcpdf->SetFooterMargin(PDF_MARGIN_FOOTER);

				//set auto page breaks
				$this->tcpdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);

				//set image scale factor
				$this->tcpdf->setImageScale(PDF_IMAGE_SCALE_RATIO);

				//set some language-dependent strings
				//$this->tcpdf->setLanguageArray($l);

				// ---------------------------------------------------------

				// set default font subsetting mode
				$this->tcpdf->setFontSubsetting(true);

				// Set font
				// dejavusans is a UTF-8 Unicode font, if you only need to
				// print standard ASCII chars, you can use core fonts like
				// helvetica or times to reduce file size.
				$this->tcpdf->SetFont('dejavusans', '', 14, '', true);

				// Add a page
				// This method has several options, check the source code documentation for more information.
				$this->tcpdf->AddPage();

				// set text shadow effect
				$this->tcpdf->setTextShadow(array('enabled'=>true, 'depth_w'=>0.2, 'depth_h'=>0.2, 'color'=>array(196,196,196), 'opacity'=>1, 'blend_mode'=>'Normal'));

				// Set some content to print
				$html = <<<EOD
				<h1>Welcome to <a href="http://www.tcpdf.org" style="text-decoration:none;background-color:#CC0000;color:black;">&nbsp;<span style="color:black;">TC</span><span style="color:white;">PDF</span>&nbsp;</a>!</h1>
				<i>This is the first example of TCPDF library.</i>
				<p>This text is printed using the <i>writeHTMLCell()</i> method but you can also use: <i>Multicell(), writeHTML(), Write(), Cell() and Text()</i>.</p>
				<p>Please check the source code documentation and other examples for further information.</p>
				<p style="color:#CC0000;">TO IMPROVE AND EXPAND TCPDF I NEED YOUR SUPPORT, PLEASE <a href="http://sourceforge.net/donate/index.php?group_id=128076">MAKE A DONATION!</a></p>
EOD;

				// Print text using writeHTMLCell()
				$this->tcpdf->writeHTMLCell($w=0, $h=0, $x='', $y='', $html, $border=0, $ln=1, $fill=0, $reseth=true, $align='', $autopadding=true);

				// ---------------------------------------------------------

				// Close and output PDF document
				// This method has several options, check the source code documentation for more information.
				$this->tcpdf->Output('example_001.pdf', 'I');

				//============================================================+
				// END OF FILE
				//============================================================+
			}

		public function emailer()
			{
				$this->form_validation->set_error_delimiters('<font color="#FF0000">', '</font>');
				if ($this->form_validation->run() == FALSE)
					{
						//form
						$this->load->view('emailer');
					}
					else
					{
						//form process
						if($this->input->post('send', TRUE))
							{
								$name = $this->input->post('name', TRUE);
								$email = $this->input->post('email', TRUE);
								$subject = $this->input->post('subject', TRUE);
								$message = $this->input->post('editor', TRUE);

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
								$this->phpmailer->AddAddress($g->row()->email, $g->row()->name);									//recipient

								$this->phpmailer->IsHTML(TRUE);
								$this->phpmailer->Subject = 'IPTIPs Student Management System Pemerolehan Kata Laluan';
								$this->phpmailer->MsgHTML($message);
								$this->phpmailer->AltBody    = "To view the message, please use an HTML compatible email viewer!";	// optional, comment out and test

								if (!$this->phpmailer->Send())
									{
										$data['info'] = $this->phpmailer->ErrorInfo;
									}
									else
									{
										$data['info'] = 'Success sending email';
									}
								$this->load->view('emailer', $data);
							}
					}
			}

		public function pdff()
			{
				$this->fpdf->AddPage();
				$this->fpdf->SetFont('Arial', '', 12);
				$txt="FPDF is a PHP class which allows to generate PDF files with pure PHP, that is to say ".
					"without using the PDFlib library. F from FPDF stands for Free: you may use it for any ".
					"kind of usage and modify it to suit your needs.\n\n";
				for($i=0;$i<25;$i++) 
					$this->fpdf->MultiCell(0, 5, $txt, 0, 'J');
				$this->fpdf->Output();
			}
	}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */