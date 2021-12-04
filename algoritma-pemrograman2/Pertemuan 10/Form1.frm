VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   9030
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   8070
   LinkTopic       =   "Form1"
   ScaleHeight     =   9030
   ScaleWidth      =   8070
   StartUpPosition =   3  'Windows Default
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   330
      Left            =   480
      Top             =   8400
      Width           =   6495
      _ExtentX        =   11456
      _ExtentY        =   582
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   1
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   $"Form1.frx":0000
      OLEDBString     =   $"Form1.frx":00A8
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   "select * from tbuser"
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
      Caption         =   "Frame1"
      Height          =   6615
      Left            =   360
      TabIndex        =   0
      Top             =   1560
      Width           =   6855
      Begin VB.CommandButton Command2 
         Caption         =   "Keluar"
         Height          =   735
         Left            =   3120
         TabIndex        =   7
         Top             =   2280
         Width           =   1455
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Login"
         Height          =   735
         Left            =   1200
         TabIndex        =   6
         Top             =   2280
         Width           =   1455
      End
      Begin VB.TextBox Text2 
         Height          =   375
         IMEMode         =   3  'DISABLE
         Left            =   1920
         PasswordChar    =   "*"
         TabIndex        =   5
         Top             =   1200
         Width           =   2535
      End
      Begin VB.TextBox Text1 
         Height          =   375
         Left            =   1920
         TabIndex        =   4
         Top             =   480
         Width           =   2535
      End
      Begin VB.Label Label3 
         Caption         =   "PASSWORD"
         Height          =   375
         Left            =   480
         TabIndex        =   3
         Top             =   1200
         Width           =   1215
      End
      Begin VB.Label Label2 
         Caption         =   "USERNAME"
         Height          =   375
         Left            =   480
         TabIndex        =   2
         Top             =   600
         Width           =   1215
      End
   End
   Begin VB.Label Label1 
      Caption         =   "USER LOGIN PT. ABC"
      Height          =   495
      Left            =   360
      TabIndex        =   1
      Top             =   1200
      Width           =   3015
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Adodc1.RecordSource = "select * from tbuser where username = '" + Text1.Text + "' and password = '" + Text2.Text + "'"
Adodc1.Refresh
If Adodc1.Recordset.EOF Then
MsgBox "Login Gagal", vbCritical, "Silahkan Daftarkan username"
Else
MsgBox "Login Sukses", vbInformation, "Anda Sukses Login"
Form2.Show
End If
End Sub


