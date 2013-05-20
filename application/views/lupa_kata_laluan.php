<? extend('template/nav.php') ?>

<? startblock('content') ?>
<h2>Lupa Kata Laluan</h2>
<p align='center'>Jika anda tidak dapat mengingati kata laluan akaun anda, sila masukkan nombor telefon atau email anda. Kami akan cuba menghantar kata laluan anda melalui email yang telah anda daftarkan.</p>
<div class='info'><?=@$info?></div>
<?=form_open()?>
<table width="100%" border="0" cellspacing="2" cellpadding="2">
<tr>
	<td align='right'><?=form_label('Sila masukkan email atau nombor telefon&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;', 'notel')?></td>
	<td><?=form_input(array('name' => 'ntel', 'value' => set_value('ntel'), 'id' => 'notel'))?></td>
	<td><?=form_error('ntel')?></td>
</tr>

<tr>
	<td colspan='3' align='center'><div class='demo'><?=form_submit('send', 'Hantar')?></div></td>
</tr>
</table>
<?=form_close()?>
<? endblock() ?>

<?end_extend()?>