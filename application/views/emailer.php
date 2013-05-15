<? extend('welcome_message') ?>

	<? startblock('body') ?>

		<p><?=@$info?></p>

		<?=form_open()?>

		<p><label for="name">Name : </label><?=form_input(array('name' => 'name', 'value' => set_value('name'), 'maxlength' => '50', 'size' => '50', 'id' => 'name', ))?><br /><?=form_error('name')?></p>
		<p><label for="email">Email : </label><?=form_input(array('name' => 'email', 'value' => set_value('email'), 'maxlength' => '50', 'size' => '50', 'id' => 'email', ))?><br /><?=form_error('email')?></p>
		<p><label for="subject">Subject : </label><?=form_input(array('name' => 'subject', 'value' => set_value('subject'), 'maxlength' => '50', 'size' => '50', 'id' => 'subject', ))?><br /><?=form_error('subject')?></p>
		<p>
		<?php
			//$CKEditor->basePath = '/ckeditor/'
			$this->ckeditor5->basePath = base_url().'js/ckeditor/';
			// Create a textarea element and attach CKEditor to it.
			$this->ckeditor5->editor('editor', set_value('editor'));
		?>
		<br /><?=form_error('editor')?>
		</p>

		<div class="demo"><?=form_submit('send', 'Send')?></div>

		<?=form_close()?>

	<? endblock() ?>

<?end_extend()?>