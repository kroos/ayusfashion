<? extend('user/nav.php') ?>

<? startblock('content') ?>
<h2>CheckOut</h2>
<p><div class='info'><?=@$info?></div></p>
<?if($this->cart->total_items() < 1):?>
	<p>Cart anda kosong. Sila klik pada <?=anchor('oms/beli_sekarang', 'Beli Sekarang')?> untuk membuat pembelian.</p>
<?else:?>
	<h3>Barangan dalam Cart anda</h3>
	<p>Kami amat menghargai jika anda dapat memasukkan <b>perkhidmatan POS</b> mengikut tempat anda untuk kami membuat penghantaran</p>
	<?=form_open()?>

	<table cellpadding="6" cellspacing="1" style="width:100%" border="0">
	
	<tr>
		<th>Kuantiti</th>
		<th>Keterangan Barang</th>
		<th style="text-align:right">Harga (RM)</th>
		<th style="text-align:right">Sub-Jumlah (RM)</th>
	</tr>
	<?$i = 1?>
	<?foreach($cart as $items): ?>
	<tr>
		<td><?=$items['qty']?></td>
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
		<td style="text-align:right"><strong>Jumlah</strong></td>
		<td style="text-align:right"><strong><?=$this->cart->format_number($this->cart->total())?></strong></td>
	</tr>
	</table>
<hr />
<?php
foreach($bank->result() as $i)
	{
		$bank1[$i->bank_id] = $i->bank;
	}
foreach($mode_payment->result() as $i)
	{
		$mode_payment1[$i->mode_payment_id] = $i->mode_payment;
	}
?>
	<h3>Maklumat Pembayaran</h3>
	<table border="0" width="100%">
		<tr>
			<td align="right"><?=form_label('Bank<font color="#FF0000">*</font>', 'bank')?> : </td>
			<td><?=form_dropdown('bank', $bank1, set_value('bank'), 'id="bank"')?></td>
		</tr>
		<tr>
			<td align="right"><?=form_label('Jumlah<font color="#FF0000">*</font>', 'jumlah')?> : </td>
			<td>RM <?=form_input(array('name' => 'total_payment', 'value' => set_value('total_payment'), 'id' => 'jumlah'))?><br /><?=form_error('total_payment')?></td>
		</tr>
		<tr>
			<td align="right"><?=form_label('Mode Pembayaran<font color="#FF0000">*</font>', 'mode_payment')?> : </td>
			<td><?=form_dropdown('mode_payment', $mode_payment1, set_value('mode_payment'), 'id="mode_payment"')?></td>
		</tr>
		<tr>
			<td align="right"><?=form_label('Tarikh<font color="#FF0000">*</font>', 'datepicker1')?> : </td>
			<td><?=form_input(array('name' => 'date', 'value' => set_value('date'), 'id' => 'datepicker1'))?><br /><?=form_error('date')?></td>
		</tr>
		<tr>
			<td align="right"><?=form_label('No Rujukan<font color="#FF0000">*</font>', 'ref')?> : </td>
			<td><?=form_input(array('name' => 'ref_no', 'value' => set_value('ref_no'), 'id' => 'ref'))?><br /><?=form_error('ref_no')?></td>
		</tr>
	</table>
	
<hr />
<h3>Sila masukkan alamat sekiranya barangan anda ingin diposkan ke tempat lain</h3>
	<table border="0" width="100%">
		<tr>
			<th>Alamat 1</th>
			<th>Alamat 2</th>
		</tr>
		<tr>
			<td align="right" valign="middle"><?=$id->row()->address_client?></td>
			<td>
				<table border="0" width="100%">
					<tr>
						<td align="right"><?=form_label('Nama (Optional)', 'nama')?> : </td>
						<td><?=form_input(array('name' => 'name', 'value' => set_value('name'), 'id' => 'nama'))?><br /><?=form_error('name')?></td>
					</tr>
					<tr>
						<td align="right"><?=form_label('Alamat (Optional)', 'alamat')?> : </td>
						<td><?=form_textarea(array('name' => 'address', 'value' => set_value('address'), 'rows' => 3, 'id' => 'alamat'))?><br /><?=form_error('address')?></td>
					</tr>
					<tr>
						<td align="right"><?=form_label('Telefon (Optional)', 'tel')?> : </td>
						<td><?=form_input(array('name' => 'phone', 'value' => set_value('phone'), 'id' => 'tel'))?><br /><?=form_error('phone')?></td>
					</tr>
					<tr>
						<td align="right"><?=form_label('Email (Optional)', 'mail')?> : </td>
						<td><?=form_input(array('name' => 'email', 'value' => set_value('email'), 'id' => 'mail'))?><br /><?=form_error('email')?></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
<hr />
	<h3>Informasi Tambahan</h3>
	<p>Sila masukkan ukuran pinggang dan punggung anda atau lain-lain maklumat untuk admin</p>
	<table border="0" width="100%">
		<tr>
			<td align="right"><?=form_label('Info Tambahan (Optional)', 'nfo')?> : </td>
			<td>
			<?=form_textarea(array('name' => 'info', 'value' => set_value('info'), 'rows' => 3, 'id' => 'nfo'))?><br /><?=form_error('info')?>
			</td>
		</tr>
	</table>

<p align="center"><div class="demo"><?=form_submit('save', 'Submit')?></div></p>
	<?=form_close()?>
<?endif?>
<? endblock() ?>

<?end_extend()?>