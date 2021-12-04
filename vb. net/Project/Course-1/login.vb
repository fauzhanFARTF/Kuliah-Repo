Imports System
Imports System.Data
Imports System.Data.OleDb
Public Class login
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
    Private Sub btnlogin_Click(sender As Object, e As EventArgs) Handles btnlogin.Click
        koneksi()
        cmd = New OleDbCommand("select * from tbuser where iduser='" & TextBox1.Text & "' and passworduser='" & TextBox2.Text & "' and bagian='" & Combobox1.Text & "'", conn)
        rd = cmd.ExecuteReader
        rd.Read()
        If rd.HasRows Then
            MessageBox.Show("Login Sukses", "SUKSES", MessageBoxButtons.OK, MessageBoxIcon.Information)
            If Combobox1.Text = "ADM" Then
                Menuutama.UserToolStripMenuItem.Enabled = False
                Menuutama.MasterToolStripMenuItem.Enabled = False
            ElseIf Combobox1.Text = "SPV" Then
                Menuutama.UserToolStripMenuItem.Enabled = False
            End If
            Menuutama.Show()
            Me.Hide()
        Else
            MessageBox.Show("Login Salah, periksa kembali ID User dan password", "GAGAL", MessageBoxButtons.OK, MessageBoxIcon.Error)
            TextBox1.Focus()
            Me.TextBox1.Text = ""
            Me.TextBox2.Text = ""
            Me.Combobox1.Text = ""
        End If
    End Sub

    Private Sub login_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        TextBox1.Focus()
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Me.Close()
    End Sub
End Class