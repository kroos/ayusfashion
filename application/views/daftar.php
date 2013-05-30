<? extend('template/nav.php') ?>

<? startblock('content') ?>
<h2>Pendaftaran</h2>
<p></p>
<div class='info'><?=@$info?></div>
<?=form_open()?>

<table width="100%" border="0" cellspacing="2" cellpadding="2">
	<tr>
		<td align="right"><?=form_label('Nama<font color="#FF0000">*</font>:', 'nama')?></td>
		<td><?=form_input(array('name' => 'nama', 'value' => set_value('nama'), 'id' => 'nama', 'size' => 50))?></td>
		<td><?=form_error('nama')?></td>
	</tr>

	<tr>
		<td align="right"><?=form_label('Username<font color="#FF0000">*</font>:', 'username')?></td>
		<td><?=form_input(array('name' => 'username', 'value' => set_value('username'), 'id' => 'username', 'size' => 50))?></td>
		<td><?=form_error('username')?></td>
	</tr>

	<tr>
		<td align="right"><?=form_label('Password<font color="#FF0000">*</font>:', 'pass1')?></td>
		<td><?=form_input(array('name' => 'pass1', 'value' => set_value('pass1'), 'id' => 'pass1', 'size' => 50))?></td>
		<td><?=form_error('pass1')?></td>
	</tr>

	<tr>
		<td align="right"><?=form_label('Password Sekali Lagi<font color="#FF0000">*</font>:', 'pass2')?></td>
		<td><?=form_input(array('name' => 'pass2', 'value' => set_value('pass2'), 'id' => 'pass2', 'size' => 50))?></td>
		<td><?=form_error('pass2')?></td>
	</tr>

	<tr>
		<td align="right"><?=form_label('Alamat<font color="#FF0000">*</font>:', 'alamat')?></td>
		<td><?=form_textarea(array('name' => 'alamat', 'value' => set_value('alamat'), 'id' => 'alamat', 'cols' => 50, 'rows' => 4))?></td>
		<td><?=form_error('alamat')?></td>
	</tr>

	<tr>
		<td align="right"><?=form_label('Telefon Bimbit<font color="#FF0000">*</font>:', 'phone')?></td>
		<td><?=form_input(array('name' => 'phone', 'value' => set_value('phone'), 'id' => 'phone', 'size' => 50))?></td>
		<td><?=form_error('phone')?></td>
	</tr>

	<tr>
		<td align="right"><?=form_label('Email<font color="#FF0000">*</font>:', 'email')?></td>
		<td><?=form_input(array('name' => 'email', 'value' => set_value('email'), 'id' => 'email', 'size' => 50))?></td>
		<td><?=form_error('email')?></td>
	</tr>

	<tr>
		<td align="right"><?=form_label('Facebook&nbsp;:', 'fb')?></td>
		<td><?=form_input(array('name' => 'fb', 'value' => set_value('fb'), 'id' => 'fb', 'size' => 50))?></td>
		<td><?=form_error('fb')?></td>
	</tr>

	<tr>
		<td align="right"><?=form_label('Twitter&nbsp;:', 'twitter')?></td>
		<td><?=form_input(array('name' => 'twitter', 'value' => set_value('twitter'), 'id' => 'twitter', 'size' => 50))?></td>
		<td><?=form_error('twitter')?></td>
	</tr>

	<tr>
		<td align="right"><?=form_label('Pengesahan Imej<font color="#FF0000">*</font>:', 'verify').$cap['image']?></td>
		<td><?=form_input(array('name' => 'verify', 'value' => set_value('verify'), 'maxlength' => '5', 'size' => '5', 'id' => 'verify'))?></td>
		<td><?=form_error('verify')?></td>
	</tr>

	<tr>
		<td align="center" colspan="3"><div class='demo'><?=form_submit('reg', 'Daftar')?></div></td>
	</tr>
</table>

<?=form_close()?>
<? endblock() ?>

<?end_extend()?>