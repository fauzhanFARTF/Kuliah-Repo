<?php
session_start();
//cek apakah user sudah login
If (!isset($_SESSION['userid'])){
Die("anda belum login");//jika belum login jangan lanjut..
}//cek level user
If($_SESSION ['level']!="admin"){
Die("anda bukan admin");//jika bukan admin maka jangan lanjut..
}
?>
<?php echo"<h3> welcome ".$_SESSION['userid']."</h3>";?>
<h4>Ini halaman 1 (Admin) - Anda Sebagai Admin</h4>
