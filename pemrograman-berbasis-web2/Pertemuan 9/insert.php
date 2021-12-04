<?php
//koneksi ke mysql
$conn = mysqli_connect ("localhost","root","root","dbmultiinput");
if (mysqli_connect_errno()){
	echo "Koneksi Gagal".mysqli_connect_error();
}
$n=$_POST['jum2']; //membaca jumlah data
for ($i=1; $i<=$n; $i++) //looping
{
	$vnim = $_POST['txtnim'.$i];
	$vnama= $_POST['txtnama'.$i];
	$vjurusan=$_POST['cbjurusan'.$i];
	if ((!empty($vnim)) && (!empty($vnama)) && (!empty($vjurusan)))
	{
	$query= mysqli_query($conn,"insert into mhs (nim,nama,jurusan) values ('$vnim','$vnama','$vjurusan')");
		if ($query)
		echo "Input Data Sukses<br>";
	else
		echo "Input Data Gagal<br>";
	}
}
?>