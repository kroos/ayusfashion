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
<?php
foreach ($size->result() as $as)
	{
		$size1[$as->size_id] = $as->size;
	}
?>
<table border="0" width="100%" cellpadding="2">
	<tr>
		<td>&nbsp;</td>
		<td><h1><?=$item->row()->item?></h1></td>
	</tr>
	<tr>
		<td rowspan="2" width="305"><img src="<?=base_url()?>images/items/<?=($item->row()->pict == NULL) ? 'item.jpg' : $item->row()->pict?>" width="300" height="300" /></td>
		<td valign="center"><?=$item->row()->long_desc?></td>
	</tr>
	<tr>
		<td>RM <?=$item->row()->price?></td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>
			<?=form_open('', '', array('product_id' => $item->row()->item_id, 'product_name' => $item->row()->item, 'product_price' => $item->row()->price))?>
			<?=form_label('Kuantiti : ', 'qty').form_input(array('name' => 'qty', 'value' => set_value('qty') == NULL ? 1 : set_value('qty'), 'id' => 'qty'))?><?=form_error('qty')?><br />
			<?=form_label('Size : ', 'sz').form_dropdown('size', $size1, set_value('size'), 'id="sz"')?><?=form_error('size')?>
			<div class="demo"><?=form_submit('add', 'Add to Cart')?></div>
			<?=form_close()?>
		</td>
	</tr>
</table>

<? endblock() ?>

<?end_extend()?>