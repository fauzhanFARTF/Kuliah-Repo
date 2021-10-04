<html>
<body>
<?php
$conn = mysqli_connect ("localhost","root","root","kuliah-5bmalamdb2");
if (mysqli_connect_errno()){
	echo "Koneksi Gagal".mysqli_connect_error();
}
$nim= $_GET['nim'];
$query = mysqli_query($conn,"delete from mhs where nim='$nim'") ;?>
 
data sudah di hapus
<a href = "index.php">lihat data </a>
</body>
</html>
