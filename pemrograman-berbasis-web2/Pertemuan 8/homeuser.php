<?php
session_start();
//cek apakah user sudah login
If (!isset( $_SESSION['userid'])){
Die("anda belum login");//jika belum login jangan lanjut..
}//cek level user
If($_SESSION ['level']!="user"){
Die("anda bukan user");//jika bukan user maka jangan lanjut..
}
?>
<?php echo"<h3> welcome ".$_SESSION['userid']."</h3>"; ?>
<h4>ini halaman 3 (User) - Anda Sebagai User</h4>
