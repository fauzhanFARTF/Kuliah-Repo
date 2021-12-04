<!DOCTYPE html>
<html lang="en">
    <body>
        <?php 
            $conn = mysqli_connect("localhost","root","root","dtbuts-pbw2");
            if (mysqli_connect_errno()){
                echo "Koneksi Gagal".mysqli_connect_error();
            }
            $query = mysqli_query($conn,"select * from tbpinjambuku");
        ?>
        <table border= "2">
            <tr>    
                <td>Kode Buku</td>
                <td>Judul</td>
                <td>Penerbit</td>
                <td>Status</td>
            </tr>
            <?php
                While($row = mysqli_fetch_array ($query)){
                    echo"<tr>";
                    echo"<td>".$row["kodebuku"]."</td>";
                    echo"<td>".$row["judul"]."</td>";
                    echo"<td>".$row["penerbit"]."</td>";
                    echo"<td>".$row["status"]."</td>";
                    echo"</tr>";
                }
            ?>
        </table>
    </body>
</html>




