<?php
if ($this->session->userdata('logged_in') === TRUE)
	{
		extend('user/nav.php');
	}
	else
	{
		extend('template/nav.php');
	}
?>

<? startblock('content') ?>
<h2>Show Cart</h2>
<p>Anda boleh kemaskini bilangan barangan yang anda beli disini. Sila letakkan angka 0 untuk mengeluarkan barangan yang tidak berkenaan.</p>
<p align="center"><font color="#FF0000"><?=@$info?></font></p>


<?=form_open()?>
<p><div class="demo"><?=anchor('oms/beli_sekarang', 'Beli Belah')?></div></p>

<?if($this->cart->total_items() < 1):?>
<p>Cart anda kosong. Sila klik <?=anchor('oms/beli_sekarang', 'Beli Belah')?></p>
<?else:?>
	<table cellpadding="6" cellspacing="1" style="width:100%" border="0">
	
	<tr>
		<th>Qty</th>
		<th>Item Description</th>
		<th style="text-align:right">Item Price (RM)</th>
		<th style="text-align:right">Sub-Total (RM)</th>
	</tr>
	
	<?$i = 1?>
	<?foreach($cart as $items): ?>
	<?=form_hidden($i.'[rowid]', $items['rowid'])?>
	
	<tr>
		<td><?=form_input(array('name' => $i.'[qty]', 'value' => $items['qty'], 'maxlength' => '3', 'size' => '5'))?><?=form_error($i.'[qty]')?></td>
		<td><?=$items['name']?>
			<?if ($this->cart->has_options($items['rowid']) == TRUE): ?>
				<p>
					<?foreach ($this->cart->product_options($items['rowid']) as $option_name => $option_value): ?>
					<strong><?=$option_name?> : </strong> <?=$this->size->GetWhere(array('size_id' => $option_value), NULL, NULL)->row()->size?><br />
					<?endforeach?>
				</p>
			<?endif?>
		</td>
		<td style="text-align:right"><?=$this->cart->format_number($items['price'])?></td>
		<td style="text-align:right"><?=$this->cart->format_number($items['subtotal'])?></td>
	</tr>
	<?$i++?>
	<?endforeach?>
	
	<tr>
		<td colspan="2"> </td>
		<td style="text-align:right"><strong>Total</strong></td>
		<td style="text-align:right"><strong><?=$this->cart->format_number($this->cart->total())?></strong></td>
	</tr>
	</table>
<?endif?>

<p><div class="demo"><?php echo form_submit('update', 'Update Your Cart').anchor('afa/checkout', 'CheckOut')?></div></p>
<?=form_close()?>
<? endblock() ?>

<?end_extend()?>