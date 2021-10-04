<?php
session_start();
$conn = mysqli_connect ("localhost","root","root","dbmultiuser");
if (mysqli_connect_errno()){
	echo "Koneksi Gagal".mysqli_connect_error();
}
$userid = $_POST['userid'];
$psw = $_POST['psw'];
$op = $_GET['op'];
if ($op== "in")
{
$cek = mysqli_query ($conn,"SELECT * FROM tbmultiuser where userid='$userid' and password='$psw'");
	if (mysqli_num_rows($cek)==1)
	{ //jika berhasil akan benilai satu
		$c = mysqli_fetch_array($cek);
		$_SESSION['userid'] = $c['userid'];
		$_SESSION['level'] = $c['level'];
		if ($c['level']=="admin")
		{
			header("location:homeadmin.php");
		}
		else if ($c['level']=="user")
		{
			header("location:homeuser.php");
		}
	}
	else
	{
		die("password salah <a href=\"javascript:history.back()\"> kembali </a>");
	}	
}
else if($op== "out") {
	unset($_SESSION['userid']);
	unset($_SESSION['level']);
	header("location:index.php");
}
?>
