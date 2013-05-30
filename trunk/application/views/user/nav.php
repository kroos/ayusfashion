<?extend('template/ayusfashion.php')?>

<? startblock('nav') ?>
<li><?=anchor('afa', 'Home', array('title' => 'Home'))?></li>
<li><?=anchor('oms/beli_sekarang', 'Beli Sekarang', array('title' => 'Beli Sekarang'))?></li>
<li><?=anchor('oms/show_cart', 'Cart', array('title' => 'Cart'))?></li>
<li><?=anchor('afa/checkout', 'CheckOut', array('title' => 'CheckOut'))?></li>
<li><?=($this->session->userdata('logged_in') === FALSE) ? anchor('oms/login', 'Log Masuk', array('title' => 'Log Masuk')) : anchor('afa/logout', 'Log Keluar', array('title' => 'Log Keluar'))?></li>
<? endblock() ?>

<? end_extend() ?>