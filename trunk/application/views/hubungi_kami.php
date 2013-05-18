<? extend('template/nav.php') ?>

<? startblock('content') ?>
<?=form_open()?>

<table width="100%" border="0" cellspacing="2" cellpadding="2">
  <tr>
    <td><?=form_label('Nama		:', 'user')?></td>
    <td><?=form_input(array('name' => 'username', 'value' => set_value('username'), 'id' => 'user', 'size' => 50))?></td>
    <td><?=form_error('username')?></td>
  </tr>
  <tr>
    <td><?=form_label('Email		:', 'mail')?></td>
    <td><?=form_input(array('name' => 'email', 'value' => set_value('email'), 'id' => 'mail', 'size' => 50))?></td>
    <td><?=form_error('email')?></td>
  </tr>
  <tr>
    <td><?=form_label('Mesej		:', 'mesej')?></td>
    <td>
		<?php
			//$CKEditor->basePath = '/ckeditor/'
			$this->ckeditor5->basePath = base_url().'js/ckeditor/';
			// Create a textarea element and attach CKEditor to it.
			$this->ckeditor5->editor('editor', set_value('editor'), array('toolbar' => 'Basic'));
		?>
	</td>
    <td><?=form_error('editor')?></td>
  </tr>
  <tr>
    <td><?=form_label('Pengesahan Imej		:', 'mail')?></td>
    <td><?//=form_?></td>
    <td><?//=form_?></td>
  </tr>
  <tr>
    <td><?=form_label('Email		:', 'mail')?></td>
    <td><?//=form_?></td>
    <td><?//=form_?></td>
  </tr>
</table>








<?=form_close()?>
<? endblock() ?>

<?end_extend()?>