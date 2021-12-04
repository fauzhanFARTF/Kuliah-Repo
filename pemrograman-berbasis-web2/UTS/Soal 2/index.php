<!DOCTYPE html>
<html lang="en">
    <body>
    <center>
        <h1>PENDAFTARAN</h1>
            <form action="hasil.php" method="post">
                <table>
                    <body>
                        <tr>
                            <td><label for="kodebuku">Kode Buku</label></td>
                            <td><input type="text" name="kodebuku" id="kodebuku" maxlength="31" size="47"></td>
                        </tr>
                        <tr>
                            <td><label for="judul">Judul</label></td>
                            <td><input type="text" name="judul" id="judul" maxlength="31" size="47"></td>
                        </tr>
                        <tr>
                            <td><label for="penerbit">Penerbit</label></td>
                            <td><input type="text" name="penerbit" id="penerbit" maxlength="31" size="47"></td>
                        </tr>
                        <tr>
                            <td><label for="status">Status</label></td>
                            <td>
                                <select name="status" >
                                    <option value=""> --pilih --</option>
                                    <option value="Ada">Ada</option>
                                    <option value="Dipinjam">Dipinjam</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td><input type="submit" value ="Input"></td>
                            <td><input type="reset" value ="Batal"></td>
                        </tr>
                    </body>
                </table>
            </form>
    </center>
    </body>
</html>