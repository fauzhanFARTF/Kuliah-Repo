<!DOCTYPE html>
<html lang="en">
    <body>
        <?php 
            $conn = mysqli_connect("localhost","root","root","dtbuts-pbw2");
            if (mysqli_connect_errno()){
                echo "Koneksi Gagal".mysqli_connect_error();
            }
                $vkodebuku = $_POST['kodebuku'];
                $vjudul = $_POST['judul'];
                $vpenerbit = $_POST['penerbit'];
                $vstatus = $_POST['status'];
            $query = mysqli_query($conn, "insert into tbpinjambuku (kodebuku,judul,penerbit,status) values('$vkodebuku','$vjudul','$vpenerbit','$vstatus')");
        ?>
        <h1>terima kasih telah menginput</h1>
    </body>
</html>