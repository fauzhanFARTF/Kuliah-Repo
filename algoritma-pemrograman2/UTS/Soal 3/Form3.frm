VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form Form3 
   Caption         =   "Form3"
   ClientHeight    =   11940
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   13335
   LinkTopic       =   "Form3"
   ScaleHeight     =   11940
   ScaleWidth      =   13335
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame3 
      BackColor       =   &H00FFFFFF&
      Height          =   12015
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   13335
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
         Height          =   3975
         Left            =   600
         TabIndex        =   5
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
            Left            =   9720
            TabIndex        =   20
            Top             =   1200
            Width           =   1815
         End
         Begin VB.TextBox Text5 
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
            TabIndex        =   15
            Top             =   3360
            Width           =   4095
         End
         Begin VB.TextBox Text4 
            BeginProperty Font 
               Name            =   "Rockwell"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   585
            Left            =   2760
            TabIndex        =   14
            Top             =   2400
            Width           =   4095
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
            TabIndex        =   13
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
            Left            =   2760
            TabIndex        =   10
            Top             =   600
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
            TabIndex        =   9
            Top             =   1200
            Width           =   4095
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
            Left            =   7680
            TabIndex        =   8
            Top             =   2160
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
            Left            =   7680
            TabIndex        =   7
            Top             =   1200
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
            Left            =   9720
            TabIndex        =   6
            Top             =   2160
            Width           =   1815
         End
         Begin VB.Label Label1 
            BackColor       =   &H8000000B&
            BackStyle       =   0  'Transparent
            Caption         =   "Telepon"
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
            Left            =   600
            TabIndex        =   18
            Top             =   3360
            Width           =   2415
         End
         Begin VB.Label Label1 
            BackColor       =   &H8000000B&
            BackStyle       =   0  'Transparent
            Caption         =   "Alamat"
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
            Left            =   600
            TabIndex        =   17
            Top             =   2400
            Width           =   2415
         End
         Begin VB.Label Label1 
            BackColor       =   &H8000000B&
            BackStyle       =   0  'Transparent
            Caption         =   "Jurusan"
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
            Left            =   600
            TabIndex        =   16
            Top             =   1800
            Width           =   2415
         End
         Begin VB.Label N 
            BackColor       =   &H8000000B&
            BackStyle       =   0  'Transparent
            Caption         =   "NIM"
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
            TabIndex        =   12
            Top             =   600
            Width           =   2415
         End
         Begin VB.Label Label1 
            BackColor       =   &H8000000B&
            BackStyle       =   0  'Transparent
            Caption         =   "Nama"
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
            TabIndex        =   11
            Top             =   1200
            Width           =   2415
         End
      End
      Begin VB.Frame Frame2 
         BackColor       =   &H80000004&
         Height          =   1095
         Left            =   600
         TabIndex        =   2
         Top             =   240
         Width           =   12375
         Begin VB.Image Image1 
            Height          =   1095
            Left            =   11040
            Picture         =   "Form3.frx":0000
            Stretch         =   -1  'True
            Top             =   0
            Width           =   1335
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
            TabIndex        =   4
            Top             =   600
            Width           =   5415
         End
         Begin VB.Label Label1 
            BackColor       =   &H8000000B&
            BackStyle       =   0  'Transparent
            Caption         =   "Fauzan Nurrachman"
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
            TabIndex        =   3
            Top             =   240
            Width           =   5415
         End
      End
      Begin MSDataGridLib.DataGrid DataGrid1 
         Bindings        =   "Form3.frx":1283A
         Height          =   4815
         Left            =   600
         TabIndex        =   1
         Top             =   5760
         Width           =   12375
         _ExtentX        =   21828
         _ExtentY        =   8493
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
         Index           =   3
         Left            =   4920
         TabIndex        =   19
         Top             =   11280
         Width           =   4935
      End
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Koneksi As New ADODB.Connection
Dim RSMahasiswa As ADODB.Recordset
Sub BukaDB()
Set Koneksi = New ADODB.Connection
Set RSMahasiswa = New ADODB.Recordset
Koneksi.Open "PROVIDER=Microsoft.Jet.OLEDB.4.0;Data Source=" & App.Path & "\Sisfo_4b.mdb"
End Sub
Private Sub cmbcreate_Click()
Call BukaDB
If Text1 = "" Or Text2 = "" Or Text3 = "" Or Text4 = "" Or Text5 = "" Then
MsgBox "Data Belum Lengkap"
Else
Dim TambahMahasiswa As String
    TambahMahasiswa = "Insert Into tbmahasiswa values ('" & Text1 & "','" & Text2 & "','" & Text3 & "','" & Text4 & "','" & Text5 & "')"
    Koneksi.Execute TambahMahasiswa
    MsgBox "Data Berhasil Ditambah", vbInformation, "Pemberitahuan"
    Form_Load
End If
DataGrid1.Refresh
End Sub

Private Sub cmbhapus_Click()
Call BukaDB
Dim HapusMahasiswa As String
    HapusMahasiswa = "Delete From tbmahasiswa where NIM='" & Text1 & "'"
    Koneksi.Execute HapusMahasiswa
    MsgBox "Data Berhasil DiHapus", vbInformation, "Pemberitahuan"
    Form_Load
DataGrid1.Refresh
End Sub

Private Sub cmbupdate_Click()
Call BukaDB
If Text1 = "" Or Text2 = "" Or Text3 = "" Or Text4 = "" Or Text5 = "" Then
MsgBox "Data Belum Lengkap"
Else
Dim EditMahasiswa As String
    EditMahasiswa = "update tbmahasiswa Set nama= '" & Text2 & "',jurusan='" & Text3 & "',alamat='" & Text4 & "', telp='" & Text5 & "' where NIM='" & Text1 & "'"
    Koneksi.Execute EditMahasiswa
    MsgBox "Data Berhasil DiUpdate", vbInformation, "Pemberitahuan"
    Form_Load
End If
End Sub

Private Sub cmdKeluar_Click()
Form4.Show
Form3.Hide
End Sub

Private Sub DataGrid1_Click()
If Adodc1.Recordset.EOF And Adodc1.Recordset.BOF Then
MsgBox "Data 0"
Else
Text1.Text = Adodc1.Recordset!NIM
Text2.Text = Adodc1.Recordset!nama
Text3.Text = Adodc1.Recordset!jurusan
Text4.Text = Adodc1.Recordset!alamat
Text5.Text = Adodc1.Recordset!telp
End If
End Sub
Private Sub Form_Load()
Text1 = ""
Text2 = ""
Text3 = ""
Text4 = ""
Text5 = ""
Call BukaDB
Adodc1.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source= " & App.Path & "\Sisfo_4b.mdb; "
Adodc1.RecordSource = "tbmahasiswa"
Adodc1.Refresh
Set DataGrid1.DataSource = Adodc1
End Sub
