<? extend('template/nav.php') ?>

<? startblock('content') ?>
<h2>Log Masuk</h2>
<p>Kami mengucapkan ribuan terima kasih kepada anda kerana anda telah mengambil 1 step untuk berusaha kearah kebahagiaan anda. Sila login untuk meneruskan pembelian</p>
<p>Sekiranya anda masih lagi tidak mempunyai akaun, klik pada button "Belum mempunyai akaun dengan kami?"</p>
<div class='info'><?=@$info?></div>
<?=form_open()?>
<table width="100%" border="0" cellspacing="2" cellpadding="2">
<tr>
	<td align='right'><?=form_label('Username', 'uname')?></td>
	<td><?=form_input(array('name' => 'usrnm', 'value' => set_value('usrnm'), 'id' => 'uname'))?></td>
	<td><?=form_error('usrnm')?></td>
</tr>
<tr>
	<td align='right'><?=form_label('Password', 'pword')?></td>
	<td><?=form_password(array('name' => 'pswd', 'value' => set_value('pswd'), 'id' => 'pword'))?></td>
	<td><?=form_error('pswd')?></td>
</tr>
<tr>
	<td colspan='3' align='center'><div class='demo'><?=form_submit('login', 'Log Masuk')?></div></td>
</tr>
</table>
<?=form_close()?>
<div class='demo'>
	<?=anchor('oms/lupa_kata_laluan', 'Lupa Kata Laluan?')?><br />
	<?=anchor('oms/daftar', 'Belum mempunyai akaun dengan kami?')?><br />
</div>
<? endblock() ?>

<?end_extend()?>