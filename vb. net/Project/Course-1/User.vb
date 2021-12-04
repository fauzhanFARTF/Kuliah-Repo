Imports System.Data.OleDb
Public Class User
    Dim conn As OleDbConnection
    Dim da As OleDbDataAdapter
    Dim ds As DataSet
    Dim cmd As OleDbCommand
    Dim rd As OleDbDataReader
    Dim str As String
    Dim sql As String
    Sub koneksi()
        str = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=DbpenjualanD.mdb"
        conn = New OleDbConnection(str)
        If conn.State = ConnectionState.Closed Then conn.Open()
    End Sub
    Sub Tampilgrid()
        da = New OleDbDataAdapter("select * from tbuser", conn)
        ds = New DataSet
        da.Fill(ds, "tbuser")
        DGV.DataSource = ds.Tables("tbuser")
        DGV.Columns(0).Width = 80
        DGV.Columns(1).Width = 80
        DGV.Columns(2).Width = 80

        DGV.Columns(0).HeaderText = "ID User"
        DGV.Columns(1).HeaderText = "Password"
        DGV.Columns(2).HeaderText = "Bagian"

    End Sub
    Sub Tampildata()
        TextBox2.Text = rd.Item(1)
        Combobox1.Text = rd.Item(2)
    End Sub
    Sub Textmati()
        Me.TextBox1.Enabled = False
        Me.TextBox2.Enabled = False
        Me.Combobox1.Enabled = False
    End Sub
    Sub TextHidup()
        Me.TextBox1.Enabled = True
        Me.TextBox2.Enabled = True
        Me.Combobox1.Enabled = True
    End Sub
    Sub Kosong()
        TextBox1.Clear()
        TextBox2.Clear()
        Combobox1.Text = ""
    End Sub
    Private Sub User_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Call koneksi()
        Call Tampilgrid()
        Call Textmati()
        Me.btnadd.Enabled = True
        Me.btnsave.Enabled = False
        Me.btnedit.Enabled = False
        Me.btnupdate.Enabled = False
        Me.btncancel.Enabled = False
        Me.btndelete.Enabled = False
        Me.btnexit.Enabled = True
    End Sub
    Private Sub btnadd_Click(sender As Object, e As EventArgs) Handles btnadd.Click
        Call Kosong()
        Call TextHidup()
        Me.TextBox1.Focus()
        Me.btnadd.Enabled = False
        Me.btnsave.Enabled = True
        Me.btnedit.Enabled = False
        Me.btnupdate.Enabled = False
        Me.btncancel.Enabled = True
        Me.btndelete.Enabled = False
        Me.btnexit.Enabled = False
    End Sub
    Private Sub btnsave_Click(sender As Object, e As EventArgs) Handles btnsave.Click
        If TextBox1.Text = "" Or TextBox2.Text = "" Or Combobox1.Text = "" Then
            'MsgBox("Data belum lengkap, Pastikan Semua Form Terisi")
            MessageBox.Show("Data belum lengkap, Pastikan Semua Form Terisi", "GAGAL", MessageBoxButtons.OK, MessageBoxIcon.Stop)
            Exit Sub
        Else
            Call koneksi()
            Try
                Dim simpan As String = "insert into tbuser (iduser, passworduser, bagian) values ('" & TextBox1.Text & "', '" & TextBox2.Text & "', '" & Combobox1.Text & "')"
                cmd = New OleDbCommand(simpan, conn)
                cmd.ExecuteNonQuery()
                MessageBox.Show("Data Baru Berhasil Disimpan", "SUKSES", MessageBoxButtons.OK, MessageBoxIcon.Information)
            Catch ex As Exception
                MessageBox.Show("Data Baru Gagal dilakukan / Data Sudah Ada", "GAGAL", MessageBoxButtons.OK, MessageBoxIcon.Stop)
            End Try
            Call Tampilgrid()
            DGV.Refresh()
            Call koneksi()
            Call Kosong()
            Call Textmati()
            Me.btnadd.Enabled = True
            Me.btnsave.Enabled = False
            Me.btnedit.Enabled = False
            Me.btnupdate.Enabled = False
            Me.btncancel.Enabled = False
            Me.btndelete.Enabled = False
            Me.btnexit.Enabled = True
        End If
    End Sub
    Private Sub btnedit_Click(sender As Object, e As EventArgs) Handles btnedit.Click
        Call TextHidup()
        TextBox1.Enabled = False
        btnadd.Enabled = False
        btnsave.Enabled = False
        btnedit.Enabled = False
        btnupdate.Enabled = True
        btncancel.Enabled = True
        btndelete.Enabled = True
        btnexit.Enabled = False
    End Sub
    Private Sub TextBox1_KeyPress(sender As Object, e As KeyPressEventArgs) Handles TextBox1.KeyPress
        If e.KeyChar = Chr(13) Then TextBox2.Focus()
    End Sub
    Private Sub TextBox1_LostFocus(sender As Object, e As EventArgs) Handles TextBox1.LostFocus
        str = "SELECT * FROM tbuser where iduser ='" & TextBox1.Text & "'"
        cmd = New OleDbCommand(str, conn)
        rd = cmd.ExecuteReader
        Try
            While rd.Read
                TextBox2.Text = rd.GetString(1)
                Combobox1.Text = rd.GetString(2)
                Textmati()
                Me.btnadd.Enabled = False
                Me.btnsave.Enabled = False
                Me.btnedit.Enabled = True
                Me.btnupdate.Enabled = False
                Me.btncancel.Enabled = True
                Me.btndelete.Enabled = False
                Me.btnexit.Enabled = False
            End While
        Finally
            rd.Close()
        End Try
    End Sub
    Private Sub btnupdate_Click(sender As Object, e As EventArgs) Handles btnupdate.Click
        If MessageBox.Show("Do You Want Save Again ?", "SUKSES", MessageBoxButtons.YesNo, MessageBoxIcon.Information) = vbYes Then
            sql = "update tbuser set passworduser = '" & TextBox2.Text & "', bagian = '" & Combobox1.Text & "' where iduser = '" & TextBox1.Text & "'"
            cmd = New OleDbCommand(sql, conn)
            cmd.ExecuteNonQuery()
            DGV.Refresh()

            Call Textmati()
            Call Kosong()
            Me.btnadd.Enabled = True
            Me.btnsave.Enabled = False
            Me.btnedit.Enabled = False
            Me.btnupdate.Enabled = False
            Me.btncancel.Enabled = False
            Me.btndelete.Enabled = False
            Me.btnexit.Enabled = True
            DGV.Refresh()
            Call Tampilgrid()
        End If
    End Sub
    Private Sub btncancel_Click(sender As Object, e As EventArgs) Handles btncancel.Click
        Call Kosong()
        Call Textmati()
        Me.btnadd.Enabled = True
        Me.btnsave.Enabled = False
        Me.btnedit.Enabled = False
        Me.btnupdate.Enabled = False
        Me.btncancel.Enabled = False
        Me.btndelete.Enabled = False
        Me.btnexit.Enabled = True
    End Sub
    Private Sub btndelete_Click(sender As Object, e As EventArgs) Handles btndelete.Click
        If TextBox1.Text = "" Then
            MsgBox("Kode belum diisi")
            TextBox1.Focus()
            Exit Sub
        Else
            If MessageBox.Show("Yakin akan dihapus..?", "", MessageBoxButtons.YesNo) = Windows.Forms.DialogResult.Yes Then
                Dim hapus As String = "Delete * from tbuser where iduser='" & TextBox1.Text & "'"
                cmd = New OleDbCommand(hapus, conn)
                cmd.ExecuteNonQuery()
                Call Tampilgrid()
                Call Kosong()
                Me.btnadd.Enabled = True
                Me.btnsave.Enabled = False
                Me.btnedit.Enabled = False
                Me.btnupdate.Enabled = False
                Me.btncancel.Enabled = False
                Me.btndelete.Enabled = False
                Me.btnexit.Enabled = True
            Else
                Call Textmati()
            End If
        End If
    End Sub

    Private Sub DGV_CellClick(sender As Object, e As DataGridViewCellEventArgs) Handles DGV.CellClick
        Dim i As Integer
        i = DGV.SelectedCells(0).RowIndex
        TextBox1.Text = DGV.Rows(i).Cells(0).Value.ToString()
        TextBox2.Text = DGV.Rows(i).Cells(1).Value.ToString()
        Combobox1.Text = DGV.Rows(i).Cells(2).Value.ToString()
        Call Textmati()
        Me.btnadd.Enabled = False
        Me.btnsave.Enabled = False
        Me.btnedit.Enabled = True
        Me.btnupdate.Enabled = False
        Me.btncancel.Enabled = True
        Me.btndelete.Enabled = False
        Me.btnexit.Enabled = False
        Combobox1.Focus()
    End Sub

   
End Class