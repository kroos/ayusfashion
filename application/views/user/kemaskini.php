<? extend('user/nav.php') ?>

<? startblock('content') ?>
<h2>Home</h2>
<p>Kemaskini Butiran Peribadi</p>
<p><div class='info'><?=@$info?></div></p>
<?=form_open()?>

<table width="95%" border="0" cellspacing="2" cellpadding="2">
  <tr>
    <th scope="row" align="right"><?=form_label('Nama : ', 'nm')?></th>
    <td><?=form_input('name', (set_value('name') == NULL) ? $ra->row()->client : set_value('name'), 'id="nm"')?><br /><?=form_error('name')?></td>
  </tr>
  <tr>
    <th scope="row" align="right"><?=form_label('Alamat : ', 'ad')?></th>
    <td>
		<?php
			$this->ckeditor5->basePath = base_url().'js/ckeditor/';
			$this->ckeditor5->textareaAttributes = array('id' => 'ad');
			$this->ckeditor5->editor('address', (set_value('address') == NULL) ? $ra->row()->address_client : set_value('address'), array('toolbar' => 'Basic'));
		?>
		<br /><?=form_error('address')?>
	</td>
  </tr>
  <tr>
    <th scope="row" align="right"><?=form_label('Telefon : ', 'ph')?></th>
    <td><?=form_input('phone', (set_value('phone') == NULL) ? $ra->row()->phone_client : set_value('phone'), 'id="ph"')?><br /><?=form_error('phone')?></td>
  </tr>
  <tr>
    <th scope="row" align="right"><?=form_label('Email : ', 'em')?></th>
    <td><?=form_input('email', (set_value('email') == NULL) ? $ra->row()->email_client : set_value('email'), 'id="em"')?><br /><?=form_error('email')?></td>
  </tr>
  <tr>
    <th scope="row" align="right"><?=form_label('Facebook : ', 'fb')?></th>
    <td><?=form_input('fbook', (set_value('fbook') == NULL) ? $ra->row()->facebook_id_client : set_value('fbook'), 'id="fb"')?><br /><?=form_error('fbook')?></td>
  </tr>
  <tr>
    <th scope="row" align="right"><?=form_label('Twitter : ', 'tw')?></th>
    <td><?=form_input('twtr', (set_value('twtr') == NULL) ? $ra->row()->twitter_id_client : set_value('twtr'), 'id="tw"')?><br /><?=form_error('twtr')?></td>
  </tr>
  <tr>
    <th scope="row" align="right"><div class="demo"><?=form_submit('save', 'Simpan')?></div></th>
    <td>&nbsp;</td>
  </tr>
</table>
<p>&nbsp;</p>

<?=form_close()?>
<? endblock() ?>

<?end_extend()?>