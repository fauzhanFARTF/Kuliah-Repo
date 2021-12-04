<html>
<body>
<?php
$conn = mysqli_connect ("localhost","root","root","kuliah-5bmalamdb2");
if (mysqli_connect_errno()){
	echo "Koneksi Gagal".mysqli_connect_error();
}
$query = mysqli_query($conn,"select * from mhs");

?>
<table border= "2">
<tr>
<td>nim</td>
<td>nama </td>
<td>alamat</td>
<td>hapus</td>
<td>edit</td>
</tr>
 
<?php
while($row=mysqli_fetch_array ($query))
{
	echo"<tr>";
	echo"<td>".$row["nim"]."</td>";
	echo"<td>".$row["nama"]."</td>";
    echo"<td>".$row["alamat"]."</td>";
	echo"<td><a href =hapus.php?nim=".$row["nim"].">Delete</a></td>";
	echo"<td><a href =edit.php?nim=".$row["nim"].">Edit</a></td>";
	echo"</tr>";
}
?>
</table>
</body>
</html>
