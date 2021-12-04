<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Halaman Daftar Transaksi</title>
</head>
<body>
    <h1>Halaman Daftar Transaksi</h1>
    <?php
        include 'koneksi.php';
        $query = mysqli_query($conn,"select * from tbmbuku INNER JOIN tbdtransaksi ON tbmbuku.kodebuku = tbdtransaksi.kodebuku");
    ?>
        <table border="2">
        <tr>
            <td>Id Transaksi</td>
            <td>Nama Peminjam</td>
            <td>Kode Buku</td>
            <td>Judul</td>
        </tr>
    <?php
        while ($baris=mysqli_fetch_array($query)){
        echo "<tr>";
        echo "<td>".$baris["idtransaksi"]."</td>";
        echo "<td>".$baris["namapeminjam"]."</td>";
        echo "<td>".$baris["kodebuku"]."</td>";
        echo "<td>".$baris["judul"]."</td>";
        echo "</tr>";
    }
    ?>

    </table>
    <p><a href="sewa.php">Kembali</a></p> 
</body>
</html>

