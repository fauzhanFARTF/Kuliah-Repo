VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form Login"
   ClientHeight    =   6900
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   10695
   LinkTopic       =   "Form2"
   ScaleHeight     =   6900
   ScaleWidth      =   10695
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
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
      Left            =   1200
      TabIndex        =   0
      Top             =   1800
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
      Begin VB.TextBox password 
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
         Left            =   3000
         TabIndex        =   3
         Text            =   "2020804178"
         Top             =   1800
         Width           =   4095
      End
      Begin VB.TextBox username 
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
         Left            =   3000
         TabIndex        =   1
         Text            =   "fauzannurrachman"
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
      BackColor       =   &H8000000E&
      Height          =   6735
      Left            =   120
      TabIndex        =   7
      Top             =   120
      Width           =   10455
      Begin VB.Label Label1 
         BackColor       =   &H8000000B&
         BackStyle       =   0  'Transparent
         Caption         =   "NPM   :"
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
         Left            =   2640
         TabIndex        =   12
         Top             =   1080
         Width           =   1215
      End
      Begin VB.Label Label1 
         BackColor       =   &H8000000B&
         BackStyle       =   0  'Transparent
         Caption         =   "NAMA :"
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
         Left            =   2400
         TabIndex        =   11
         Top             =   720
         Width           =   1095
      End
      Begin VB.Label Label1 
         BackColor       =   &H8000000B&
         BackStyle       =   0  'Transparent
         Caption         =   "Copyright @ Fauzan Nurrachman NPM 2020804178"
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
         Index           =   5
         Left            =   2640
         TabIndex        =   10
         Top             =   6240
         Width           =   5535
      End
      Begin VB.Label Label1 
         BackColor       =   &H8000000B&
         BackStyle       =   0  'Transparent
         Caption         =   "2020804178"
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
         Left            =   3600
         TabIndex        =   9
         Top             =   1080
         Width           =   4455
      End
      Begin VB.Label Label1 
         BackColor       =   &H8000000B&
         BackStyle       =   0  'Transparent
         Caption         =   "FAUZAN NURRACHMAN"
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
         Left            =   3600
         TabIndex        =   8
         Top             =   720
         Width           =   4215
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmbkeluar_Click()
End
End Sub

Private Sub cmblogin_Click()
Dim user As String
Dim pass As String

user = "fauzannurrachman"
pass = "2020804178"

If (user = UserName.Text And pass = Password.Text) Then
MsgBox "Login Berhasil !!!"
Form3.Show
Else
MsgBox "Login Gagal !!!"
End If
End Sub


