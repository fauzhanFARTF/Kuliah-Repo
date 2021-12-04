Public Class ReportForm

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        CrystalReportViewer1.SelectionFormula = "{tbfauzan.tpedompet}='" & TextBox1.Text & "'"
        CrystalReportViewer1.ReportSource = "..\..\CrystalReport1.rpt"
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Form1.Show()
        Me.Close()
    End Sub
End Class