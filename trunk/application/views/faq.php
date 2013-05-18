<? extend('template/nav.php') ?>

<? startblock('content') ?>
<p><img style="display: block; margin-left: auto; margin-right: auto;" src="<?=base_url()?>images/soalanlaz.png" alt="" width="334" height="38" /></p>
<table style="margin-left: auto; margin-right: auto; width: 600px;">
<tbody>
<tr>
<td>
<p style="margin-left: auto; margin-right: auto;"><span style="font-size: large;"><strong>Soalan-Soalan Yang Lazim Ditanya... </strong></span></p>
<p style="padding-left: 30px;">Sila baca sebelum anda menghubungi kami supaya proses pesanan anda dapat diproses dengan cepat.<strong><br /></strong></p>
<p style="padding-left: 30px;"><span style="font-size: medium;"><strong>1) Bagaimana saya ingin membuat pembelian?</strong></span></p>
<p style="padding-left: 60px;">Sebagai usaha kami untuk memudahkan urusan pembelian, kami menawarkan tiga jenis cara pesanan yang boleh dibuat:-</p>
<table style="margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td style="width: 339px;"><strong>i.   Di Laman Web <?=anchor('afa/buy', 'AyusFashion.com')?><br /></strong>
<p style="padding-left: 15px;">Boleh klik di link di atas atau baca panduan di sini --> <?=anchor('oms/beli_sekarang', 'Panduan Membuat Pembelian Online')?></p>
<strong>ii.   SMS</strong>
<p style="padding-left: 20px;">Email pesanan anda ke 016-2052420 atau 019-5711909</p>
<p style="padding-left: 20px;">Hantarkan nama, alamat, ukuran pinggang dan pinggul, kuantiti produk, jumlah bayaran, nama bank, tarikh dan masa pembayaran</p>
<p style="padding-left: 20px;"><img title="sms order" src="<?=base_url()?>images/smsorder.gif" alt="sms order" width="200" height="384" /></p>
<strong>iii. Email kepada <?=safe_mailto('ayusfashion@gmail.com', 'SAYA')?></strong>
<p style="padding-left: 20px;">Hantarkan nama, alamat, ukuran pinggang dan pinggul, kuantiti produk, jumlah bayaran, nama bank, tarikh dan masa pembayaran</p>
<p style="padding-left: 20px;">Contoh :</p>
<table style="margin-left: 45px; width: 268px; border: 2px solid inherit;" cellspacing="0" cellpadding="0" height="202">
<tbody>
<tr>
<td style="width: 327px;" valign="top">
<p style="padding-left: 30px;">Siti Zubaidah   Mat Hassan</p>
<p style="padding-left: 30px;">777, Kampung   Jaya Permai,</p>
<p style="padding-left: 30px;">43560 Bangi,   Selangor.</p>
<p style="padding-left: 30px;">013-2343444</p>
<p style="padding-left: 30px;">RM 169 x 2 =   338</p>
<p style="padding-left: 30px;">Bank CIMB</p>
<p style="padding-left: 30px;">20/08/2011   2:30 pm</p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<p style="text-align: center;"> </p>
<p><br /><br /></p>
<p style="padding-left: 30px;"><span style="font-size: medium;"><strong>2) </strong></span><span style="font-size: large;">Saya ingin buat pesanan korset tetapi tidak pasti jenis dan saiz yang sesuai dengan saya?</span></p>
<ol> </ol>
<p> </p>
<p style="padding-left: 60px;">Isikan maklumat pesanan dengan mengisi ukurlilit pinggang dan punggung  (cm atau inch) anda di ruangan <em>notify</em> <br />yang terdapat pada bahagian <em>Proof Of Payment</em>.</p>
<p style="padding-left: 60px;"><br /><img title="notify" src="<?=base_url()?>images/notify.jpg" alt="notify" width="509" height="362" /></p>
<p><br /><br /></p>
<p style="padding-left: 30px;"><span style="font-size: medium;"><strong>3) </strong></span><span style="font-size: large;">Bolehkah saya menggunakan kredit kad untuk membuat pembayaran?<br /></span></p>
<p style="padding-left: 60px;">Anda boleh menggunakan kredit kad Visa/MasterCard atau Paypal untuk membuat pembayaran selain dari bank yang terdapat <br />di Malaysia.</p>
<p style="padding-left: 60px;">Klik button dibawah setelah mengisi maklumat ukuran pinggang dan pinggul anda.</p>
<form action="https://www.paypal.com/cgi-bin/webscr" method="post"><input name="cmd" type="hidden" value="_xclick" /><input name="business" type="hidden" value="azaliha@gmail.com" /><input name="lc" type="hidden" value="MY" /><input name="item_name" type="hidden" value="Xtra Slim Korset" /><input name="amount" type="hidden" value="169.00" /><input name="currency_code" type="hidden" value="MYR" /><input name="button_subtype" type="hidden" value="services" /><input name="no_note" type="hidden" value="0" /><input name="tax_rate" type="hidden" value="5.000" /><input name="bn" type="hidden" value="PP-BuyNowBF:btn_buynowCC_LG.gif:NonHostedGuest" /> 
<table style="margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td><input name="on0" type="hidden" value="Ukuran Pinggang" /><strong>Ukuran Pinggang</strong></td>
</tr>
<tr>
<td><input maxlength="200" name="os0" type="text" /></td>
</tr>
<tr>
<td><input name="on1" type="hidden" value="Ukuran Pinggul" /><strong>Ukuran Pinggul</strong></td>
</tr>
<tr>
<td><input maxlength="200" name="os1" type="text" /></td>
</tr>
</tbody>
</table>
<table style="margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td><input alt="PayPal - The safer, easier way to pay online!" name="submit" src="https://www.paypalobjects.com/en_US/i/btn/btn_buynowCC_LG.gif" type="image" /><img src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" border="0" alt="" width="1" height="1" /></td>
</tr>
</tbody>
</table>
</form>
<p><br /><br /></p>
<p> </p>
<p style="padding-left: 30px;"><span style="font-size: medium;"><strong>4) </strong></span><span style="font-size: large;">Bagaimana cara lain untuk saya membuat pembayaran?</span></p>
<p style="padding-left: 60px;"><span style="font-size: small;">Anda boleh menggunakan kaedah <strong>online transfer, cash deposit, ATM Transfer, ATM deposit, cash deposit <br />machine</strong> (sila masukkan baki wang yang kami perlu jelaskan pada anda </span>di ruangan <em>notify</em> yang terdapat pada bahagian <br /><em>Proof Of Payment.</em></p>
<table style="margin-left: auto; margin-right: auto;" cellspacing="0" cellpadding="0" width="312" height="332">
<tbody>
<tr>
<td width="308" valign="top">
<p> </p>
<p>No. Akaun RHB : <strong>16207200070068</strong></p>
<p>Nama Akaun : <strong>Azaliha Abdullah</strong></p>
<p>---------------------------------------------------------</p>
</td>
</tr>
<tr>
<td width="308" valign="top">
<p> </p>
<p>No. Akaun CIMB : <strong>12260024005523</strong></p>
<p>Nama Akaun : <strong>Azaliha Abdullah</strong></p>
<p>---------------------------------------------------------</p>
</td>
</tr>
<tr>
<td width="308" valign="top">
<p> </p>
<p>No. Akaun Maybank :<strong> </strong><strong>152189045335</strong></p>
<p>Nama Akaun : <strong>Azaliha Abdullah</strong></p>
<p> </p>
</td>
</tr>
</tbody>
</table>
<p style="padding-left: 30px;"> </p>
<p style="padding-left: 30px;"><span style="font-size: medium;"><strong>5) </strong></span><span style="font-size: large;">Adakah ayusfashion menawarkan jenis korset yang lain selain dari xtraslim?</span></p>
<p style="padding-left: 30px;"><span style="font-size: small;"> Ya, anda boleh berkunjung ke <a href="http://www.ayusslim.com.my" target="_blank">www.ayusslim.com.my</a>  untuk melihat pelbagai jenis korset yang ditawarkan.<br /></span></p>
<br /></td>
</tr>
</tbody>
</table>
<table style="margin-left: auto; margin-right: auto;" border="0" width="660" height="403">
<tbody>
<tr>
<td style="padding-left: 30px;">
<p style="text-align: center;"><img src="<?=base_url()?>images/caraukur.png" alt="" width="143" height="37" /></p>
<p>Cara untuk mendapatkan ukurlilit pinggang dan ukurlilit punggung:</p>
<p><span style="text-decoration: underline;"><strong>ukurlilit pinggang</strong></span></p>
<p>lilitkan tali pengukur bermula dari kanan pinggang dibawa ke kiri pinggang (melalui belakang pinggang) dan kembali ke kanan pinggang (melalui hadapan pinggang). Pastikan tali pengukur jatuh di bahagian pusat.</p>
<p><span style="text-decoration: underline;"><strong>ukurlilit punggung</strong></span></p>
<p>lilitkan tali pengukur dari tepi kanan punggung dibawa ke tepi kiri punggung (melalui belakang punggung) dan kembali ke tepi kanan punggung (melalui hadapan punggung).</p>
<p>Sila rujuk gambar dibawah:</p>
<p><img src="<?=base_url()?>images/measurement.jpg" alt="" width="200" height="160" /></p>
<p> </p>
<p> </p>
</td>
</tr>
</tbody>
</table>
<table style="margin-left: auto; margin-right: auto;" border="0" width="50%">
<tbody>
<tr style="background-color: #c07197;">
<td width="10%"><span style="color: #ffffff;"><strong>size               <br /></strong></span></td>
<td width="20%"><span style="color: #ffffff;"><strong>ukurlilit pinggang        <br /></strong></span></td>
<td width="20%"><span style="color: #ffffff;"><strong>ukurlilit punggung                  <br /></strong></span></td>
</tr>
<tr style="background-color: #ddd9d9;">
<td>M</td>
<td>61-67cm</td>
<td>76-86cm</td>
</tr>
<tr style="background-color: #ddd9d9;">
<td>L</td>
<td>67-73cm</td>
<td>86-96cm</td>
</tr>
<tr style="background-color: #ddd9d9;">
<td>XL</td>
<td>73-79cm</td>
<td>89-99cm</td>
</tr>
<tr style="background-color: #ddd9d9;">
<td>XXL</td>
<td>79-85cm</td>
<td>92-102cm</td>
</tr>
<tr style="background-color: #ddd9d9;">
<td>XXXL</td>
<td>85-99cm</td>
<td>95-105cm</td>
</tr>
<tr style="background-color: #ddd9d9;">
<td>4XL</td>
<td>95-105cm</td>
<td>98-108cm</td>
</tr>
<tr style="background-color: #ddd9d9;">
<td>5XL</td>
<td>100-107cm</td>
<td>101-111cm</td>
</tr>
<tr style="background-color: #ddd9d9;">
<td>6XL</td>
<td>102-113cm</td>
<td>104-114cm</td>
</tr>
</tbody>
</table>
<p style="text-align: center;"> </p>
<p style="text-align: center;"><img src="<?=base_url()?>images/polisi.png" alt="" width="226" height="37" /></p>
<table style="padding-left: 30px; margin-left: auto; margin-right: auto;" border="0" cellpadding="1" width="600px">
<tbody>
<tr>
<td style="padding: 20px 0 0 0; background-color: #c07197;">
<p class="auto-style1"><span style="color: #ffffff;"><strong>  Polisi Penukaran Semula</strong></span></p>
</td>
</tr>
<tr>
<td>
<p> </p>
<p>Kami di AyusFashion.com menghargai keyakinan pelanggan-pelanggan terhadap kami. Kami menawarkan tiga (3) hari jaminan kepuasan terhadap produk korset kami. Anda mempunyai tiga (3) hari bekerja untuk memulangkan semula dan mesti mematuhi syarat-syarat berikut. Anda juga bertanggungjawab untuk kos penghantaran semula. Semua korset yang dihantar akan dinilai oleh bahagian pemeriksaan kualiti kami sebelum penukaran diluluskan.</p>
<p>Kami juga mengenakan kos pengurusan, pembungkusan dan penghantaran semula sebanyak RM 10 untuk setiap korset yang dipulangkan semula.</p>
<p>Kami akan memeriksa korset yang dihantar semula dan korset yang diluluskan untuk penukaran mestilah mematuhi syarat-syarat di bawah:-</p>
<p style="padding-left: 30px;"> 1. Anda hendaklah memaklumkan kepada pihak kami dalam masa 24jam (1 hari bekerja) mengenai permintaan memohon menukarkan korset samada melalui sms ke bahagian khidmat pelanggan atau email ayusfashion(at)gmail.com.</p>
<p style="padding-left: 30px;">2. Penghantaran semula mestilah dilakukan dalam tempoh tiga (3) hari bekerja dan dan nombor jejak (Tracking No) penghantaran diberikan kepada kami dalam tempoh tersebut. </p>
<p style="padding-left: 30px;"> 2. Tag mestilah terpasang dan dipulangkan dalam bungkusan asal.</p>
<p style="padding-left: 30px;"> 3. Korset mestilah dalam keadaan tiada kesan regangan pada kain korset atau tanda-tanda yang korset itu telah dipakai.</p>
<p style="padding-left: 30px;"> 4. Korset tidak mempunyai kesan dibasuh atau apa-apa kesan kotoran atau bau dari pewangi, mekap, losyen atau minyak angin. Kami mengesyorkan anda mandi sebelum mencuba korset. </p>
<p style="padding-left: 30px;"> 5. Kami memenuhi peraturan kesihatan (Health Code Regulation) untuk pakaian dalam  : anda diwajibkan memakai seluar dalam sendiri sebelum mencuba korset dan JANGAN mencuba seluar dalam yang disertakan sekali! Jika seluar dalam dipulangkan kepada kami, kami akan menghantar seluar dalam yang sama kepada anda. Hanya korset sahaja akan ditukarkan kepada saiz baru.</p>
<p>Setiap pertukaran hanya boleh dilakukan <strong>SEKALI SAHAJA</strong> dan caj RM10 akan dikenakan.</p>
<p>Setiap korset yang dihantar akan disemak oleh pihak AyusFashion.com dan pihak kami berhak untuk tidak menggantikan korset baru jika syarat diatas tidak dipenuhi. Kami juga berhak untuk menolak sekiranya anda tidak memberikan nombor jejak penghantaran dalam tempoh 3 hari bekerja. Kami juga berhak menolak sekiranya pemulangan anda tiba melebihi tujuh (7) hari bekerja dan tidak bertanggungjawab terhadap kelewatan disebabkan kesibukan anda. </p>
<p>Korset yang tidak diluluskan untuk pengantian akan diposkan kepada anda semula dalam tempoh lima (5) hari bekerja.</p>
<p> </p>
</td>
</tr>
</tbody>
</table>
<table style="padding-left: 30px; margin-left: auto; margin-right: auto;" border="0" width="600px">
<tbody>
<tr>
<td style="padding: 20px 0 0 0; background-color: #c07197;">
<p class="auto-style1"><span style="color: #ffffff;"><strong>Produk Rosak atau Tersilap Hantar</strong></span></p>
</td>
</tr>
<tr>
<td> 
<p>Sekiranya anda menerima korset yang mempunyai kerosakan disebabkan oleh pengilangan, sila hubungi bahagian khidmat pelanggan di nombor 016-2052420 atau 019-5711909 dalam masa 1 hari  bekerja selepas barang diterima.</p>
<p>Korset perlu dihantar kembali kepada kami dalam masa tiga (3) hari bekerja dan sampai ke pihak AyusFashion.com dalam masa tidak melebihi tujuh (7) hari bekerja.</p>
<p>Sila kembalikan korset dengan nota menyatakan sebab pemulangan seperti  "ROSAK" (nyatakan) atau "SILAP SAIZ" (nyatakan saiz yang anda inginkan) agar kami dapat memberikan membantu menyelesaikan masalah anda.</p>
<p>Jika terdapat kerosakan lain, selain dari yang anda sebutkan, pihak kami berhak untuk menolak proses penghantaran semula produk baru dan caj kos penghantaran tidak akan dipulangkan semula.</p>
<p> </p>
</td>
</tr>
</tbody>
</table>
<? endblock() ?>

<?end_extend()?>