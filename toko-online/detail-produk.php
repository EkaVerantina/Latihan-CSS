<?php
	error_reporting(0);
	include 'db.php';
	$kontak = mysqli_query($conn, "SELECT admin_telp, admin_email, admin_address FROM tb_admin WHERE admin_id = 1");
	$a = mysqli_fetch_object($kontak);

	$produk = mysqli_query($conn,"SELECT * FROM tb_product WHERE product_id = '".$_GET['id']."' ");
	$p = mysqli_fetch_object($produk);
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Taurusia</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">
</head>
<body>
	<header>
	<div class="container">
		<h1><a href="index.php">Taurusia</a></h1>
		<ul>
			<li><a href="Produk.php">Produk</a></li>
		</ul>
	</div>
	</header>

	<!-- search -->
	<div class="search">
		<div class="container">
			<form action="produk.php">
				<input type="text" name="search" placeholder="Cari Produk" value="<?php echo $_GET['search']?>">
				<input type="hidden" name="kat" value="<?php echo $_GET['kat']?>">
				<input type="submit" name="cari" value="Cari Produk">
			</form>
		</div>
	</div>

	<!-- product detail -->
	<div class="section">
		<div class="container">
			<h3>Detail Produk</h3>
			<div class="box">
				<div class="col-2">
					<img src="produk/<?php echo $p->product_image?>" width="100%">
				</div>
				<div class="col-2">
					<h3><?php echo $p->product_name?></h3>
					<h4>Rp. <?php echo number_format($p->product_price) ?></h4>
					<p>Deskripsi :<br>
					<?php echo $p->product_description?>
					</p>
					<P><a href="https://api.whatsapp.com/send?phone=<?php echo $a->admin_telp?>&text=Hai, Saya tertarik dengan produk ini." target="_blank">Hubungi Via Whatsapp <img src="img/whatsapp.png" width="50px"></a></P>
				</div>
			</div>
		</div>
	</div>

	<div class="footer">
		<div class="container">
			<h4>Alamat</h4>
			<p><?php echo $a->admin_address?></p>
			<h4>Email</h4>
			<p><?php echo $a->admin_email?></p>
			<h4>No. Hp</h4>
			<p><?php echo $a->admin_telp?></p>
			<small>Copyright &copy; 2020 - Taurusia</small>
		</div>
	</div>
</body>
</html>