<? extend('template/nav.php') ?>

<? startblock('content') ?>
<h2>Hubungi Kami</h2>
<p>Gunakan borang ini untuk mengajukan sebarang pertanyaan anda pada kami</p>
<p align="center"><font color="#FF0000"><?=@$info?></font></p>
<?=form_open()?>

<table width="100%" border="0" cellspacing="2" cellpadding="2">
  <tr>
    <td align="right"><?=form_label('Nama		:', 'user')?></td>
    <td><?=form_input(array('name' => 'username', 'value' => set_value('username'), 'id' => 'user', 'size' => 50))?></td>
    <td><?=form_error('username')?></td>
  </tr>
  <tr>
    <td align="right"><?=form_label('Email Anda		:', 'mail')?></td>
    <td><?=form_input(array('name' => 'email', 'value' => set_value('email'), 'id' => 'mail', 'size' => 50))?></td>
    <td><?=form_error('email')?></td>
  </tr>
  <tr>
    <td align="right"><?=form_label('Mesej		:', 'mesej')?></td>
    <td>
		<?php
			//$CKEditor->basePath = '/ckeditor/'
			$this->ckeditor5->basePath = base_url().'js/ckeditor/';
			//$CKEditor->textareaAttributes = array("cols" => 80, "rows" => 10);
			$this->ckeditor5->textareaAttributes = array('id' => 'mesej');
			// Create a textarea element and attach CKEditor to it.
			$this->ckeditor5->editor('editor', set_value('editor'), array('toolbar' => 'Basic'));
		?>
	</td>
    <td><?=form_error('editor')?></td>
  </tr>
  <tr>
    <td align="right"><?=form_label('Pengesahan Imej		:', 'mail1').$cap['image']?></td>
    <td><?=form_input(array('name' => 'verify', 'value' => set_value('verify'), 'maxlength' => '5', 'size' => '5', 'id' => 'mail1'))?></td>
    <td><?=form_error('verify')?></td>
  </tr>
  <tr>
    <td align="center" colspan="3"><div class='demo'><?=form_submit('submit', 'Hantar Email')?></div></td>
  </tr>
</table>
<p align='center'>Email anda adalah keutamaan kami kerana anda adalah pelanggan kami<br />
	Email anda tidak akan digunakan oleh pihak ketiga yang tidak sah<br />
	<br />
</p>







<?=form_close()?>
<? endblock() ?>

<?end_extend()?>