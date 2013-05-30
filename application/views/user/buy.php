<? extend('user/nav.php') ?>

<? startblock('jquery') ?>
<!-- <script src="<?=base_url()?>js/jquery.min.js"></script> -->
<script src="<?=base_url()?>js/jquery.calculation.js"></script>
<script src="<?=base_url()?>js/jquery.field.js"></script>
<script type="text/javascript">
	var bIsFirebugReady = (!!window.console && !!window.console.log);

	$(document).ready(
		function (){
			// update the plug-in version
			$("#idPluginVersion").text($.Calculation.version);

/*			
			$.Calculation.setDefaults({
				onParseError: function(){
					this.css("backgroundColor", "#cc0000")
				}
				, onParseClear: function (){
					this.css("backgroundColor", "");
				}
			});
*/
			
			// bind the recalc function to the quantity fields
			$("input[name^=quantity]").bind("keyup", recalc);
			// run the calculation function now
			recalc();

			// automatically update the "#totalSum" field every time
			// the values are changes via the keyup event
			$("input[name^=sum]").sum("keyup", "#totalSum");

			// automatically update the "#totalAvg" field every time
			// the values are changes via the keyup event
			$("input[name^=avg]").avg({
				bind:"keyup"
				, selector: "#totalAvg"
				// if an invalid character is found, change the background color
				, onParseError: function(){
					this.css("backgroundColor", "#cc0000")
				}
				// if the error has been cleared, reset the bgcolor
				, onParseClear: function (){
					this.css("backgroundColor", "");
				}
			});

			// automatically update the "#minNumber" field every time
			// the values are changes via the keyup event
			$("input[name^=min]").min("keyup", "#numberMin");

			// automatically update the "#minNumber" field every time
			// the values are changes via the keyup event
			$("input[name^=max]").max("keyup", {
				selector: "#numberMax"
				, oncalc: function (value, options){
					// you can use this to format the value
					$(options.selector).val(value);
				}
			});

			// this calculates the sum for some text nodes
			$("#idTotalTextSum").click(
				function (){
					// get the sum of the elements
					var sum = $(".textSum").sum();

					// update the total
					$("#totalTextSum").text("$" + sum.toString());
				}
			);

			// this calculates the average for some text nodes
			$("#idTotalTextAvg").click(
				function (){
					// get the average of the elements
					var avg = $(".textAvg").avg();

					// update the total
					$("#totalTextAvg").text(avg.toString());
				}
			);
		}
	);

	function recalc(){
		$("[id^=total_item]").calc(
			// the equation to use for the calculation
			"qty * price",
			// define the variables used in the equation, these can be a jQuery object
			{
				qty: $("input[name^=quantity]"),
				price: $("[id^=price_item]")
			},
			// define the formatting callback, the results of the calculation are passed to this function
			function (s){
				// return the number as a dollar amount
				//return "$" + s.toFixed(2);
				return "" + s.toFixed(2);
			},
			// define the finish callback, this runs after the calculation has been complete
			function ($this){
				// sum the total of the $("[id^=total_item]") selector
				var sum = $this.sum();
				
				$("#grandTotal").text(
					// round the results to 2 digits
					//"$" + sum.toFixed(2)
					"" + sum.toFixed(2)
				);
			}
		);
	}
	</script>
<?endblock()?>



<? startblock('content') ?>
<h2>Pembelian</h2>
<p>mari beli...</p>
<?=form_open('', '', array('method' => 5, 'type' => 1, 'date' => datetime_db(now())))?>

<table width="100%" border="0" cellspacing="2" cellpadding="2">
  <tr>
    <td>
		<table border="0" cellpadding="2" width="100%" style="border-collapse: collapse" class="autoTable">
			<tr>
				<th>&nbsp;</th>
				<th>Item</th>
				<th>Unit</th>
				<th>Harga(RM)</th>
				<th>Jumlah(RM)</th>

			</tr>
			<?$iw = 1?>
			<?foreach($item->result() as $i):?>
			<tr>
				<td><?=$iw++?></td>
				<td><?=$i->item?></td>
				<td><?=form_input(array('name' => 'quantity[]', 'value' => (set_value('quantity[]') == NULL) ? 0 : set_value('quantity[]'), 'maxlength' => '3', 'size' => '3', 'id' => 'quantity[]'))?><br /><?=form_error('quantity[]')?></td>
				<td id="price_item[]"><?=$i->price?></td>
				<td id="total_item[]"><?=$i->price?></td>
			</tr>
			<?endforeach?>
			<tr>
				<th colspan="4" align="right">Jumlah Besar : </th>
				<th id="grandTotal">jumlah seluruh</th>
				<td>&nbsp;</td>
			</tr>
		</table>
	</td>
  </tr>
  <tr>
    <td>
	</td>
  </tr>
  <tr>
    <td>
	</td>
  </tr>
  <tr>
    <td>
	</td>
  </tr>
</table>

<?=form_close()?>
<? endblock() ?>

<?end_extend()?>