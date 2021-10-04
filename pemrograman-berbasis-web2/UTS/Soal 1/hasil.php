<!DOCTYPE html>
<html lang="en">
<head>
    <title>Hasil Volume</title>
</head>
<body  bgcolor="pink">
    <?php
        $beapersks =100000;
        $va = $_POST['a'];
        $vb= $_POST['b'];
        $vtotalbea= $va + ($beapersks*$vb) ;
        

        echo "total Bea = $vtotalbea<br>";
    ?>
</body>
</html>

