<!DOCTYPE html>
<html lang="en">
    <body>
    <center>
        <h1>PENDAFTARAN</h1>
        <br><br>
            <form action="hasil.php" method="post">
                <table>
                    <tr>
                        <td><label for="nama">Nama</label></td>
                        <td><input type="text" name="nama" id="nama" maxlength="31" size="47"></td>
                    </tr>
                    <tr>
                        <td><label for="combokelas">Kelas</label></td>
                        <td><select name="combokelas" id="combokelas">
                            <option value="Malam">Malam
                            <option value="Pagi">Pagi
                        </td>
                    </tr>
                    <tr>
                        <td><label for="radiojk">Jenis Kelamin</label></td>
                        <td>
                            <input type="radio" name="radiojk" value="Laki-Laki">Laki-Laki
                            <input type="radio" name="radiojk" value="perempuan">Perempuan
                        </td>
                    </tr>
                    <tr>
                        <td><label for="alamat">Alamat</label></td>
                        <td><textarea name="alamat" id="alamat" cols="41" rows="10"></textarea></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value ="Daftar"></td>
                        <td><input type="reset" value ="Batal"></td>
                    </tr>
                </table>
            </form>
    </center>
    </body>
</html>