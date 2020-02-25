VERSION 5.00
Object = "{6DE12A11-2924-11D2-988A-444553540000}#1.0#0"; "Sinkbutton.ocx"
Begin VB.Form FrMRaporPass 
   BackColor       =   &H00FFFFFF&
   Caption         =   "Form1"
   ClientHeight    =   5355
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   5175
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   8.25
      Charset         =   162
      Weight          =   700
      Underline       =   0   'False
      Italic          =   -1  'True
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   5355
   ScaleWidth      =   5175
   StartUpPosition =   2  'CenterScreen
   Begin Sinkbutton.Sink Sink2 
      Height          =   495
      Left            =   225
      TabIndex        =   2
      Top             =   3825
      Width           =   4755
      _ExtentX        =   8387
      _ExtentY        =   873
      BackColor       =   10329537
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Caption         =   "LÝSANS GÝRÝÞÝ ÝÇÝN TIKLAYINIZ"
   End
   Begin VB.TextBox text4 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   0
      Left            =   3120
      MaxLength       =   3
      TabIndex        =   5
      Top             =   3885
      Width           =   855
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   2130
      MaxLength       =   3
      TabIndex        =   4
      Top             =   3885
      Width           =   855
   End
   Begin VB.TextBox Text2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   1170
      MaxLength       =   3
      TabIndex        =   3
      Top             =   3885
      Width           =   855
   End
   Begin Sinkbutton.Sink Sink1 
      Height          =   495
      Left            =   225
      TabIndex        =   1
      Top             =   4440
      Width           =   4770
      _ExtentX        =   8414
      _ExtentY        =   873
      BackColor       =   12632319
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Caption         =   "LÝSANS ONAY"
   End
   Begin VB.TextBox Text1 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   225
      MaxLength       =   3
      TabIndex        =   0
      Top             =   3885
      Width           =   855
   End
   Begin VB.TextBox Text5 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   0
      Left            =   4110
      MaxLength       =   3
      TabIndex        =   8
      Top             =   3885
      Width           =   840
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackColor       =   &H00E8E8FA&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   240
      Left            =   210
      TabIndex        =   7
      Top             =   3315
      Width           =   4755
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H00E8E8FA&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   240
      Left            =   225
      TabIndex        =   6
      Top             =   2970
      Width           =   4740
   End
   Begin VB.Image Image1 
      Height          =   5355
      Left            =   0
      Picture         =   "FrMRaporPass.frx":0000
      Top             =   0
      Width           =   5190
   End
End
Attribute VB_Name = "FrMRaporPass"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function GetVolumeInformation Lib "kernel32.dll" Alias "GetVolumeInformationA" (ByVal lpRootPathName As String, ByVal lpVolumeNameBuffer As String, ByVal nVolumeNameSize As Integer, lpVolumeSeriNumaraber As Long, lpMaximumComponentLength As Long, lpFileSystemFlags As Long, ByVal lpFileSystemNameBuffer As String, ByVal nFileSystemNameSize As Long) As Long
Function Tikisteker(strDrive As String) As Long
    Dim SeriNumara As Long
    Dim Guven As Long
    Dim Takas1 As String
    Dim Takas2 As String
    Takas1 = String$(255, Chr$(0))
    Takas2 = String$(255, Chr$(0))
    Guven = GetVolumeInformation(strDrive, Takas1, _
    Len(Takas1), SeriNumara, 0, 0, Takas2, Len(Takas2))
    Tikisteker = SeriNumara
End Function
Private Sub Form_Load()
Dim isim(14) As String
Sink1.Visible = False
Metin2 = 0
Metin3 = 0
Metin4 = 0
Metin5 = 0

    Open App.Path & "\Mental.ini" For Input As #1
        Do While Not EOF(1)
            say = say + 1
            Line Input #1, isim(say)
        Loop
    Close #1

Label1.Caption = isim(5)
Ad1 = Mid(isim(5), 1, 1)
Bd1 = Mid(isim(5), 2, 1)
Cd1 = Mid(isim(5), 3, 1)
AcD = Mid(Date$, 2, 1)
AcM = Mid(Date$, 5, 1)
AcY = Mid(Date$, 7, 4)

