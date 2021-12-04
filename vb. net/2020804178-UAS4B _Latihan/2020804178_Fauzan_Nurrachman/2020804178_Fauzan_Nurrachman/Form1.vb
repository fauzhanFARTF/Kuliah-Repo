Imports System.Data.OleDb
Public Class Form1
    Dim conn As OleDbConnection
    Dim da As OleDbDataAdapter
    Dim ds As DataSet
    Dim cmd As OleDbCommand
    Dim rd As OleDbDataReader
    Dim str As String
    Dim sql As String
    Public Sub koneksi()
        str = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=dbfauzan.mdb"
        conn = New OleDbConnection(str)
        If conn.State = ConnectionState.Closed Then conn.Open()
    End Sub
    Sub Tampilgrid()
        da = New OleDbDataAdapter("select * from tbtamu", conn)
        ds = New DataSet
        da.Fill(ds, "tbtamu")
        DataGridView1.DataSource = ds.Tables("tbtamu")

        DataGridView1.Columns(0).Width = 150
        DataGridView1.Columns(1).Width = 200
        DataGridView1.Columns(2).Width = 150
        DataGridView1.Columns(3).Width = 200

        DataGridView1.Columns(0).HeaderText = "Kode Flaskdisk"
        DataGridView1.Columns(1).HeaderText = "Nama Flaskdisk"
        DataGridView1.Columns(2).HeaderText = "Satuan"
        DataGridView1.Columns(3).HeaderText = "Harga"
    End Sub
    Private Sub ToolbarButtonToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ToolbarButtonToolStripMenuItem.Click
        ToolbarImageToolStripMenuItem.ForeColor = Color.Gray
        ToolbarButtonToolStripMenuItem.ForeColor = Color.Black
        GroupBoxImage.Hide()
        GroupBoxButton.Show()
    End Sub
    Private Sub ToolbarImageToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ToolbarImageToolStripMenuItem.Click
        ToolbarImageToolStripMenuItem.ForeColor = Color.Black
        ToolbarButtonToolStripMenuItem.ForeColor = Color.Gray
        GroupBoxButton.Hide()
        GroupBoxImage.Show()
    End Sub
    Sub Tampildata()
        ComboBox1.Text = rd.Item(1)
        TextBox1.Text = rd.Item(2)
        TextBox2.Text = rd.Item(3)
        TextBox3.Text = rd.Item(4)
    End Sub
    Sub Textmati()
        Me.TextBox1.Enabled = False
        Me.TextBox2.Enabled = False
        Me.TextBox3.Enabled = False
        Me.ComboBox1.Enabled = False
    End Sub
    Sub TextHidup()
        Me.TextBox1.Enabled = True
        Me.TextBox2.Enabled = True
        Me.TextBox3.Enabled = True
        Me.ComboBox1.Enabled = True
    End Sub
    Sub Kosong()
        TextBox1.Clear()
        TextBox2.Clear()
        TextBox3.Clear()
        ComboBox1.Text = ""
        ComboBox1.Focus()
    End Sub
    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Call bukaloader()
    End Sub
    Private Sub btnexit_Click(sender As Object, e As EventArgs) Handles btnexit.Click
        Me.Close()
    End Sub
    Private Sub btnexitimage_Click(sender As Object, e As EventArgs) Handles btnexitimage.Click
        Me.Close()
    End Sub
    Private Sub btnadd_Click(sender As Object, e As EventArgs) Handles btnadd.Click
        Call add()
    End Sub
    Private Sub btnaddimage_Click(sender As Object, e As EventArgs) Handles btnaddimage.Click
        Call add()
    End Sub
    Private Sub btnedit_Click(sender As Object, e As EventArgs) Handles btnedit.Click
        Call edit()
    End Sub
    Private Sub btneditimage_Click(sender As Object, e As EventArgs) Handles btneditimage.Click
        Call edit()
    End Sub
    Private Sub btnsave_Click(sender As Object, e As EventArgs) Handles btnsave.Click
        Call save()
    End Sub
    Private Sub btnsaveimage_Click(sender As Object, e As EventArgs) Handles btnsaveimage.Click
        Call save()
    End Sub
    Private Sub btncancel_Click(sender As Object, e As EventArgs) Handles btncancel.Click
        Call Cancel()
    End Sub
    Private Sub btncancelimage_Click(sender As Object, e As EventArgs) Handles btncancelimage.Click
        Call Cancel()
    End Sub
    Private Sub btnupdate_Click(sender As Object, e As EventArgs) Handles btnupdate.Click
        Call updated()
    End Sub
    Private Sub btnupdateimage_Click(sender As Object, e As EventArgs) Handles btnupdateimage.Click
        Call updated()
    End Sub
    Private Sub btndeleteimage_Click(sender As Object, e As EventArgs) Handles btndeleteimage.Click
        Call deleted()
    End Sub
    Private Sub btndelete_Click(sender As Object, e As EventArgs) Handles btndelete.Click
        Call deleted()
    End Sub
    Private Sub btnpreview_Click(sender As Object, e As EventArgs) Handles btnpreview.Click
        DataGridView1.Refresh()
        LapTamu.Show()
    End Sub
    Private Sub btnpreviewimage_Click(sender As Object, e As EventArgs) Handles btnpreviewimage.Click
        DataGridView1.Refresh()
        LapTamu.Show()
    End Sub
    Private Sub ComboBox1_KeyPress(sender As Object, e As KeyPressEventArgs) Handles ComboBox1.KeyPress
        If e.KeyChar = Chr(13) Then TextBox1.Focus()
    End Sub
    Private Sub ComboBox1_LostFocus(sender As Object, e As EventArgs) Handles ComboBox1.LostFocus
        str = "SELECT * FROM tbtamu where kdtamu ='" & ComboBox1.Text & "'"
        cmd = New OleDbCommand(str, conn)
        rd = cmd.ExecuteReader
        Try
            While rd.Read
                TextBox1.Text = rd.GetString(1)
                TextBox2.Text = rd.GetValue(2)
                TextBox3.Text = rd.GetValue(3)
                Textmati()
                Me.btnadd.Enabled = False
                Me.btnsave.Enabled = False
                Me.btnedit.Enabled = True
                Me.btnupdate.Enabled = False
                Me.btncancel.Enabled = True
                Me.btndelete.Enabled = False
                Me.btnexit.Enabled = False
                Me.btnaddimage.Hide()
                Me.btnsaveimage.Hide()
                Me.btneditimage.Show()
                Me.btnupdateimage.Hide()
                Me.btncancelimage.Show()
                Me.btndeleteimage.Hide()
                Me.btnexitimage.Hide()
            End While
        Finally
            rd.Close()
        End Try
    End Sub
    Private Sub TextBox1_KeyPress(sender As Object, e As KeyPressEventArgs) Handles TextBox1.KeyPress
        TextBox1.MaxLength = 50
        If e.KeyChar = Chr(13) Then TextBox2.Focus()
    End Sub
    Private Sub TextBox2_KeyPress(sender As Object, e As KeyPressEventArgs) Handles TextBox2.KeyPress
        TextBox2.MaxLength = 50
        If e.KeyChar = Chr(13) Then TextBox3.Focus()
    End Sub
    Private Sub TextBox3_KeyPress(sender As Object, e As KeyPressEventArgs) Handles TextBox3.KeyPress
        TextBox3.MaxLength = 50
        If e.KeyChar = Chr(13) Then btnadd.Focus()
    End Sub
    Private Sub DataGridView1_CellClick(sender As Object, e As DataGridViewCellEventArgs) Handles DataGridView1.CellClick
        Dim i As Integer
        i = DataGridView1.SelectedCells(0).RowIndex

        ComboBox1.Text = DataGridView1.Rows(i).Cells(0).Value.ToString()
        TextBox1.Text = DataGridView1.Rows(i).Cells(1).Value.ToString()
        TextBox2.Text = DataGridView1.Rows(i).Cells(2).Value.ToString()
        TextBox3.Text = DataGridView1.Rows(i).Cells(3).Value.ToString()
        Call Textmati()
        Me.btnadd.Enabled = False
        Me.btnsave.Enabled = False
        Me.btnedit.Enabled = True
        Me.btnupdate.Enabled = False
        Me.btncancel.Enabled = True
        Me.btndelete.Enabled = False
        Me.btnexit.Enabled = False
        Me.btnaddimage.Hide()
        Me.btnsaveimage.Hide()
        Me.btneditimage.Show()
        Me.btnupdateimage.Hide()
        Me.btncancelimage.Show()
        Me.btndeleteimage.Hide()
        Me.btnexitimage.Hide()
        ComboBox1.Focus()
    End Sub

    Sub bukaloader()
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

        Me.btnaddimage.Show()
        Me.btnsaveimage.Hide()
        Me.btneditimage.Hide()
        Me.btnupdateimage.Hide()
        Me.btncancelimage.Hide()
        Me.btndeleteimage.Hide()
        Me.btnexitimage.Show()

        ToolbarImageToolStripMenuItem.ForeColor = Color.Gray
        GroupBoxImage.Hide()
        GroupBoxButton.Show()
    End Sub
    Sub add()
        Call Kosong()
        Call TextHidup()

        Me.btnadd.Enabled = False
        Me.btnsave.Enabled = True
        Me.btnedit.Enabled = False
        Me.btnupdate.Enabled = False
        Me.btncancel.Enabled = True
        Me.btndelete.Enabled = False
        Me.btnexit.Enabled = False

        Me.btnaddimage.Hide()
        Me.btnsaveimage.Show()
        Me.btneditimage.Hide()
        Me.btnupdateimage.Hide()
        Me.btncancelimage.Show()
        Me.btndeleteimage.Hide()
        Me.btnexitimage.Hide()

        Me.ComboBox1.Focus()
    End Sub
    Sub save()
        If TextBox1.Text = "" Or TextBox2.Text = "" Or ComboBox1.Text = "" Or TextBox3.Text = "" Then
            MessageBox.Show("Data belum lengkap, Pastikan Semua Form Terisi", "GAGAL", MessageBoxButtons.OK, MessageBoxIcon.Stop)
            Exit Sub
        Else
            Call koneksi()
            Try
                Dim simpan As String = "insert into tbtamu (kdtamu, namatamu, alamat, telepon) values ('" & ComboBox1.Text & "','" & TextBox1.Text & "','" & TextBox2.Text & "', '" & TextBox3.Text & "'  )"
                cmd = New OleDbCommand(simpan, conn)
                cmd.ExecuteNonQuery()
                MessageBox.Show("Data Baru Berhasil Disimpan", "SUKSES", MessageBoxButtons.OK, MessageBoxIcon.Information)
            Catch ex As Exception
                MessageBox.Show("Data Baru Gagal dilakukan / Data Sudah Ada", "GAGAL", MessageBoxButtons.OK, MessageBoxIcon.Stop)
            End Try
            Call Tampilgrid()
            DataGridView1.Refresh()
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

            Me.btnaddimage.Show()
            Me.btnsaveimage.Hide()
            Me.btneditimage.Hide()
            Me.btnupdateimage.Hide()
            Me.btncancelimage.Hide()
            Me.btndeleteimage.Hide()
            Me.btnexitimage.Show()
        End If
    End Sub
    Sub edit()
        Call TextHidup()

        Me.btnadd.Enabled = False
        Me.btnsave.Enabled = False
        Me.btnedit.Enabled = False
        Me.btnupdate.Enabled = True
        Me.btncancel.Enabled = True
        Me.btndelete.Enabled = True
        Me.btnexit.Enabled = False

        Me.btnaddimage.Hide()
        Me.btnsaveimage.Hide()
        Me.btneditimage.Hide()
        Me.btnupdateimage.Show()
        Me.btncancelimage.Show()
        Me.btndeleteimage.Show()
        Me.btnexitimage.Hide()

        ComboBox1.Enabled = False
    End Sub
    Sub Cancel()
        Call Kosong()
        Call Textmati()
        Me.btnadd.Enabled = True
        Me.btnsave.Enabled = False
        Me.btnedit.Enabled = False
        Me.btnupdate.Enabled = False
        Me.btncancel.Enabled = False
        Me.btndelete.Enabled = False
        Me.btnexit.Enabled = True

        Call Kosong()
        Call Textmati()
        Me.btnaddimage.Show()
        Me.btnsaveimage.Hide()
        Me.btneditimage.Hide()
        Me.btnupdateimage.Hide()
        Me.btncancelimage.Hide()
        Me.btndeleteimage.Hide()
        Me.btnexitimage.Show()
    End Sub
    Sub updated()
        If MessageBox.Show("Apakah Anda Ingin Megupdate ?", "SUKSES", MessageBoxButtons.YesNo, MessageBoxIcon.Information) = vbYes Then
            sql = "update tbtamu set namatamu = '" & TextBox1.Text & "', alamat = '" & TextBox2.Text & "', telepon ='" & TextBox3.Text & "' where kdtamu = '" & ComboBox1.Text & "'"
            cmd = New OleDbCommand(sql, conn)
            cmd.ExecuteNonQuery()
            Call Textmati()
            Call Kosong()
            Me.btnadd.Enabled = True
            Me.btnsave.Enabled = False
            Me.btnedit.Enabled = False
            Me.btnupdate.Enabled = False
            Me.btncancel.Enabled = False
            Me.btndelete.Enabled = False
            Me.btnexit.Enabled = True
            Me.btnaddimage.Show()
            Me.btnsaveimage.Hide()
            Me.btneditimage.Hide()
            Me.btnupdateimage.Hide()
            Me.btncancelimage.Hide()
            Me.btndeleteimage.Hide()
            Me.btnexitimage.Show()
            DataGridView1.Refresh()
            Call Tampilgrid()
        End If
    End Sub
    Sub deleted()
        If ComboBox1.Text = "" Then
            MsgBox("tipe belum diisi")
            ComboBox1.Focus()
            Exit Sub
        Else
            If MessageBox.Show("Apakah Data Akan Di Hapus?", "", MessageBoxButtons.YesNo) = Windows.Forms.DialogResult.Yes Then
                Dim hapus As String = "Delete * from tbtamu where kdtamu='" & ComboBox1.Text & "'"
                cmd = New OleDbCommand(hapus, conn)
                cmd.ExecuteNonQuery()
                Call Tampilgrid()
                Call Kosong()
                Call Textmati()
                Me.btnadd.Enabled = True
                Me.btnsave.Enabled = False
                Me.btnedit.Enabled = False
                Me.btnupdate.Enabled = False
                Me.btncancel.Enabled = False
                Me.btndelete.Enabled = False
                Me.btnexit.Enabled = True
                Me.btnaddimage.Show()
                Me.btnsaveimage.Hide()
                Me.btneditimage.Hide()
                Me.btnupdateimage.Hide()
                Me.btncancelimage.Hide()
                Me.btndeleteimage.Hide()
                Me.btnexitimage.Show()
            Else
                Call TextHidup()
                TextBox1.Enabled = False
                btnadd.Enabled = False
                btnsave.Enabled = False
                btnedit.Enabled = False
                btnupdate.Enabled = True
                btncancel.Enabled = True
                btndelete.Enabled = True
                btnexit.Enabled = True
                btnaddimage.Hide()
                btnsaveimage.Hide()
                btneditimage.Hide()
                btnupdateimage.Show()
                btncancelimage.Show()
                btndeleteimage.Show()
                btnexitimage.Show()
            End If
        End If
    End Sub
End Class
