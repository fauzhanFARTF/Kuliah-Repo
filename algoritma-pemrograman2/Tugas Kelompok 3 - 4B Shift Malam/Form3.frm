VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form Form3 
   Caption         =   "Form3"
   ClientHeight    =   11940
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   13470
   LinkTopic       =   "Form3"
   ScaleHeight     =   11940
   ScaleWidth      =   13470
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame3 
      BackColor       =   &H00FFFFFF&
      Height          =   12015
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   13335
      Begin VB.Frame Frame2 
         BackColor       =   &H00FFFFFF&
         Height          =   1095
         Left            =   600
         TabIndex        =   13
         Top             =   240
         Width           =   12375
         Begin VB.Image Image1 
            Height          =   975
            Left            =   11280
            Picture         =   "Form3.frx":0000
            Stretch         =   -1  'True
            Top             =   120
            Width           =   1095
         End
         Begin VB.Label Label1 
            BackColor       =   &H8000000B&
            BackStyle       =   0  'Transparent
            Caption         =   "Kelompok 3 - Data Tanaman"
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
            Left            =   4560
            TabIndex        =   14
            Top             =   480
            Width           =   5415
         End
      End
      Begin VB.Frame Frame1 
         BackColor       =   &H00FFFFFF&
         Caption         =   "INPUT DATA TANAMAN"
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
         TabIndex        =   2
         Top             =   1440
         Width           =   12375
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
            TabIndex        =   18
            Top             =   1800
            Width           =   4095
         End
         Begin VB.ComboBox Combo2 
            BeginProperty Font 
               Name            =   "Rockwell"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   405
            ItemData        =   "Form3.frx":1283A
            Left            =   2760
            List            =   "Form3.frx":12853
            TabIndex        =   17
            Top             =   3240
            Width           =   4095
         End
         Begin VB.ComboBox Combo1 
            BeginProperty Font 
               Name            =   "Rockwell"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   405
            ItemData        =   "Form3.frx":12891
            Left            =   2760
            List            =   "Form3.frx":1289B
            TabIndex        =   16
            Top             =   2520
            Width           =   4095
         End
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
            TabIndex        =   12
            Top             =   1200
            Width           =   1815
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
            TabIndex        =   7
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
            TabIndex        =   6
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
            TabIndex        =   5
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
            TabIndex        =   4
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
            TabIndex        =   3
            Top             =   2160
            Width           =   1815
         End
         Begin VB.Label Label1 
            BackColor       =   &H8000000B&
            BackStyle       =   0  'Transparent
            Caption         =   "Nama Latin"
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
            Left            =   480
            TabIndex        =   19
            Top             =   1800
            Width           =   2415
         End
         Begin VB.Label Label1 
            BackColor       =   &H8000000B&
            BackStyle       =   0  'Transparent
            Caption         =   "Rasa"
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
            Left            =   480
            TabIndex        =   11
            Top             =   3240
            Width           =   2415
         End
         Begin VB.Label Label1 
            BackColor       =   &H8000000B&
            BackStyle       =   0  'Transparent
            Caption         =   "Jenis Akar"
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
            Left            =   480
            TabIndex        =   10
            Top             =   2520
            Width           =   2415
         End
         Begin VB.Label N 
            BackColor       =   &H8000000B&
            BackStyle       =   0  'Transparent
            Caption         =   "ID"
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
            Left            =   480
            TabIndex        =   9
            Top             =   600
            Width           =   2415
         End
         Begin VB.Label Label1 
            BackColor       =   &H8000000B&
            BackStyle       =   0  'Transparent
            Caption         =   "Nama Tanaman"
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
            Left            =   480
            TabIndex        =   8
            Top             =   1200
            Width           =   2415
         End
      End
      Begin MSDataGridLib.DataGrid DataGrid1 
         Bindings        =   "Form3.frx":128B2
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
         Caption         =   "Copyright @ Kelompok 3 - 2021"
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
         Left            =   5160
         TabIndex        =   15
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
Dim RSTanaman As ADODB.Recordset
Sub BukaDB()
Set Koneksi = New ADODB.Connection
Set RSTanaman = New ADODB.Recordset
Koneksi.Open "PROVIDER=Microsoft.Jet.OLEDB.4.0;Data Source=" & App.Path & "\kel3.mdb"
End Sub
Private Sub cmbcreate_Click()
Call BukaDB
If Text1 = "" Or Text2 = "" Or Text3 = "" Or Combo1 = "" Or Combo2 = "" Then
MsgBox "Data Belum Lengkap"
Else
Dim TambahTanaman As String
    TambahTanaman = "Insert Into tbtanaman values ('" & Text1 & "','" & Text2 & "','" & Text3 & "','" & Combo1 & "','" & Combo2 & "')"
    Koneksi.Execute TambahTanaman
    MsgBox "Data Berhasil Ditambah", vbInformation, "Pemberitahuan"
    Form_Load
End If
DataGrid1.Refresh
End Sub

Private Sub cmbhapus_Click()
Call BukaDB
Dim HapusTanaman As String
    HapusTanaman = "Delete From tbTanaman where id='" & Text1 & "'"
    Koneksi.Execute HapusTanaman
    MsgBox "Data Berhasil DiHapus", vbInformation, "Pemberitahuan"
    Form_Load
DataGrid1.Refresh
End Sub

Private Sub cmbupdate_Click()
Call BukaDB
If Text1 = "" Or Text2 = "" Or Text3 = "" Or Combo1 = "" Or Combo2 = "" Then
MsgBox "Data Belum Lengkap"
Else
Dim EditTanaman As String
    EditTanaman = "update tbTanaman Set namatanaman= '" & Text2 & "', namalatin= '" & Text3 & "', jenisakar='" & Combo1 & "',rasabuah='" & Combo2 & "' where id='" & Text1 & "'"
    Koneksi.Execute EditTanaman
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
Text1.Text = Adodc1.Recordset!id
Text2.Text = Adodc1.Recordset!namatanaman
Text3.Text = Adodc1.Recordset!namalatin
Combo1.Text = Adodc1.Recordset!jenisakar
Combo2.Text = Adodc1.Recordset!rasabuah
End If
End Sub
Private Sub Form_Load()
Text1 = ""
Text2 = ""
Text3 = ""
Combo1 = ""
Combo2 = ""
Call BukaDB
Adodc1.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source= " & App.Path & "\kel3.mdb; "
Adodc1.RecordSource = "tbTanaman"
Adodc1.Refresh
Set DataGrid1.DataSource = Adodc1
End Sub

