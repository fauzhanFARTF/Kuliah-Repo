<!DOCTYPE html>
<html lang="en">
<head>
    <title>Pertemuan 3</title>
</head>
    <body>
        <?php
            $vjumlah = $_POST['jml'];
            $vharga= $_POST['hrg'];
            $vbayar= $vjumlah * $vharga ;
            
            echo "Jumlah = $vjumlah<br>";
            echo "Harga = $vharga<br>";
            echo "Bayar = $vbayar<br>";
        ?>
    </body>
</html>

