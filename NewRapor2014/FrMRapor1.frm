VERSION 5.00
Begin VB.Form FrMRaporBegin 
   BorderStyle     =   0  'None
   Caption         =   "men@rapor - ver 1.0 // by ment@lsoft // copyright (c) 2006 "
   ClientHeight    =   4665
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   7665
   LinkTopic       =   "Form1"
   ScaleHeight     =   4665
   ScaleWidth      =   7665
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Label Label1 
      BackColor       =   &H00FFFFFF&
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
      Left            =   3120
      TabIndex        =   0
      Top             =   3000
      Width           =   3255
   End
   Begin VB.Image Image1 
      Height          =   4650
      Left            =   0
      Picture         =   "FrMRapor1.frx":0000
      Top             =   0
      Width           =   7650
   End
End
Attribute VB_Name = "FrMRaporBegin"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Image1_Click()
Dim isimm(15) As String
  Open App.Path & "\Mental.ini" For Input As #1
        Do While Not EOF(1)
            say = say + 1
            Line Input #1, isimm(say)
        Loop
  Close #1
FrMRapor.Show
End Sub

Private Sub Sink1_BtnClick()
FrMRaporPass.Show
End Sub

