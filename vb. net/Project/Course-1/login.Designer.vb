<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class login
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(login))
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.Combobox1 = New System.Windows.Forms.ComboBox()
        Me.TextBox2 = New System.Windows.Forms.TextBox()
        Me.TextBox1 = New System.Windows.Forms.TextBox()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.btnlogin = New System.Windows.Forms.Button()
        Me.Button1 = New System.Windows.Forms.Button()
        Me.Label7 = New System.Windows.Forms.Label()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.GroupBox1.SuspendLayout()
        Me.SuspendLayout()
        '
        'GroupBox1
        '
        Me.GroupBox1.BackColor = System.Drawing.Color.Transparent
        Me.GroupBox1.Controls.Add(Me.Combobox1)
        Me.GroupBox1.Controls.Add(Me.TextBox2)
        Me.GroupBox1.Controls.Add(Me.TextBox1)
        Me.GroupBox1.Controls.Add(Me.Label3)
        Me.GroupBox1.Controls.Add(Me.Label2)
        Me.GroupBox1.Controls.Add(Me.Label1)
        Me.GroupBox1.Font = New System.Drawing.Font("Rockwell", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.GroupBox1.ForeColor = System.Drawing.SystemColors.ControlLightLight
        Me.GroupBox1.Location = New System.Drawing.Point(112, 112)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(433, 158)
        Me.GroupBox1.TabIndex = 18
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "Login"
        '
        'Combobox1
        '
        Me.Combobox1.BackColor = System.Drawing.SystemColors.Window
        Me.Combobox1.FormattingEnabled = True
        Me.Combobox1.Items.AddRange(New Object() {"ADM", "SPV"})
        Me.Combobox1.Location = New System.Drawing.Point(173, 107)
        Me.Combobox1.Name = "Combobox1"
        Me.Combobox1.Size = New System.Drawing.Size(190, 25)
        Me.Combobox1.TabIndex = 10
        '
        'TextBox2
        '
        Me.TextBox2.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper
        Me.TextBox2.Location = New System.Drawing.Point(173, 68)
        Me.TextBox2.Name = "TextBox2"
        Me.TextBox2.PasswordChar = Global.Microsoft.VisualBasic.ChrW(42)
        Me.TextBox2.Size = New System.Drawing.Size(190, 25)
        Me.TextBox2.TabIndex = 6
        '
        'TextBox1
        '
        Me.TextBox1.BackColor = System.Drawing.SystemColors.Window
        Me.TextBox1.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper
        Me.TextBox1.ForeColor = System.Drawing.SystemColors.WindowText
        Me.TextBox1.Location = New System.Drawing.Point(173, 31)
        Me.TextBox1.Name = "TextBox1"
        Me.TextBox1.Size = New System.Drawing.Size(190, 25)
        Me.TextBox1.TabIndex = 5
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Font = New System.Drawing.Font("Rockwell", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label3.ForeColor = System.Drawing.SystemColors.ControlLightLight
        Me.Label3.Location = New System.Drawing.Point(18, 110)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(56, 17)
        Me.Label3.TabIndex = 2
        Me.Label3.Text = "Bagian"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("Rockwell", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.ForeColor = System.Drawing.SystemColors.ControlLightLight
        Me.Label2.Location = New System.Drawing.Point(18, 71)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(75, 17)
        Me.Label2.TabIndex = 1
        Me.Label2.Text = "Password"
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Rockwell", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.ForeColor = System.Drawing.SystemColors.ControlLightLight
        Me.Label1.Location = New System.Drawing.Point(18, 34)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(60, 17)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "ID User"
        '
        'btnlogin
        '
        Me.btnlogin.BackColor = System.Drawing.Color.DimGray
        Me.btnlogin.Font = New System.Drawing.Font("Rockwell", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnlogin.ForeColor = System.Drawing.SystemColors.ButtonFace
        Me.btnlogin.Location = New System.Drawing.Point(252, 290)
        Me.btnlogin.Name = "btnlogin"
        Me.btnlogin.Size = New System.Drawing.Size(83, 33)
        Me.btnlogin.TabIndex = 19
        Me.btnlogin.Text = "LOGIN"
        Me.btnlogin.UseVisualStyleBackColor = False
        '
        'Button1
        '
        Me.Button1.BackColor = System.Drawing.Color.DimGray
        Me.Button1.Font = New System.Drawing.Font("Rockwell", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Button1.ForeColor = System.Drawing.SystemColors.ButtonFace
        Me.Button1.Location = New System.Drawing.Point(372, 290)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(83, 33)
        Me.Button1.TabIndex = 20
        Me.Button1.Text = "KELUAR"
        Me.Button1.UseVisualStyleBackColor = False
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.BackColor = System.Drawing.Color.Transparent
        Me.Label7.Cursor = System.Windows.Forms.Cursors.Cross
        Me.Label7.Font = New System.Drawing.Font("Rockwell Condensed", 15.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label7.ForeColor = System.Drawing.Color.White
        Me.Label7.Location = New System.Drawing.Point(172, 67)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(312, 25)
        Me.Label7.TabIndex = 22
        Me.Label7.Text = "Jl. Raya Serang KM. 10 Bitung - Tangerang"
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.BackColor = System.Drawing.Color.Transparent
        Me.Label6.Cursor = System.Windows.Forms.Cursors.Cross
        Me.Label6.Font = New System.Drawing.Font("Rockwell", 20.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label6.ForeColor = System.Drawing.Color.White
        Me.Label6.Location = New System.Drawing.Point(117, 36)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(452, 31)
        Me.Label6.TabIndex = 21
        Me.Label6.Text = "PT. SISTEM INFORMASI 4D MALAM"
        '
        'login
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.MidnightBlue
        Me.BackgroundImage = CType(resources.GetObject("$this.BackgroundImage"), System.Drawing.Image)
        Me.ClientSize = New System.Drawing.Size(669, 358)
        Me.Controls.Add(Me.Label7)
        Me.Controls.Add(Me.Label6)
        Me.Controls.Add(Me.Button1)
        Me.Controls.Add(Me.btnlogin)
        Me.Controls.Add(Me.GroupBox1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None
        Me.Name = "login"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "login"
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents Combobox1 As System.Windows.Forms.ComboBox
    Friend WithEvents TextBox2 As System.Windows.Forms.TextBox
    Friend WithEvents TextBox1 As System.Windows.Forms.TextBox
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents btnlogin As System.Windows.Forms.Button
    Friend WithEvents Button1 As System.Windows.Forms.Button
    Friend WithEvents Label7 As System.Windows.Forms.Label
    Friend WithEvents Label6 As System.Windows.Forms.Label
End Class
