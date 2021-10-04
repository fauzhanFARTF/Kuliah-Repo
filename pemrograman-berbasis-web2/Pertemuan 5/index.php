<!DOCTYPE html>
<html lang="en">
    <body>
        <?php 
            $conn = mysqli_connect("localhost","root","root","kuliah-5bmalamdb2");
            if (mysqli_connect_errno()){
                echo "Koneksi Gagal".mysqli_connect_error();
            }
            $query = mysqli_query($conn,"select * from tblatihan3");
        ?>
        <table border= "2">
            <tr>    
                <td>kode</td>
                <td>nama</td>
                <td>penulis</td>
                <td>foto</td>
            </tr>
            <?php
                While($row = mysqli_fetch_array ($query)){
                    echo"<tr>";
                    echo"<td>".$row["kode"]."</td>";
                    echo"<td>".$row["judul"]."</td>";
                    echo"<td>".$row["penulis"]."</td>";
                    echo"<td><img width=100 height=100 src=".$row["foto"]."></td>";
                    echo"</tr>";
                }
            ?>
        </table>
    </body>
</html>