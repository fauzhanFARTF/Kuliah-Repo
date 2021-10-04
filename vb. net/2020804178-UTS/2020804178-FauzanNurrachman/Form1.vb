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
        da = New OleDbDataAdapter("select * from tbfauzan", conn)
        ds = New DataSet
        da.Fill(ds, "tbfauzan")
        DataGridView1.DataSource = ds.Tables("tbfauzan")

        DataGridView1.Columns(0).Width = 150
        DataGridView1.Columns(1).Width = 150
        DataGridView1.Columns(2).Width = 200
        DataGridView1.Columns(3).Width = 100
        DataGridView1.Columns(4).Width = 100

        DataGridView1.Columns(0).HeaderText = "Tipe Tas"
        DataGridView1.Columns(1).HeaderText = "Nama Tas"
        DataGridView1.Columns(2).HeaderText = "Model Tas"
        DataGridView1.Columns(3).HeaderText = "Warna"
        DataGridView1.Columns(4).HeaderText = "Harga"
    End Sub
    Sub Tampildata()
        ComboBox2.Text = rd.Item(1)
        TextBox1.Text = rd.Item(2)
        ComboBox3.Text = rd.Item(3)
        TextBox2.Text = rd.Item(4)
    End Sub
    Sub Textmati()
        Me.TextBox1.Enabled = False
        Me.TextBox2.Enabled = False
        Me.ComboBox1.Enabled = False
        Me.ComboBox2.Enabled = False
        Me.ComboBox3.Enabled = False
    End Sub
    Sub TextHidup()
        Me.TextBox1.Enabled = True
        Me.TextBox2.Enabled = True
        Me.ComboBox1.Enabled = True
        Me.ComboBox2.Enabled = True
        Me.ComboBox3.Enabled = True
    End Sub
    Sub Kosong()
        TextBox1.Clear()
        TextBox2.Clear()
        ComboBox1.Text = ""
        ComboBox2.Text = ""
        ComboBox3.Text = ""
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
        If TextBox1.Text = "" Or TextBox2.Text = "" Or ComboBox1.Text = "" Or ComboBox2.Text = "" Or ComboBox3.Text = "" Then
            MessageBox.Show("Data belum lengkap, Pastikan Semua Form Terisi", "GAGAL", MessageBoxButtons.OK, MessageBoxIcon.Stop)
            Exit Sub
        Else
            Call koneksi()
            Try
                Dim simpan As String = "insert into tbfauzan (tipeTas, namaTas, modelTas, warna, harga) values ('" & ComboBox1.Text & "','" & ComboBox2.Text & "','" & TextBox1.Text & "','" & ComboBox3.Text & "', '" & TextBox2.Text & "'  )"
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
            sql = "update tbfauzan set namaTas = '" & ComboBox2.Text & "', modelTas = '" & TextBox1.Text & "', warna ='" & ComboBox3.Text & "', harga ='" & TextBox2.Text & "' where tipeTas = '" & ComboBox1.Text & "'"
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
                Dim hapus As String = "Delete * from tbfauzan where tipeTas='" & ComboBox1.Text & "'"
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
    Private Sub ComboBox1_KeyPress(sender As Object, e As KeyPressEventArgs) Handles ComboBox1.KeyPress
        If e.KeyChar = Chr(13) Then ComboBox2.Focus()
    End Sub

    Private Sub comboBox1_LostFocus(sender As Object, e As EventArgs) Handles ComboBox1.LostFocus
        str = "SELECT * FROM tbfauzan where tipeTas ='" & ComboBox1.Text & "'"
        cmd = New OleDbCommand(str, conn)
        rd = cmd.ExecuteReader
        Try
            While rd.Read
                ComboBox2.Text = rd.GetString(1)
                TextBox1.Text = rd.GetValue(2)
                ComboBox3.Text = rd.GetValue(3)
                TextBox2.Text = rd.GetValue(4)
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
    Private Sub ComboBox2_KeyPress(sender As Object, e As KeyPressEventArgs) Handles ComboBox2.KeyPress
        ComboBox2.MaxLength = 50
        If e.KeyChar = Chr(13) Then TextBox1.Focus()
    End Sub

    Private Sub TextBox1_KeyPress(sender As Object, e As KeyPressEventArgs) Handles TextBox1.KeyPress
        TextBox1.MaxLength = 50
        If e.KeyChar = Chr(13) Then ComboBox3.Focus()
    End Sub
    Private Sub ComboBox3_KeyPress(sender As Object, e As KeyPressEventArgs) Handles ComboBox3.KeyPress
        ComboBox3.MaxLength = 50
        If e.KeyChar = Chr(13) Then TextBox2.Focus()
    End Sub
    Private Sub _KeyPress(sender As Object, e As KeyPressEventArgs) Handles TextBox2.KeyPress
        TextBox2.MaxLength = 50
        If e.KeyChar = Chr(13) Then btnadd.Focus()
    End Sub
    Private Sub DataGridView1_CellClick(sender As Object, e As DataGridViewCellEventArgs) Handles DataGridView1.CellClick
        Dim i As Integer
        i = DataGridView1.SelectedCells(0).RowIndex

        ComboBox1.Text = DataGridView1.Rows(i).Cells(0).Value.ToString()
        ComboBox2.Text = DataGridView1.Rows(i).Cells(1).Value.ToString()
        TextBox1.Text = DataGridView1.Rows(i).Cells(2).Value.ToString()
        ComboBox3.Text = DataGridView1.Rows(i).Cells(3).Value.ToString()
        TextBox2.Text = DataGridView1.Rows(i).Cells(4).Value.ToString()
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

    Private Sub ToolbarImageToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ToolbarImageToolStripMenuItem.Click
        ToolbarImageToolStripMenuItem.ForeColor = Color.Black
        ToolbarButtonToolStripMenuItem.ForeColor = Color.Gray
        GroupBoxButton.Hide()
        GroupBoxImage.Show()
    End Sub
    Private Sub ToolbarButtonToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ToolbarButtonToolStripMenuItem.Click
        ToolbarImageToolStripMenuItem.ForeColor = Color.Gray
        ToolbarButtonToolStripMenuItem.ForeColor = Color.Black
        GroupBoxImage.Hide()
        GroupBoxButton.Show()
    End Sub

End Class

