Public Class LapBarang

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        CrystalReportViewer1.SelectionFormula = "{tbbarang.kdbarang}='" & TextBox1.Text & "'"
        'CrystalReportViewer1.ReportSource = "C:\xampp\htdocs\kuliah-repo-onlywindows\vb.net\Project\Course-1\LaporanDataBarang.rpt"
        CrystalReportViewer1.ReportSource = "..\..\LaporanDataBarang.rpt"
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Menuutama.Show()
        Me.Hide()
    End Sub


End Class