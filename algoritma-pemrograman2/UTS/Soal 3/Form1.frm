VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form Form1 
   Caption         =   "FORM DATA USER"
   ClientHeight    =   11355
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   13320
   LinkTopic       =   "Form1"
   ScaleHeight     =   11355
   ScaleWidth      =   13320
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame2 
      BackColor       =   &H80000004&
      Height          =   1095
      Left            =   600
      TabIndex        =   8
      Top             =   240
      Width           =   12375
      Begin VB.Image Image1 
         Height          =   1095
         Left            =   11040
         Picture         =   "Form1.frx":0000
         Stretch         =   -1  'True
         Top             =   0
         Width           =   1335
      End
      Begin VB.Label Label1 
         BackColor       =   &H8000000B&
         BackStyle       =   0  'Transparent
         Caption         =   "PT. Fauzan Nurrachman"
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
         Left            =   120
         TabIndex        =   10
         Top             =   240
         Width           =   5415
      End
      Begin VB.Label Label1 
         BackColor       =   &H8000000B&
         BackStyle       =   0  'Transparent
         Caption         =   "NPM 2020804178"
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
         Index           =   5
         Left            =   120
         TabIndex        =   9
         Top             =   600
         Width           =   5415
      End
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   375
      Left            =   600
      Top             =   10800
      Width           =   12375
      _ExtentX        =   21828
      _ExtentY        =   661
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   2
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
      Connect         =   $"Form1.frx":1283A
      OLEDBString     =   $"Form1.frx":128CC
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   "tbuser"
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
      BackColor       =   &H80000004&
      Caption         =   "INPUT DATA USER"
      BeginProperty Font 
         Name            =   "Rockwell"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3135
      Left            =   600
      TabIndex        =   0
      Top             =   1440
      Width           =   12375
      Begin VB.CommandButton cmbupdate 
         Caption         =   "Update"
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
         Left            =   8160
         TabIndex        =   13
         Top             =   1920
         Width           =   1815
      End
      Begin VB.CommandButton cmdKeluar 
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
         Left            =   5760
         TabIndex        =   7
         Top             =   1920
         Width           =   1815
      End
      Begin VB.CommandButton cmbcreate 
         Caption         =   "Simpan"
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
         Left            =   600
         TabIndex        =   6
         Top             =   1920
         Width           =   1815
      End
      Begin VB.CommandButton cmbhapus 
         Caption         =   "Hapus"
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
         Left            =   3240
         TabIndex        =   5
         Top             =   1920
         Width           =   1815
      End
      Begin VB.TextBox Text3 
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
         Left            =   2760
         TabIndex        =   4
         Top             =   1200
         Width           =   4095
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
         Left            =   2760
         TabIndex        =   3
         Top             =   600
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
         Index           =   4
         Left            =   600
         TabIndex        =   2
         Top             =   1200
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
         Index           =   3
         Left            =   600
         TabIndex        =   1
         Top             =   600
         Width           =   2415
      End
   End
   Begin VB.Frame Frame3 
      BackColor       =   &H00FFFFFF&
      Height          =   12015
      Left            =   0
      TabIndex        =   11
      Top             =   0
      Width           =   13335
      Begin MSDataGridLib.DataGrid DataGrid1 
         Bindings        =   "Form1.frx":1295E
         Height          =   5775
         Left            =   600
         TabIndex        =   12
         Top             =   4800
         Width           =   12375
         _ExtentX        =   21828
         _ExtentY        =   10186
         _Version        =   393216
         HeadLines       =   1
         RowHeight       =   23
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Rockwell"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Rockwell"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ColumnCount     =   2
         BeginProperty Column00 
            DataField       =   ""
            Caption         =   ""
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1057
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column01 
            DataField       =   ""
            Caption         =   ""
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1057
               SubFormatType   =   0
            EndProperty
         EndProperty
         SplitCount      =   1
         BeginProperty Split0 
            BeginProperty Column00 
            EndProperty
            BeginProperty Column01 
            EndProperty
         EndProperty
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Koneksi As New ADODB.Connection
Dim RSUser As ADODB.Recordset
Sub BukaDB()
Set Koneksi = New ADODB.Connection
Set RSUser = New ADODB.Recordset
Koneksi.Open "PROVIDER=Microsoft.Jet.OLEDB.4.0;Data Source=" & App.Path & "\Sisfo_4b.mdb"
End Sub

Private Sub cmbcreate_Click()
'Adodc1.Recordset.AddNew
'Adodc1.Recordset!UserName = Text2.Text
'Adodc1.Recordset!Pass = Text3.Text
'DataGrid1.Refresh

Call BukaDB
If Text2 = "" Or Text3 = "" Then
MsgBox "Data Belum Lengkap"
Else
Dim TambahUser As String
    TambahUser = "Insert Into tbuser values ('" & Text2 & "','" & Text3 & "')"
    Koneksi.Execute TambahUser
    MsgBox "Data Berhasil Ditambah", vbInformation, "Pemberitahuan"
    Form_Load
End If
DataGrid1.Refresh

End Sub

Private Sub cmbhapus_Click()
'Adodc1.Recordset.Delete
'DataGrid1.Refresh
Call BukaDB
Dim HapusUser As String
    HapusUser = "Delete From tbuser where Username='" & Text2 & "'"
    Koneksi.Execute HapusUser
    MsgBox "Data Berhasil DiHapus", vbInformation, "Pemberitahuan"
    Form_Load
DataGrid1.Refresh
End Sub

Private Sub cmbupdate_Click()
Call BukaDB
If Text2 = "" Or Text3 = "" Then
MsgBox "Data Belum Lengkap"
Else
Dim EditUser As String
    EditUser = "update tbuser Set Pass='" & Text3 & "' where Username='" & Text2 & "'"
    Koneksi.Execute EditUser
    MsgBox "Data Berhasil DiUpdate", vbInformation, "Pemberitahuan"
    Form_Load
End If
End Sub

Private Sub cmdKeluar_Click()
Form4.Show
Form1.Hide
End Sub
Private Sub DataGrid1_Click()
If Adodc1.Recordset.EOF And Adodc1.Recordset.BOF Then
MsgBox "Data 0"
Else
Text2.Text = Adodc1.Recordset!UserName
Text3.Text = Adodc1.Recordset!Pass
End If
End Sub

Private Sub Form_Load()
Text2 = ""
Text3 = ""
Call BukaDB
Adodc1.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source= " & App.Path & "\Sisfo_4b.mdb; "
Adodc1.RecordSource = "tbuser"
Adodc1.Refresh
Set DataGrid1.DataSource = Adodc1
End Sub
