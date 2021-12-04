<!DOCTYPE html>
<html lang="en">
    <body>
        <?php 
            $conn = mysqli_connect("localhost","root","root","kuliah-5bmalamdb2");
            if (mysqli_connect_errno()){
                echo "Koneksi Gagal".mysqli_connect_error();
            }
                $vNIM = $_POST['NIM'];
                $vnama =$_POST['nama'];
                $vemail = $_POST['email'];
                $valamat = $_POST['alamat'];
            $query = mysqli_query($conn, "insert into mahasiswa (NIM,nama,email,alamat) values('$vNIM','$vnama','$vemail','$valamat')");
        ?>
        <h1>terima kasih telah mendaftar</h1>
    </body>
</html>