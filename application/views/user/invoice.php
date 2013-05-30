<?php
$ord = $this->uri->segment(3, 0);
$kl = $this->client->GetWhere(array('client_id' => $this->session->userdata('id_user')), NULL, NULL);
$oi = $this->order_item->GetWhere(array('order_my_id' => $ord), NULL, NULL);
?>
<table width="100%" border="0" cellspacing="2" cellpadding="2">
<tr>
	<td><?=$kl->row()->client?><br /><?=$kl->row()->address_client?></td>
</tr>
<tr>
	<td>&nbsp;</td>
</tr>
<tr>
	<td><b>ORDER NO : <?=$ord?></b></td>
</tr>
<tr>
	<td>

<table width="100%" border="1" cellspacing="2" cellpadding="2">
<tr>
	<th>&nbsp;</th>
	<th>Deskripsi</th>
	<th>Kuantiti</th>
	<th>Harga(RM)</th>
	<th>Jumlah(RM)</th>
</tr>
<?$i = 1?>
<?$rt = 0?>
<?foreach($oi->result() AS $it):?>
<tr>
	<td><?=$i++?></td>
	<td><?=$this->item->GetWhere(array('item_id' => $it->item_id), NULL, NULL)->row()->item?></td>
	<td align="right"><?=$it->quantity?></td>
	<td align="right"><?=$this->item->GetWhere(array('item_id' => $it->item_id), NULL, NULL)->row()->price?></td>
	<td align="right"><?=$it->total_price?><?$rt += $it->total_price?></td>
</tr>
<?endforeach?>
<tr>
	<th colspan="4" align="right">Jumlah</th>
	<th align="right"><?=$rt?></th>
</tr>
</table>

	</td>
</tr>
<tr>
	<td>&nbsp;</td>
</tr>
</table>
