VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00FFFFFF&
   Caption         =   "Form1"
   ClientHeight    =   10665
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   14805
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   10665
   ScaleWidth      =   14805
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmbhasilkali 
      Caption         =   "KALI"
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
      Left            =   6000
      TabIndex        =   10
      Top             =   5280
      Width           =   1215
   End
   Begin VB.CommandButton cmbhasilbagi 
      Caption         =   "BAGI"
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
      Left            =   4440
      TabIndex        =   9
      Top             =   5280
      Width           =   1215
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H8000000B&
      Caption         =   "PROGRAM KALKULATOR SEDERHANA"
      Height          =   10455
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   14535
      Begin VB.CommandButton cmbhapus 
         Caption         =   "CLEAR"
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
         Left            =   840
         TabIndex        =   33
         Top             =   6120
         Width           =   6375
      End
      Begin VB.CommandButton cmbclear 
         Caption         =   "CLEAR"
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
         Left            =   9480
         TabIndex        =   32
         Top             =   6360
         Width           =   3255
      End
      Begin VB.TextBox text1 
         BeginProperty Font 
            Name            =   "Rockwell"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   9480
         TabIndex        =   30
         Top             =   2160
         Width           =   3255
      End
      Begin VB.CommandButton cmbkali 
         Caption         =   "*"
         BeginProperty Font 
            Name            =   "Rockwell Condensed"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   12000
         TabIndex        =   27
         Top             =   5520
         Width           =   735
      End
      Begin VB.CommandButton cmbbagi 
         Caption         =   "/"
         BeginProperty Font 
            Name            =   "Rockwell Condensed"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   12000
         TabIndex        =   26
         Top             =   4680
         Width           =   735
      End
      Begin VB.CommandButton cmbkurang 
         Caption         =   "-"
         BeginProperty Font 
            Name            =   "Rockwell Condensed"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   12000
         TabIndex        =   25
         Top             =   3840
         Width           =   735
      End
      Begin VB.CommandButton cmbtambah 
         Caption         =   "+"
         BeginProperty Font 
            Name            =   "Rockwell Condensed"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   12000
         TabIndex        =   24
         Top             =   3000
         Width           =   735
      End
      Begin VB.CommandButton cmbhasil 
         Caption         =   "="
         BeginProperty Font 
            Name            =   "Rockwell Condensed"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   11160
         TabIndex        =   23
         Top             =   5520
         Width           =   735
      End
      Begin VB.CommandButton cmbangka 
         Caption         =   "."
         BeginProperty Font 
            Name            =   "Rockwell Condensed"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Index           =   20
         Left            =   9480
         TabIndex        =   22
         Top             =   5520
         Width           =   735
      End
      Begin VB.CommandButton cmbangka 
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Rockwell Condensed"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Index           =   0
         Left            =   10320
         TabIndex        =   21
         Top             =   5520
         Width           =   735
      End
      Begin VB.CommandButton cmbangka 
         Caption         =   "9"
         BeginProperty Font 
            Name            =   "Rockwell Condensed"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Index           =   9
         Left            =   11160
         TabIndex        =   20
         Top             =   4680
         Width           =   735
      End
      Begin VB.CommandButton cmbangka 
         Caption         =   "8"
         BeginProperty Font 
            Name            =   "Rockwell Condensed"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Index           =   8
         Left            =   10320
         TabIndex        =   19
         Top             =   4680
         Width           =   735
      End
      Begin VB.CommandButton cmbangka 
         Caption         =   "7"
         BeginProperty Font 
            Name            =   "Rockwell Condensed"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Index           =   7
         Left            =   9480
         TabIndex        =   18
         Top             =   4680
         Width           =   735
      End
      Begin VB.CommandButton cmbangka 
         Caption         =   "6"
         BeginProperty Font 
            Name            =   "Rockwell Condensed"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Index           =   6
         Left            =   11160
         TabIndex        =   17
         Top             =   3840
         Width           =   735
      End
      Begin VB.CommandButton cmbangka 
         Caption         =   "5"
         BeginProperty Font 
            Name            =   "Rockwell Condensed"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Index           =   5
         Left            =   10320
         TabIndex        =   16
         Top             =   3840
         Width           =   735
      End
      Begin VB.CommandButton cmbangka 
         Caption         =   "4"
         BeginProperty Font 
            Name            =   "Rockwell Condensed"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Index           =   4
         Left            =   9480
         TabIndex        =   15
         Top             =   3840
         Width           =   735
      End
      Begin VB.CommandButton cmbangka 
         Caption         =   "3"
         BeginProperty Font 
            Name            =   "Rockwell Condensed"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Index           =   3
         Left            =   11160
         TabIndex        =   14
         Top             =   3000
         Width           =   735
      End
      Begin VB.CommandButton cmbangka 
         Caption         =   "2"
         BeginProperty Font 
            Name            =   "Rockwell Condensed"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Index           =   2
         Left            =   10320
         TabIndex        =   13
         Top             =   3000
         Width           =   735
      End
      Begin VB.CommandButton cmbangka 
         Caption         =   "1"
         BeginProperty Font 
            Name            =   "Rockwell Condensed"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Index           =   1
         Left            =   9480
         TabIndex        =   12
         Top             =   3000
         Width           =   735
      End
      Begin VB.CommandButton cmbhasilkurang 
         Caption         =   "KURANG"
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
         Left            =   2520
         TabIndex        =   8
         Top             =   5160
         Width           =   1455
      End
      Begin VB.CommandButton cmbhasiltambah 
         Caption         =   "TAMBAH"
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
         Left            =   840
         TabIndex        =   7
         Top             =   5160
         Width           =   1455
      End
      Begin VB.TextBox txthasil 
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
         Left            =   3600
         TabIndex        =   1
         Top             =   3840
         Width           =   2895
      End
      Begin VB.TextBox txtbilangan2 
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
         Left            =   3600
         TabIndex        =   3
         Top             =   3000
         Width           =   2895
      End
      Begin VB.TextBox txtbilangan1 
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
         Left            =   3600
         TabIndex        =   0
         Top             =   2160
         Width           =   2895
      End
      Begin VB.Label Label2 
         BackColor       =   &H8000000B&
         Caption         =   "2020804178"
         BeginProperty Font 
            Name            =   "Rockwell"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   17
         Left            =   8400
         TabIndex        =   48
         Top             =   9960
         Width           =   1695
      End
      Begin VB.Label Label2 
         BackColor       =   &H8000000B&
         Caption         =   "7. Fauzan Nurrachman"
         BeginProperty Font 
            Name            =   "Rockwell"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   16
         Left            =   4560
         TabIndex        =   47
         Top             =   9960
         Width           =   4935
      End
      Begin VB.Label Label2 
         BackColor       =   &H8000000B&
         Caption         =   "2020804193"
         BeginProperty Font 
            Name            =   "Rockwell"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   15
         Left            =   8400
         TabIndex        =   46
         Top             =   9600
         Width           =   1695
      End
      Begin VB.Label Label2 
         BackColor       =   &H8000000B&
         Caption         =   "6. Sinta"
         BeginProperty Font 
            Name            =   "Rockwell"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   14
         Left            =   4560
         TabIndex        =   45
         Top             =   9600
         Width           =   4935
      End
      Begin VB.Label Label2 
         BackColor       =   &H8000000B&
         Caption         =   "2019804008"
         BeginProperty Font 
            Name            =   "Rockwell"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   13
         Left            =   8400
         TabIndex        =   44
         Top             =   7800
         Width           =   1695
      End
      Begin VB.Label Label2 
         BackColor       =   &H8000000B&
         Caption         =   "2019804113"
         BeginProperty Font 
            Name            =   "Rockwell"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   12
         Left            =   8400
         TabIndex        =   43
         Top             =   8160
         Width           =   1695
      End
      Begin VB.Label Label2 
         BackColor       =   &H8000000B&
         Caption         =   "2019804103"
         BeginProperty Font 
            Name            =   "Rockwell"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   11
         Left            =   8400
         TabIndex        =   42
         Top             =   8520
         Width           =   1695
      End
      Begin VB.Label Label2 
         BackColor       =   &H8000000B&
         Caption         =   "2019804105"
         BeginProperty Font 
            Name            =   "Rockwell"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   10
         Left            =   8400
         TabIndex        =   41
         Top             =   8880
         Width           =   1695
      End
      Begin VB.Label Label2 
         BackColor       =   &H8000000B&
         Caption         =   "2019804144"
         BeginProperty Font 
            Name            =   "Rockwell"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   9
         Left            =   8400
         TabIndex        =   40
         Top             =   9240
         Width           =   1695
      End
      Begin VB.Label Label2 
         BackColor       =   &H8000000B&
         Caption         =   "5. Iman Romansah"
         BeginProperty Font 
            Name            =   "Rockwell"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   8
         Left            =   4560
         TabIndex        =   39
         Top             =   9240
         Width           =   4935
      End
      Begin VB.Label Label2 
         BackColor       =   &H8000000B&
         Caption         =   "4. Taryana Sidik"
         BeginProperty Font 
            Name            =   "Rockwell"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   7
         Left            =   4560
         TabIndex        =   38
         Top             =   8880
         Width           =   4935
      End
      Begin VB.Label Label2 
         BackColor       =   &H8000000B&
         Caption         =   "3. Fahrizal Nurkholis"
         BeginProperty Font 
            Name            =   "Rockwell"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   6
         Left            =   4560
         TabIndex        =   37
         Top             =   8520
         Width           =   4935
      End
      Begin VB.Label Label2 
         BackColor       =   &H8000000B&
         Caption         =   "2. Melana DU"
         BeginProperty Font 
            Name            =   "Rockwell"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   5
         Left            =   4560
         TabIndex        =   36
         Top             =   8160
         Width           =   4935
      End
      Begin VB.Label Label2 
         BackColor       =   &H8000000B&
         Caption         =   "1. Okti Ruwahaeni"
         BeginProperty Font 
            Name            =   "Rockwell"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   3
         Left            =   4560
         TabIndex        =   35
         Top             =   7800
         Width           =   4935
      End
      Begin VB.Label Label2 
         BackColor       =   &H8000000B&
         Caption         =   "KELOMPOK MAFIA 3"
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
         Left            =   5880
         TabIndex        =   34
         Top             =   7200
         Width           =   3375
      End
      Begin VB.Label Label1 
         BackColor       =   &H8000000B&
         Caption         =   "Masukan dan keluaran angka"
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
         Left            =   9480
         TabIndex        =   31
         Top             =   1680
         Width           =   4575
      End
      Begin VB.Label Label2 
         BackColor       =   &H8000000B&
         Caption         =   "CONTOH 2"
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
         Index           =   2
         Left            =   8880
         TabIndex        =   29
         Top             =   960
         Width           =   3015
      End
      Begin VB.Label Label2 
         BackColor       =   &H8000000B&
         Caption         =   "CONTOH 1"
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
         Index           =   1
         Left            =   480
         TabIndex        =   28
         Top             =   960
         Width           =   3015
      End
      Begin VB.Label Label2 
         BackColor       =   &H8000000B&
         Caption         =   "PROGRAM KALKULATOR SEDERHANA"
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
         Index           =   0
         Left            =   4200
         TabIndex        =   11
         Top             =   360
         Width           =   5655
      End
      Begin VB.Label Label1 
         BackColor       =   &H8000000B&
         Caption         =   "Hasil"
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
         Left            =   1560
         TabIndex        =   6
         Top             =   3960
         Width           =   1215
      End
      Begin VB.Label Label1 
         BackColor       =   &H8000000B&
         Caption         =   "Bilangan 2"
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
         Left            =   1560
         TabIndex        =   5
         Top             =   3120
         Width           =   1695
      End
      Begin VB.Label Label1 
         BackColor       =   &H8000000B&
         Caption         =   "Bilangan 1"
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
         Left            =   1560
         TabIndex        =   4
         Top             =   2280
         Width           =   1575
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim pil As String
Dim X As Integer
Dim Y As Integer

