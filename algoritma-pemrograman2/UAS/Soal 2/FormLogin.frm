VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form FormLogin 
   Caption         =   "Form Login"
   ClientHeight    =   7530
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   12750
   LinkTopic       =   "Form2"
   ScaleHeight     =   7530
   ScaleWidth      =   12750
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame3 
      BackColor       =   &H00FFFFFF&
      Height          =   1095
      Left            =   120
      TabIndex        =   12
      Top             =   120
      Width           =   12495
      Begin VB.Label Label1 
         BackColor       =   &H8000000B&
         BackStyle       =   0  'Transparent
         Caption         =   "FORM LOGIN"
         BeginProperty Font 
            Name            =   "Rockwell"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Index           =   6
         Left            =   4800
         TabIndex        =   13
         Top             =   360
         Width           =   2655
      End
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   375
      Left            =   120
      Top             =   7080
      Width           =   12495
      _ExtentX        =   22040
      _ExtentY        =   661
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   8
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   2
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   ""
      OLEDBString     =   ""
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   ""
      Caption         =   "Adodc1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H8000000B&
      Caption         =   "Form Login"
      BeginProperty Font 
         Name            =   "Rockwell"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3975
      Left            =   480
      TabIndex        =   0
      Top             =   2520
      Width           =   8295
      Begin VB.CommandButton cmbkeluar 
         Caption         =   "Keluar"
         BeginProperty Font 
            Name            =   "Rockwell"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   5400
         TabIndex        =   6
         Top             =   2640
         Width           =   1815
      End
      Begin VB.CommandButton cmblogin 
         Caption         =   "Login"
         BeginProperty Font 
            Name            =   "Rockwell"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   3000
         TabIndex        =   5
         Top             =   2640
         Width           =   1815
      End
      Begin VB.TextBox Text2 
         BeginProperty Font 
            Name            =   "Rockwell"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         IMEMode         =   3  'DISABLE
         Left            =   3000
         PasswordChar    =   "*"
         TabIndex        =   3
         Text            =   "admin"
         Top             =   1800
         Width           =   4095
      End
      Begin VB.TextBox Text1 
         BeginProperty Font 
            Name            =   "Rockwell"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         IMEMode         =   3  'DISABLE
         Left            =   3000
         TabIndex        =   1
         Text            =   "admin"
         Top             =   1080
         Width           =   4095
      End
      Begin VB.Label Label1 
         BackColor       =   &H8000000B&
         BackStyle       =   0  'Transparent
         Caption         =   "Password"
         BeginProperty Font 
            Name            =   "Rockwell"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Index           =   1
         Left            =   240
         TabIndex        =   4
         Top             =   1800
         Width           =   2415
      End
      Begin VB.Label Label1 
         BackColor       =   &H8000000B&
         BackStyle       =   0  'Transparent
         Caption         =   "Username"
         BeginProperty Font 
            Name            =   "Rockwell"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Index           =   0
         Left            =   240
         TabIndex        =   2
         Top             =   1080
         Width           =   2415
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      Height          =   5775
      Left            =   120
      TabIndex        =   7
      Top             =   1200
      Width           =   12495
      Begin VB.Image Image2 
         Height          =   3375
         Left            =   8880
         Picture         =   "FormLogin.frx":0000
         Top             =   1440
         Width           =   3375
      End
      Begin VB.Image Image1 
         Height          =   1095
         Left            =   2160
         Picture         =   "FormLogin.frx":26DC
         Stretch         =   -1  'True
         Top             =   120
         Width           =   1335
      End
      Begin VB.Label Label1 
         BackColor       =   &H8000000B&
         BackStyle       =   0  'Transparent
         Caption         =   "Copyright @ Fauzan Nurrachman 2020804178"
         BeginProperty Font 
            Name            =   "Rockwell"
            Size            =   11.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Index           =   7
         Left            =   3600
         TabIndex        =   11
         Top             =   5400
         Width           =   4935
      End
      Begin VB.Label Label1 
         BackColor       =   &H8000000B&
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Rockwell"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Index           =   3
         Left            =   0
         TabIndex        =   10
         Top             =   240
         Width           =   4215
      End
      Begin VB.Label Label1 
         BackColor       =   &H8000000B&
         BackStyle       =   0  'Transparent
         Caption         =   "UNIVERSITAS INSAN PEMBANGUNAN BITUNG"
         BeginProperty Font 
            Name            =   "Rockwell"
            Size            =   11.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Index           =   4
         Left            =   3840
         TabIndex        =   9
         Top             =   720
         Width           =   5175
      End
      Begin VB.Label Label1 
         BackColor       =   &H8000000B&
         BackStyle       =   0  'Transparent
         Caption         =   "DATA RUMAH SAKIT RUJUKAN COVID 19"
         BeginProperty Font 
            Name            =   "Rockwell"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Index           =   2
         Left            =   3840
         TabIndex        =   8
         Top             =   360
         Width           =   5655
      End
   End
End
Attribute VB_Name = "FormLogin"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Koneksi As New ADODB.Connection
Sub BukaDB()
Set Koneksi = New ADODB.Connection
Koneksi.Open "PROVIDER=Microsoft.Jet.OLEDB.4.0;Data Source=" & App.Path & "\si4b.mdb"
End Sub
Private Sub cmbkeluar_Click()
End
End Sub

Private Sub cmblogin_Click()
Call BukaDB
Adodc1.RecordSource = "select * from tbuser where username = '" + Text1.Text + "' and pass = '" + Text2.Text + "'"
Adodc1.Refresh
If Adodc1.Recordset.EOF Then
MsgBox "Login Gagal", vbCritical, "Silahkan Daftarkan username"
Else
MsgBox "Login Sukses", vbInformation, "Anda Sukses Login"
FormMenu.Show
FormLogin.Hide
End If
End Sub

Private Sub Form_Load()
Call BukaDB
Adodc1.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source= " & App.Path & "\si4b.mdb; "
Adodc1.RecordSource = "tbuser"
Adodc1.Refresh
End Sub

