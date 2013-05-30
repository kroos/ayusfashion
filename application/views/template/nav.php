<?extend('template/ayusfashion.php')?>

<? startblock('nav') ?>
<li><?=anchor('', 'Home', array('title' => 'Home'))?></li>
<li><?=anchor('oms/beli_sekarang', 'Beli Sekarang', array('title' => 'Beli Sekarang'))?></li>
<li><?=anchor('oms/show_cart', 'Cart', array('title' => 'Cart'))?></li>
<li><?=anchor('oms/hubungi_kami', 'Hubungi Kami', array('title' => 'Hubungi Kami'))?></li>
<li><?=anchor('oms/senarai_agen', 'Senarai Agen', array('title' => 'Senarai Agen'))?></li>
<li><?=anchor('oms/faq', 'FAQ', array('title' => 'FAQ'))?></li>
<li><?=anchor('oms/testimoni', 'Testimoni', array('title' => 'Testimoni'))?></li>
<li><?=anchor('oms/ayus_di_media', 'Ayus di Media', array('title' => 'Ayus di Media'))?></li>
<li><?=($this->session->userdata('logged_in') === FALSE) ? anchor('oms/login', 'Log Masuk', array('title' => 'Log Masuk')) : anchor('afa/logout', 'Log Keluar', array('title' => 'Log Keluar'))?></li>
<? endblock() ?>

<? end_extend() ?>