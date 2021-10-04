<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Halaman Sewa</title>
</head>
<body>
    <h1>Halaman Sewa</h1>
    <?php
        include 'koneksi.php';
        $query = mysqli_query($conn,"select * from tbmbuku");
    ?>
        <table border="2">
        <tr>
            <td>Kode Buku</td>
            <td>Judul</td>
            <td>Penulis</td>
            <td>Status</td>
            <td>Aksi</td>
        </tr>
    <?php
        while ($baris=mysqli_fetch_array($query)){
        echo "<tr>";
        echo "<td>".$baris["kodebuku"]."</td>";
        echo "<td>".$baris["judul"]."</td>";
        echo "<td>".$baris["penulis"]."</td>";
        echo "<td>".$baris["status"]."</td>";
        echo "<td><a href=sewaproses.php?vkodebuku=".$baris["kodebuku"].">Pinjam</td>";
        echo "</tr>";
    }
    ?>
        </table>
    <p><a href="cektransaksi.php">Cek Transaksi</a></p>  
</body>
</html>

