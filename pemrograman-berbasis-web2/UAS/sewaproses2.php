<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Halaman Proses Transaksi</title>
</head>
<body>
    <h1>Halaman Proses Transaksi</h1>
    <?php
    include 'koneksi.php';
        $today = date ("Ymd");
        $vkodebuku = $_POST['hiddenkodebuku'];
        $vpenulis = $_POST['hiddenpenulis'];
        $vnamapeminjam = $_POST['txtnamapeminjam'];
        $query = mysqli_query($conn,"SELECT max(idtransaksi) AS last FROM tbdtransaksi WHERE idtransaksi LIKE '$today%'");
        $data = mysqli_fetch_array($query);
        $lastnotransaksi = $data['last'];
        $lastnourut = substr($lastnotransaksi,8,4);
        $nextnourut = $lastnourut+1;
        $nextnotransaksi = $today.sprintf('%04s',$nextnourut);
        $query = mysqli_query($conn,"INSERT INTO tbdtransaksi(idtransaksi,kodebuku,namapeminjam) VALUES ('$nextnotransaksi','$vkodebuku','$vnamapeminjam')");

    if($query) {
        $query2 = mysqli_query($conn,"SELECT * FROM tbmbuku WHERE kodebuku = '$vkodebuku'");
        $data2 = mysqli_fetch_array($query2);
        $vstatus = 'Dipinjam';
        $query3 = mysqli_query($conn,"update tbmbuku set status='$vstatus' WHERE kodebuku = '$vkodebuku'");
    ?>
        <p>Transaksi Sukses</p>
        Transaksi : <?php echo $nextnotransaksi; ?> <br>
        Kode Buku : <?php echo $data2['kodebuku']; ?> <br>
        Judul Buku : <?php echo $data2['judul']; ?><br>
        Nama Penulis : <?php echo $data2['penulis']; ?><br>
        Nama Peminjam : <?php echo $vnamapeminjam; ?> <br>
    <?php
    }
        else echo "Transaksi Gagal";
    ?>
    <br><br>
    <p><a href="sewa.php">Kembali</a></p>  
</body>
</html>

