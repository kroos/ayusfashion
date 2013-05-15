<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
		<title><?=$this->config->item('title')?></title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="description" content="This is a Codeigniter Initial Template." />
		<meta name="keywords" content="codeigniter, plugin, helper" />
		<meta name="author" content="Zaugola" />
		<link rel="shortcut icon" href="<?=base_url()?>images/favicon.ico" type="image/x-icon" />

	<link rel="stylesheet" type="text/css" href="<?=base_url()?>css/welcome.css" />

	<link rel="stylesheet" type="text/css" href="<?=base_url()?>css/jquery/jquery-ui-1.9.1.custom.css" />

	<script src="<?=base_url()?>js/jquery/jquery-1.8.2.js"></script>
	<script src="<?=base_url()?>js/jquery/jquery-ui-1.9.1.custom.js"></script>
	<script type="text/javascript" src="<?=base_url()?>js/jquery/jquery-ui-timepicker-addon.js"></script>
</head>
<body>

	<script>
		$(function() {
			$( "input[type=submit], a, button", ".demo" )
				.button();
			$( "#radioset" ).buttonset();

			// Datepicker
			$('#datepicker1').datetimepicker({dateFormat: "yy-mm-dd", timeFormat: "hh:mm:ss", showSecond: true, showMillisec: false, ampm: false, stepHour: 1, stepMinute: 1, stepSecond: 5});
		});
	</script>


<div id="container">
	<h1>Welcome to CodeIgniter!</h1>

	<div id="body">
	<? start_block_marker('body') ?>

		<p>The page you are looking at is being generated dynamically by CodeIgniter.</p>

		<p>If you would like to edit this page you'll find it located at:</p>
		<code>application/views/welcome_message.php</code>

		<p>The corresponding controller for this page is found at:</p>
		<code>application/controllers/welcome.php</code>

	<? end_block_marker() ?>
	</div>

	<p class="footer">Page rendered in <strong>{elapsed_time}</strong> seconds using <strong>{memory_usage}</strong></p>
</div>

<?=anchor(site_url(), 'HOME', array('title' => 'Home'))?>&nbsp;<?=anchor('welcome/pdf', 'TCPDF', array('target' => '_blank'))?>&nbsp;<?=anchor('welcome/pdff', 'FPDF', array('target' => '_blank'))?>&nbsp;<?=anchor('welcome/emailer', 'PHPMailer', array('title' => 'PHPMailer'))?>

</body>
</html>