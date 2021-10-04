VERSION 5.00
Begin VB.Form Form4 
   Caption         =   "Form4"
   ClientHeight    =   7905
   ClientLeft      =   225
   ClientTop       =   870
   ClientWidth     =   16005
   BeginProperty Font 
      Name            =   "Rockwell"
      Size            =   14.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form4"
   ScaleHeight     =   7905
   ScaleWidth      =   16005
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame2 
      BackColor       =   &H8000000E&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   7695
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   15975
      Begin VB.Image Image1 
         Height          =   2535
         Left            =   6840
         Picture         =   "Form4.frx":0000
         Stretch         =   -1  'True
         Top             =   840
         Width           =   2655
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
         Index           =   0
         Left            =   5640
         TabIndex        =   5
         Top             =   5400
         Width           =   4935
      End
      Begin VB.Label Label1 
         BackColor       =   &H8000000B&
         BackStyle       =   0  'Transparent
         Caption         =   "NPM 2020804178"
         Height          =   495
         Index           =   5
         Left            =   6480
         TabIndex        =   4
         Top             =   4800
         Width           =   5415
      End
      Begin VB.Label Label1 
         BackColor       =   &H8000000B&
         BackStyle       =   0  'Transparent
         Caption         =   "Fauzan Nurrachman"
         Height          =   495
         Index           =   6
         Left            =   6360
         TabIndex        =   3
         Top             =   4440
         Width           =   5415
      End
      Begin VB.Label Label1 
         BackColor       =   &H8000000B&
         BackStyle       =   0  'Transparent
         Caption         =   "UNIVERSITAS INSAN PEMBANGUNAN"
         Height          =   495
         Index           =   2
         Left            =   5400
         TabIndex        =   2
         Top             =   3480
         Width           =   5175
      End
      Begin VB.Label Label1 
         BackColor       =   &H8000000B&
         BackStyle       =   0  'Transparent
         Caption         =   "Jl. Raya Serang Desa Bitung Kecamatan Cikupa"
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
         Left            =   5520
         TabIndex        =   1
         Top             =   3840
         Width           =   4935
      End
   End
   Begin VB.Menu nmmaster 
      Caption         =   "Master"
      Begin VB.Menu nmuser 
         Caption         =   "User"
      End
      Begin VB.Menu nmmahasiswa 
         Caption         =   "Mahasiswa"
      End
   End
   Begin VB.Menu nmlaporan 
      Caption         =   "Laporan"
   End
   Begin VB.Menu keluar 
      Caption         =   "Keluar"
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub keluar_Click()
Form2.Show
Form4.Hide
End Sub

Private Sub nmlaporan_Click()
Form5.Show
Form4.Hide
End Sub

Private Sub nmmahasiswa_Click()
Form3.Show
Form4.Hide
End Sub

Private Sub nmuser_Click()
Form1.Show
Form4.Hide
End Sub
