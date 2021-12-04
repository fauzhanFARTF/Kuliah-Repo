Public Class LapTamu

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Form1.Show()
        Me.Hide()
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        CrystalReportViewer1.SelectionFormula = "{tbtamu.kdtamu}='" & TextBox1.Text & "'"
        CrystalReportViewer1.ReportSource = "..\..\LaporanTamu.rpt"
    End Sub
End Class