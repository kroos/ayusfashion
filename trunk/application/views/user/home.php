<? extend('user/nav.php') ?>

<? startblock('content') ?>
<h2>Home</h2>
<p>Butiran Peribadi</p>

<table width="95%" border="0" cellspacing="2" cellpadding="2">
  <tr>
    <th scope="row" align="right">Nama : </th>
    <td><?=$ty->row()->client?></td>
  </tr>
  <tr>
    <th scope="row" align="right">Alamat : </th>
    <td><?=$ty->row()->address_client?></td>
  </tr>
  <tr>
    <th scope="row" align="right">Telefon : </th>
    <td><?=$ty->row()->phone_client?></td>
  </tr>
  <tr>
    <th scope="row" align="right">Email : </th>
    <td><?=$ty->row()->email_client?></td>
  </tr>
  <tr>
    <th scope="row" align="right">Facebook : </th>
    <td><?=$ty->row()->facebook_id_client?></td>
  </tr>
  <tr>
    <th scope="row" align="right">Twitter : </th>
    <td><?=$ty->row()->twitter_id_client?></td>
  </tr>
  <tr>
    <th scope="row" align="right"><div class="demo"><?=anchor('afa/kemaskini', 'Kemaskini Profail').anchor('afa/tukar_katalaluan', 'Tukar KataLaluan')?></div></th>
    <td>&nbsp;</td>
  </tr>
</table>
<p>&nbsp;</p>
<table width="95%" border="0" cellspacing="2" cellpadding="2">
	<tr>
		<th>Order No</th>
		<th>Tarikh Order</th>
		<th>Item</th>
		<th>Pembayaran</th>
		<th>Penghantaran</th>
		<th>Tempoh</th>
		<th>Status Order</th>
	</tr>
	<?foreach($tw->result() AS $uy):?>
		<tr>
			<td><div class="demo"><?=anchor('afa/invoice/'.$uy->order_my_id, $uy->order_my_id, 'target="_blank"')?></div></td>
			<td><?=datetime_view($uy->date_order)?></td>
			<td>
				<table width="100%" border="0" cellspacing="2" cellpadding="2">
				<?$gh = $this->order_item->GetWhere(array('order_my_id' => $uy->order_my_id), NULL, NULL)?>
					<?foreach($gh->result() AS $fg):?>
						<tr>
							<td><?=$this->item->GetWhere(array('item_id' => $fg->item_id), NULL, NULL)->row()->item?></td>
						</tr>
					<?endforeach?>
				</table>
			</td>
			<td>RM <?=$this->payment_info->GetWhere(array('order_my_id' => $uy->order_my_id), NULL, NULL)->row()->total_payment?></td>
			<?$nb = $this->delivery_info->GetWhere(array('order_my_id' => $uy->order_my_id), NULL, NULL)?>
			<td><?=($nb->num_rows() < 1) ? 'Belum Pos' : $nb->row()->tracking_no?></td>
			<td><?=($uy->order_status == 1) ? timespan(mysql_to_unix($uy->date_order), now()) : 'Order Tutup'?></td>
			<td><?=($uy->order_status == 1) ? 'Buka' : 'Tutup'?></td>
		</tr>
	<?endforeach?>
</table>
<?=form_open()?>



<?=form_close()?>
<? endblock() ?>

<?end_extend()?>