Position = Val(Tikisteker("c:\")) + Asc(Ad1) + Asc(Bd1) + Asc(Cd1) + Val(AcD) + Val(AcM) + Val(AcY)
Plus = Asc(Ad1) + Asc(Bd1) + Asc(Cd1) + Val(AcD) + Val(AcM) + Val(AcY)
Label2.Caption = "Aktivasyon Numarasý:" + Str(Position) + " -" + Str(Plus)

Rem ****************************************************************/// ÞÝFRE KONTROLÜ



Rem ****************************************************************/// ÞÝFRE KONTROLÜ SONU


End Sub

Private Sub Label7_Click()

End Sub




Private Sub Sink1_BtnClick()
Rem ---------------------------------------------------------- /// Form Boyutlandýrma /// SAnalyst (C)06

Bull = Text5(0).Text
Gelenss = Text1 + Text2 + Text3 + Text4(0) + Text5(0)
Reports = Str(Position) + Str(Plus)
GelenAktivasyon = Val(Reports)
If Len(GelenAktivasyon) > 11 Then
       GelenAktivasyonMd = Mid(GelenAktivasyon, 1, 11)
Else:  GelenAktivasyonMd = GelenAktivasyon
End If
GelenAktivasyonNum = Val(GelenAktivasyonMd)
GelenAktivasyonNum = GelenAktivasyonNum * Bull
GelenAktivasyonChr = Str(GelenAktivasyonNum)
Sonkezkirp = Mid(GelenAktivasyonChr, 2, 12)
Sonkezkirp = Sonkezkirp + Text5(0)
If Sonkezkirp <> Gelenss Then
                        Sink1.Caption = "GEÇERSÝZ ÞÝFRE PROGRAM BLOKE EDÝLDÝ"
                        'Sink1.Visible = False
                        Else: GoTo Screenp
                        
                        
End If
GoTo GoodBadUgly
Screenp:
Sink1.Caption = "ÞÝFRE ONAYLANDI TEÞEKKÜRLER..."
   Open App.Path & "\eula.txt" For Append As #1
      Write #1, Val(Gelenss)
   Close #1
GoodBadUgly:
Rem ---------------------------------------------------------- /// Form Boyutlandýrma /// SAnalyst (C)06
End Sub



Private Sub Sink2_BtnClick()
Label1.Enabled = False
Sink2.Visible = False
Text1.SetFocus
End Sub

Private Sub Text1_Change()
If Len(Text1.Text) = 3 Then Text2.SetFocus
If Len(Text1.Text) < 3 Then Sink1.Visible = False
Passw1 = Len(Text1.Text)
If Passw1 = 3 And Passw2 = 3 And Passw3 = 3 And Passw4 = 3 And Passw5 = 3 Then Sink1.Visible = True
End Sub

Private Sub Text2_Change()
If Len(Text2.Text) = 3 Then Text3.SetFocus
If Len(Text2.Text) < 3 Then Sink1.Visible = False
If Text2.Text <> "" And Metin2 = 0 Then
                        Metin2 = 1
End If
If Metin2 = 1 And Text2.Text = "" Then Text1.SetFocus
Passw2 = Len(Text2.Text)
If Passw1 = 3 And Passw2 = 3 And Passw3 = 3 And Passw4 = 3 And Passw5 = 3 Then Sink1.Visible = True
End Sub

Private Sub Text3_Change()
If Len(Text3.Text) = 3 Then Text4(0).SetFocus
If Len(Text3.Text) < 3 Then Sink1.Visible = False
If Text3.Text <> "" And Metin3 = 0 Then
                        Metin3 = 1
End If
If Metin3 = 1 And Text3.Text = "" Then Text2.SetFocus
Passw3 = Len(Text3.Text)
If Passw1 = 3 And Passw2 = 3 And Passw3 = 3 And Passw4 = 3 And Passw5 = 3 Then Sink1.Visible = True
End Sub

Private Sub text4_Change(Index As Integer)
If Len(Text4(0).Text) = 3 Then Text5(0).SetFocus
If Len(Text4(0).Text) < 3 Then Sink1.Visible = False
If Text4(0).Text <> "" And Metin4 = 0 Then
                           Metin4 = 1
End If
If Metin4 = 1 And Text4(0).Text = "" Then Text3.SetFocus
Passw4 = Len(Text4(0).Text)
If Passw1 = 3 And Passw2 = 3 And Passw3 = 3 And Passw4 = 3 And Passw5 = 3 Then Sink1.Visible = True
End Sub

Private Sub text5_Change(Index As Integer)
If Len(Text5(0).Text) = 3 Then Sink1.Visible = False
If Text5(0).Text <> "" And Metin5 = 0 Then
                           Metin5 = 1
End If
If Metin5 = 1 And Text4(0).Text = "" Then Text4(0).SetFocus
Passw5 = Len(Text5(0).Text)
If Passw1 = 3 And Passw2 = 3 And Passw3 = 3 And Passw4 = 3 And Passw5 = 3 Then Sink1.Visible = True
End Sub
