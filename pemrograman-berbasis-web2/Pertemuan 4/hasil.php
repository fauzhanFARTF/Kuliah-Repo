<!DOCTYPE html>
<html lang="en">
    <body>
        <?php 
            $conn = mysqli_connect("localhost","root","root","kuliah-5bmalamdb2");
            if (mysqli_connect_errno()){
                echo "Koneksi Gagal".mysqli_connect_error();
            }
                $vnama = $_POST['nama'];
                $vkelas = $_POST['combokelas'];
                $vjk = $_POST['radiojk'];
                $valamat = $_POST['alamat'];
            $query = mysqli_query($conn, "insert into mahasiswa2 (nama,kelas,jeniskelamin,alamat) values('$vnama','$vkelas','$vjk','$valamat')");
        ?>
        <h1>terima kasih telah mendaftar</h1>
    </body>
</html>