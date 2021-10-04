VERSION 5.00
Begin VB.Form FormMenu 
   Caption         =   "Form Menu"
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
      Begin VB.Label Label2 
         BackColor       =   &H80000005&
         Caption         =   "2020804178"
         Height          =   375
         Index           =   17
         Left            =   9360
         TabIndex        =   3
         Top             =   3480
         Width           =   1695
      End
      Begin VB.Label Label2 
         BackColor       =   &H80000005&
         Caption         =   "Ujian Akhir Semester"
         BeginProperty Font 
            Name            =   "Rockwell"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Index           =   4
         Left            =   6720
         TabIndex        =   5
         Top             =   2640
         Width           =   3375
      End
      Begin VB.Label Label2 
         BackColor       =   &H80000005&
         Caption         =   " Fauzan Nurrachman"
         Height          =   375
         Index           =   16
         Left            =   5400
         TabIndex        =   4
         Top             =   3480
         Width           =   4935
      End
      Begin VB.Image Image1 
         Height          =   2175
         Left            =   7200
         Picture         =   "FormMenuUtama.frx":0000
         Stretch         =   -1  'True
         Top             =   360
         Width           =   2295
      End
      Begin VB.Label Label1 
         BackColor       =   &H8000000B&
         BackStyle       =   0  'Transparent
         Caption         =   "Data Rumah Sakit Rujukan Covid 19"
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
         Left            =   6360
         TabIndex        =   2
         Top             =   3120
         Width           =   3975
      End
      Begin VB.Label Label1 
         BackColor       =   &H8000000B&
         BackStyle       =   0  'Transparent
         Caption         =   "Copyright @Fauzan Nurrachman 2021"
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
         Left            =   6360
         TabIndex        =   1
         Top             =   7200
         Width           =   4695
      End
      Begin VB.Image Image2 
         Height          =   3375
         Left            =   6720
         Picture         =   "FormMenuUtama.frx":1283A
         Top             =   3840
         Width           =   3375
      End
   End
   Begin VB.Menu nmmaster 
      Caption         =   "Master"
      Begin VB.Menu nmuser 
         Caption         =   "Data User"
      End
      Begin VB.Menu nmRS 
         Caption         =   "Data Rumah Sakit Rujukan"
      End
   End
   Begin VB.Menu nmlaporan 
      Caption         =   "Laporan"
   End
   Begin VB.Menu keluar 
      Caption         =   "Keluar"
   End
End
Attribute VB_Name = "FormMenu"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub keluar_Click()
FormLogin.Show
FormMenu.Hide
End Sub

Private Sub nmlaporan_Click()
FormLaporan.Show
FormMenu.Hide
End Sub
Private Sub nmRS_Click()
FormRS.Show
FormMenu.Hide
End Sub
Private Sub nmuser_Click()
FormUser.Show
FormMenu.Hide
End Sub
