<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Halaman Input Transaksi</title>
</head>
<body>
    <h1>Halaman Input Transaksi</h1>
    <?php
        include 'koneksi.php';
            $query = mysqli_query($conn,"select * from tbmbuku where kodebuku ='$_GET[vkodebuku]'");
            $data = mysqli_fetch_array ($query);
            $vstatus = $data['status'];
        if($vstatus=='Dipinjam'){
            echo "Buku tidak ada";
        }
        else {
    ?>
        <form method="post" action="sewaproses2.php">
            Kode Buku : <?php echo $data['kodebuku']; ?> <br>
            Judul Buku: <?php echo $data['judul']; ?> <br>
            Penulis: <?php echo $data['penulis']; ?> <br>
            Nama Peminjam: <input type ="text" name="txtnamapeminjam"><br>
            <?php $vkodebuku=$data['kodebuku']; ?>
            <?php $vpenulis=$data['penulis']; ?>
            <input type="hidden" name="hiddenkodebuku" value="<?php echo $vkodebuku?> ">
            <input type="hidden" name="hiddenpenulis" value="<?php echo $vpenulis?> ">
            <input type="submit" value="Submit">
        </form>
    <?php
        }
    ?>
    <p><a href="sewa.php">Kembali</a></p> 
</body>
</html>



 