Private Sub cmbclear_Click()
text1.Text = ""
End Sub

Private Sub cmbhapus_Click()
txtbilangan1.Text = ""
txtbilangan2.Text = ""
txthasil.Text = ""
End Sub

Private Sub cmbhasilbagi_Click()
txthasil.Text = Val(txtbilangan1.Text) / Val(txtbilangan2.Text)
End Sub

Private Sub cmbhasilkali_Click()
txthasil.Text = Val(txtbilangan1.Text) * Val(txtbilangan2.Text)
End Sub

Private Sub cmbhasilkurang_Click()
txthasil.Text = Val(txtbilangan1.Text) - Val(txtbilangan2.Text)
End Sub

Private Sub cmbhasiltambah_Click()
txthasil.Text = Val(txtbilangan1.Text) + Val(txtbilangan2.Text)
End Sub

Private Sub cmbangka_Click(Index As Integer)
text1.Text = text1.Text & cmbangka(Index).Caption
End Sub
Private Sub cmbbagi_Click()

X = text1.Text
text1.Text = ""
pil = "/"
End Sub
Private Sub cmbkali_Click()
X = text1.Text
text1.Text = ""
pil = "*"
End Sub

Private Sub cmbkurang_Click()
X = text1.Text
text1.Text = ""
pil = "-"
End Sub

Private Sub cmbtambah_Click()
X = text1.Text
text1.Text = ""
pil = "+"

End Sub

Private Sub cmbhasil_Click()
If pil = "+" Then
Y = text1.Text
n = X + Y
text1.Text = n
Else
If pil = "-" Then
Y = text1.Text
n = X - Y
text1.Text = n
Else
If pil = "*" Then
Y = text1.Text
n = X * Y
text1.Text = n
Else
If pil = "/" Then
Y = text1.Text
n = X / Y
text1.Text = n
End If
End If
End If
End If
End Sub

