Public Class Menuutama
    Private Sub DataBarangToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles DataBarangToolStripMenuItem.Click
        DataBarang.Show()
        Me.Hide()
    End Sub

    Private Sub TambahUserToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles TambahUserToolStripMenuItem.Click
        User.Show()
    End Sub

    Private Sub KeluarToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles KeluarToolStripMenuItem.Click
        login.Show()
        Me.Hide()
    End Sub

    Private Sub TransaksiPenjualanToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles TransaksiPenjualanToolStripMenuItem.Click
        Me.Hide()
    End Sub
    Private Sub LaporanDataBarangToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles LaporanDataBarangToolStripMenuItem.Click
        LapBarang.Show()
        Me.Hide()
    End Sub
End Class