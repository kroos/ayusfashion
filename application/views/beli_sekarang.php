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
<h1>Shopping Cart</h1>
<p>Sila klik pada nama barangan untuk membeli barangan kesukaan anda. Apabila anda sudah selesai, klik pada button checkout.</p>

<table width="100%" border="0" cellspacing="2" cellpadding="2">
  <tr>
    <th scope="col">&nbsp;</th>
    <th scope="col">Nama</th>
    <th scope="col">Penerangan</th>
    <th scope="col">Harga(RM)</th>
  </tr>
  <?foreach($pro->result() AS $pr):?>
  <tr>
    <td valign="center"><img src="<?=base_url()?>images/items/<?=($pr->pict == NULL) ? 'item.jpg' : $pr->pict?>" width="100" height="100" /></td>
    <td valign="center"><?=anchor('oms/detail/'.$pr->item_id, $pr->item)?></td>
    <td valign="center"><?=$pr->short_desc?></td>
    <td valign="center"><?=$pr->price?></td>
  </tr>
  <?endforeach?>
</table>

<? endblock() ?>

<?end_extend()?>