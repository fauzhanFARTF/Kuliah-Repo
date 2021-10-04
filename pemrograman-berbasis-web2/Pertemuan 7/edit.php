<html><body>
<?php
$conn = mysqli_connect ("localhost","root","root","kuliah-5bmalamdb2");
if (mysqli_connect_errno()){
	echo "Koneksi Gagal".mysqli_connect_error();
}
$nim = $_GET['nim'] ;
$query = mysqli_query($conn,"select * from mhs where nim = '$nim'");
$row = mysqli_fetch_array ($query)
?>
</pre>
<form action= "editproses.php" method="POST">
<pre>
Nim: <input type="text"name="nim"value="<?php echo $row['nim']; ?>">
Nama: <input type="text"name="nama"value="<?php echo $row['nama']; ?>">
Alamat : <input type="text"name="alamat"value="<?php echo $row['alamat']; ?>">
<input type="submit"value="simpan"/>
</pre>
</form>
</body>
</html>
