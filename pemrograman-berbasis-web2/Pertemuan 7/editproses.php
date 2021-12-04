<html>
<body>
<?php
$nim = $_POST['nim'];
$nama = $_POST['nama'];
$alamat = $_POST['alamat'];
$conn = mysqli_connect ("localhost","root","root","kuliah-5bmalamdb2");
if (mysqli_connect_errno()){
	echo "Koneksi Gagal".mysqli_connect_error();
}
$query = mysqli_query($conn,"update mhs set nama='$nama', alamat='$alamat' where nim='$nim'");
?>
data sudah di update
<a href = "index.php">lihat data </a>
</body>
</html>

