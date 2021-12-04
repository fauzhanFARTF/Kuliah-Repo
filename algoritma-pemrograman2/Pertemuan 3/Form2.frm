VERSION 5.00
Begin VB.Form Form2 
   Caption         =   "Form2"
   ClientHeight    =   7920
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   10455
   LinkTopic       =   "Form2"
   ScaleHeight     =   7920
   ScaleWidth      =   10455
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0C0FF&
      Caption         =   "DATABASE NILAI"
      Height          =   7935
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   10575
      Begin VB.TextBox txtpredikat 
         BackColor       =   &H8000000B&
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
         Left            =   6720
         Locked          =   -1  'True
         TabIndex        =   17
         Top             =   5640
         Width           =   2895
      End
      Begin VB.CommandButton cmbcekpredikat 
         Caption         =   "PREDIKAT"
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
         Left            =   6840
         TabIndex        =   16
         Top             =   6600
         Width           =   1815
      End
      Begin VB.CommandButton cmbceknilai 
         Caption         =   "CEK NILAI"
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
         Left            =   3480
         TabIndex        =   15
         Top             =   6600
         Width           =   1815
      End
      Begin VB.TextBox txtnilaietika 
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
         Left            =   3480
         TabIndex        =   12
         Top             =   1440
         Width           =   2895
      End
      Begin VB.TextBox txtnilaiangka 
         BackColor       =   &H8000000B&
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
         Left            =   3480
         Locked          =   -1  'True
         TabIndex        =   11
         Top             =   5640
         Width           =   2895
      End
      Begin VB.TextBox txtnilaiakhir 
         BackColor       =   &H8000000B&
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
         Left            =   3480
         Locked          =   -1  'True
         TabIndex        =   10
         Top             =   4800
         Width           =   2895
      End
      Begin VB.TextBox txtnilaitugas 
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
         Left            =   3480
         TabIndex        =   9
         Top             =   3960
         Width           =   2895
      End
      Begin VB.TextBox txtnilaiuas 
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
         Left            =   3480
         TabIndex        =   8
         Top             =   3120
         Width           =   2895
      End
      Begin VB.TextBox txtnilaiuts 
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
         Left            =   3480
         TabIndex        =   7
         Top             =   2280
         Width           =   2895
      End
      Begin VB.TextBox txtnilaiabsensi 
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
         Left            =   3480
         TabIndex        =   6
         Top             =   600
         Width           =   2895
      End
      Begin VB.Label Label1 
         BackColor       =   &H8000000B&
         BackStyle       =   0  'Transparent
         Caption         =   "Nilai Tugas"
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
         Left            =   1200
         TabIndex        =   14
         Top             =   4080
         Width           =   1575
      End
      Begin VB.Label Label1 
         BackColor       =   &H8000000B&
         BackStyle       =   0  'Transparent
         Caption         =   "Nilai Angka"
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
         Left            =   1200
         TabIndex        =   13
         Top             =   5760
         Width           =   1575
      End
      Begin VB.Label Label1 
         BackColor       =   &H8000000B&
         BackStyle       =   0  'Transparent
         Caption         =   "Nilai Akhir"
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
         Left            =   1200
         TabIndex        =   5
         Top             =   4920
         Width           =   1575
      End
      Begin VB.Label Label1 
         BackColor       =   &H8000000B&
         BackStyle       =   0  'Transparent
         Caption         =   "Nilai UAS"
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
         Left            =   1200
         TabIndex        =   4
         Top             =   3240
         Width           =   1575
      End
      Begin VB.Label Label1 
         BackColor       =   &H8000000B&
         BackStyle       =   0  'Transparent
         Caption         =   "Nilai UTS"
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
         Left            =   1200
         TabIndex        =   3
         Top             =   2400
         Width           =   1575
      End
      Begin VB.Label Label1 
         BackColor       =   &H8000000B&
         BackStyle       =   0  'Transparent
         Caption         =   "Nilai Etika"
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
         Left            =   1200
         TabIndex        =   2
         Top             =   1560
         Width           =   1575
      End
      Begin VB.Label Label1 
         BackColor       =   &H8000000B&
         BackStyle       =   0  'Transparent
         Caption         =   "Nilai Absensi"
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
         Left            =   1200
         TabIndex        =   1
         Top             =   720
         Width           =   2415
      End
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub cmbceknilai_Click()
txtnilaiakhir.Text = (Val(txtnilaiabsensi.Text) + Val(txtnilaietika.Text) + Val(txtnilaiuts.Text) + Val(txtnilaiuas.Text) + Val(txtnilaitugas.Text)) / 5
If txtnilaiakhir.Text < 60 Then
txtnilaiangka.Text = "D"
ElseIf txtnilaiakhir.Text >= 60 And txtnilaiakhir.Text < 70 Then
txtnilaiangka.Text = "C"
ElseIf txtnilaiakhir.Text >= 70 And txtnilaiakhir.Text < 80 Then
txtnilaiangka.Text = "B"
ElseIf txtnilaiakhir.Text >= 80 Then
txtnilaiangka.Text = "A"
Else
txtnilaiakhir.Text = "Nilai Bukan Angka"
End If
End Sub

Private Sub cmbcekpredikat_Click()
If txtnilaiakhir.Text >= 60 Then
txtpredikat.Text = "Lulus"
Else
txtpredikat.Text = "Tidak Lulus"
End If
End Sub
