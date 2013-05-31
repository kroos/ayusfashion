<? extend('user/nav.php') ?>

<? startblock('content') ?>
<h2>Home</h2>
<p>Kemaskini Kata Laluan</p>
<p><div class='info'><?=@$info?></div></p>
<?=form_open()?>

<table width="95%" border="0" cellspacing="2" cellpadding="2">
  <tr>
    <th scope="row" align="right"><?=form_label('Username : ', 'nm')?></th>
    <td><?=form_input('username', (set_value('username') == NULL) ? $ra->row()->username : set_value('username'), 'id="nm"')?><br /><?=form_error('username')?></td>
  </tr>
  <tr>
    <th scope="row" align="right"><?=form_label('Password Lama : ', 'ph')?></th>
    <td><?=form_password('oldpass', set_value('oldpass'), 'id="ph"')?><br /><?=form_error('oldpass')?></td>
  </tr>
  <tr>
    <th scope="row" align="right"><?=form_label('Password Baru : ', 'em')?></th>
    <td><?=form_password('pass1', set_value('pass1'), 'id="em"')?><br /><?=form_error('pass1')?></td>
  </tr>
  <tr>
    <th scope="row" align="right"><?=form_label('Password Baru Sekali Lagi : ', 'fb')?></th>
    <td><?=form_password('pass2', set_value('pass2'), 'id="fb"')?><br /><?=form_error('pass2')?></td>
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