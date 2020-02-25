VERSION 5.00
Object = "{5664FAD6-05FD-11D4-AABA-00105A6F87AB}#1.0#0"; "dXEditrs.dll"
Object = "{BDDD132C-614B-11D3-B85E-85ADB7D07209}#1.0#0"; "dXSBar.dll"
Object = "{6A24B331-7634-11D3-A5B0-0050044A7E1A}#1.7#0"; "DXDBGrid.dll"
Object = "{6DE12A11-2924-11D2-988A-444553540000}#1.0#0"; "Sinkbutton.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form FrMRapor 
   BackColor       =   &H00C0C0FF&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "men@rapor - ver 1.0 // by ment@lsoft // copyright (c) 2010"
   ClientHeight    =   9630
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   13725
   Icon            =   "FrMRapor.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9630
   ScaleWidth      =   13725
   StartUpPosition =   2  'CenterScreen
   Begin DXDBGRIDLibCtl.dxDBGrid dxDB 
      Height          =   2655
      Left            =   5640
      OleObjectBlob   =   "FrMRapor.frx":030A
      TabIndex        =   68
      Top             =   7290
      Visible         =   0   'False
      Width           =   3495
   End
   Begin VB.TextBox Text4 
      Height          =   375
      Left            =   4980
      TabIndex        =   49
      Text            =   "Text1"
      Top             =   -500
      Width           =   795
   End
   Begin VB.Frame Frame5 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0FF&
      Caption         =   "Cari Seçimi "
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000C0&
      Height          =   6555
      Left            =   11745
      TabIndex        =   35
      Top             =   1170
      Visible         =   0   'False
      Width           =   1935
      Begin XpressEditorsLibCtl.dxTextEdit dxTextEdit2 
         Height          =   315
         Left            =   1020
         OleObjectBlob   =   "FrMRapor.frx":10C2
         TabIndex        =   61
         Top             =   5880
         Width           =   795
      End
      Begin VB.OptionButton Option1 
         BackColor       =   &H80000004&
         Caption         =   "Aktif"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   162
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   5
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   38
         Top             =   6240
         Width           =   585
      End
      Begin VB.OptionButton Option1 
         BackColor       =   &H80000004&
         Caption         =   "Pasif"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   162
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   4
         Left            =   690
         Style           =   1  'Graphical
         TabIndex        =   37
         Top             =   6240
         Width           =   585
      End
      Begin VB.OptionButton Option1 
         BackColor       =   &H80000004&
         Caption         =   "Hepsi"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   162
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   3
         Left            =   1260
         Style           =   1  'Graphical
         TabIndex        =   36
         Top             =   6240
         Width           =   585
      End
      Begin XpressEditorsLibCtl.dxPickEdit dxPickEdit1 
         Height          =   330
         Index           =   4
         Left            =   120
         OleObjectBlob   =   "FrMRapor.frx":1183
         TabIndex        =   39
         Top             =   1020
         Width           =   1695
      End
      Begin XpressEditorsLibCtl.dxPickEdit dxPickEdit1 
         Height          =   330
         Index           =   6
         Left            =   120
         OleObjectBlob   =   "FrMRapor.frx":1378
         TabIndex        =   40
         Top             =   1710
         Width           =   1695
      End
      Begin XpressEditorsLibCtl.dxPickEdit dxPickEdit1 
         Height          =   330
         Index           =   7
         Left            =   120
         OleObjectBlob   =   "FrMRapor.frx":156D
         TabIndex        =   41
         Top             =   2400
         Width           =   1695
      End
      Begin XpressEditorsLibCtl.dxPickEdit dxPickEdit1 
         Height          =   330
         Index           =   9
         Left            =   120
         OleObjectBlob   =   "FrMRapor.frx":1762
         TabIndex        =   42
         Top             =   3090
         Width           =   1695
      End
      Begin XpressEditorsLibCtl.dxTextEdit dxTextEdit1 
         Height          =   315
         Index           =   2
         Left            =   90
         OleObjectBlob   =   "FrMRapor.frx":1973
         TabIndex        =   62
         Top             =   4500
         Width           =   1695
      End
      Begin XpressEditorsLibCtl.dxTextEdit dxTextEdit1 
         Height          =   315
         Index           =   3
         Left            =   90
         OleObjectBlob   =   "FrMRapor.frx":1A49
         TabIndex        =   63
         Top             =   5490
         Visible         =   0   'False
         Width           =   1695
      End
      Begin XpressEditorsLibCtl.dxPickEdit dxPickEdit1 
         Height          =   330
         Index           =   8
         Left            =   990
         OleObjectBlob   =   "FrMRapor.frx":1B1F
         TabIndex        =   64
         Top             =   4830
         Width           =   795
      End
      Begin XpressEditorsLibCtl.dxPickEdit dxPickEdit1 
         Height          =   330
         Index           =   11
         Left            =   120
         OleObjectBlob   =   "FrMRapor.frx":1D9B
         TabIndex        =   69
         Top             =   3780
         Width           =   1695
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Bölge"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   162
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   315
         Index           =   22
         Left            =   120
         TabIndex        =   70
         Top             =   3450
         Width           =   1695
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Kodu"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   162
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   345
         Index           =   14
         Left            =   90
         TabIndex        =   67
         Top             =   5160
         Visible         =   0   'False
         Width           =   1695
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Operator"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   162
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   345
         Index           =   15
         Left            =   90
         TabIndex        =   66
         Top             =   4830
         Width           =   885
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Kodu"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   162
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   345
         Index           =   16
         Left            =   90
         TabIndex        =   65
         Top             =   4200
         Width           =   1695
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Öiçüt"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   162
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   315
         Index           =   12
         Left            =   120
         TabIndex        =   60
         ToolTipText     =   "Alt Taraftaki Seçimleri Sýfýrlar"
         Top             =   5880
         Width           =   885
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Özel Kodu"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   162
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   315
         Index           =   20
         Left            =   120
         TabIndex        =   46
         Top             =   690
         Width           =   1695
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Yetki Kodu"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   162
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   315
         Index           =   19
         Left            =   120
         TabIndex        =   45
         Top             =   1380
         Width           =   1695
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Ýli"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   162
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   315
         Index           =   18
         Left            =   120
         TabIndex        =   44
         Top             =   2070
         Width           =   1695
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Ana Bölge"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   162
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   315
         Index           =   13
         Left            =   120
         TabIndex        =   43
         Top             =   2760
         Width           =   1695
      End
   End
   Begin VB.Frame Frame4 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0FF&
      Caption         =   " Tarih Bilgisi "
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000C0&
      Height          =   6555
      Left            =   10020
      TabIndex        =   18
      Top             =   1170
      Visible         =   0   'False
      Width           =   1725
      Begin XpressEditorsLibCtl.dxDateEdit dxDateEdit1 
         Height          =   330
         Left            =   120
         OleObjectBlob   =   "FrMRapor.frx":1FAC
         TabIndex        =   19
         Top             =   1050
         Width           =   1485
      End
      Begin XpressEditorsLibCtl.dxDateEdit dxDateEdit2 
         Height          =   330
         Left            =   120
         OleObjectBlob   =   "FrMRapor.frx":2160
         TabIndex        =   20
         Top             =   1770
         Width           =   1485
      End
      Begin XpressEditorsLibCtl.dxDateEdit dxDateEdit4 
         Height          =   330
         Left            =   120
         OleObjectBlob   =   "FrMRapor.frx":22F6
         TabIndex        =   21
         Top             =   4080
         Visible         =   0   'False
         Width           =   1485
      End
      Begin XpressEditorsLibCtl.dxDateEdit dxDateEdit3 
         Height          =   330
         Left            =   120
         OleObjectBlob   =   "FrMRapor.frx":248C
         TabIndex        =   26
         Top             =   3360
         Visible         =   0   'False
         Width           =   1485
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Baþ.Tarihi"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   162
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   315
         Index           =   7
         Left            =   120
         TabIndex        =   25
         Top             =   720
         Width           =   1485
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Bit.Tarihi"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   162
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   315
         Index           =   6
         Left            =   120
         TabIndex        =   24
         Top             =   1440
         Width           =   1485
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Baþ.Tarihi"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   162
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   315
         Index           =   10
         Left            =   120
         TabIndex        =   23
         Top             =   3060
         Visible         =   0   'False
         Width           =   1485
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Bit.Tarihi"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   162
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   315
         Index           =   17
         Left            =   120
         TabIndex        =   22
         Top             =   3780
         Visible         =   0   'False
         Width           =   1485
      End
   End
   Begin VB.Frame Frame3 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0FF&
      Caption         =   "  Seçim  "
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000C0&
      Height          =   6555
      Left            =   7395
      TabIndex        =   16
      Top             =   1170
      Visible         =   0   'False
      Width           =   2625
      Begin VB.ListBox List1 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0FF&
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   162
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   5655
         Left            =   120
         Style           =   1  'Checkbox
         TabIndex        =   17
         Top             =   720
         Width           =   2385
      End
   End
   Begin VB.Frame Frame1 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0FF&
      Caption         =   " Stok Kartlarý "
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000C0&
      Height          =   6555
      Left            =   3600
      TabIndex        =   3
      Top             =   1170
      Visible         =   0   'False
      Width           =   3795
      Begin VB.CommandButton Command3 
         BackColor       =   &H80000004&
         Caption         =   ".."
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   162
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   3390
         MaskColor       =   &H00C0FFC0&
         Style           =   1  'Graphical
         TabIndex        =   48
         Top             =   5540
         Visible         =   0   'False
         Width           =   225
      End
      Begin VB.CommandButton Command2 
         BackColor       =   &H80000004&
         Caption         =   ".."
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   162
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   3390
         MaskColor       =   &H00C0FFC0&
         Style           =   1  'Graphical
         TabIndex        =   47
         Top             =   4480
         Width           =   225
      End
      Begin VB.OptionButton Option1 
         BackColor       =   &H80000004&
         Caption         =   "Hepsi"
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
         Index           =   2
         Left            =   1260
         Style           =   1  'Graphical
         TabIndex        =   34
         Top             =   5940
         Width           =   585
      End
      Begin VB.OptionButton Option1 
         BackColor       =   &H80000004&
         Caption         =   "Pasif"
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
         Index           =   1
         Left            =   690
         Style           =   1  'Graphical
         TabIndex        =   33
         Top             =   5940
         Width           =   585
      End
      Begin VB.OptionButton Option1 
         BackColor       =   &H80000004&
         Caption         =   "Aktif"
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
         Index           =   0
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   32
         Top             =   5940
         Width           =   585
      End
      Begin XpressEditorsLibCtl.dxTextEdit dxTextEdit1 
         Height          =   315
         Index           =   0
         Left            =   120
         OleObjectBlob   =   "FrMRapor.frx":2622
         TabIndex        =   4
         Top             =   4470
         Width           =   3525
      End
      Begin XpressEditorsLibCtl.dxTextEdit dxTextEdit1 
         Height          =   315
         Index           =   1
         Left            =   120
         OleObjectBlob   =   "FrMRapor.frx":26F8
         TabIndex        =   5
         Top             =   5520
         Visible         =   0   'False
         Width           =   3525
      End
      Begin XpressEditorsLibCtl.dxPickEdit dxPickEdit1 
         Height          =   330
         Index           =   0
         Left            =   120
         OleObjectBlob   =   "FrMRapor.frx":27CE
         TabIndex        =   6
         Top             =   1020
         Width           =   3525
      End
      Begin XpressEditorsLibCtl.dxPickEdit dxPickEdit1 
         Height          =   330
         Index           =   1
         Left            =   120
         OleObjectBlob   =   "FrMRapor.frx":29C3
         TabIndex        =   7
         Top             =   1710
         Width           =   3525
      End
      Begin XpressEditorsLibCtl.dxPickEdit dxPickEdit1 
         Height          =   330
         Index           =   2
         Left            =   120
         OleObjectBlob   =   "FrMRapor.frx":2BB8
         TabIndex        =   8
         Top             =   2400
         Width           =   3525
      End
      Begin XpressEditorsLibCtl.dxPickEdit dxPickEdit1 
         Height          =   330
         Index           =   3
         Left            =   1020
         OleObjectBlob   =   "FrMRapor.frx":2DAD
         TabIndex        =   9
         Top             =   4830
         Width           =   795
      End
      Begin XpressEditorsLibCtl.dxPickEdit dxPickEdit1 
         Height          =   330
         Index           =   5
         Left            =   120
         OleObjectBlob   =   "FrMRapor.frx":3029
         TabIndex        =   28
         Top             =   3090
         Width           =   3525
      End
      Begin XpressEditorsLibCtl.dxPickEdit dxPickEdit1 
         Height          =   330
         Index           =   10
         Left            =   120
         OleObjectBlob   =   "FrMRapor.frx":321E
         TabIndex        =   30
         Top             =   3780
         Width           =   3525
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "ISO Nosu"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   162
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   315
         Index           =   21
         Left            =   120
         TabIndex        =   31
         Top             =   3480
         Width           =   3525
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Üretim Yeri"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   162
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   315
         Index           =   11
         Left            =   120
         TabIndex        =   29
         Top             =   2760
         Width           =   3525
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Kodu"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   162
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   315
         Index           =   5
         Left            =   120
         TabIndex        =   15
         Top             =   5190
         Visible         =   0   'False
         Width           =   3525
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Operator"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   162
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   4
         Left            =   120
         TabIndex        =   14
         Top             =   4830
         Width           =   885
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Kodu"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   162
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   315
         Index           =   3
         Left            =   120
         TabIndex        =   13
         Top             =   4140
         Width           =   3525
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Grup Kodu"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   162
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   315
         Index           =   2
         Left            =   120
         TabIndex        =   12
         Top             =   2070
         Width           =   3525
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Yetki Kodu"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   162
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   315
         Index           =   1
         Left            =   120
         TabIndex        =   11
         Top             =   1380
         Width           =   3525
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Özel Kodu"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   162
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   315
         Index           =   0
         Left            =   120
         TabIndex        =   10
         Top             =   690
         Width           =   3525
      End
   End
   Begin VB.Frame Frame2 
      Appearance      =   0  'Flat
      BackColor       =   &H008080FF&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   645
      Index           =   0
      Left            =   3600
      TabIndex        =   2
      Top             =   1020
      Width           =   10125
   End
   Begin VB.Frame Frame2 
      Appearance      =   0  'Flat
      BackColor       =   &H008080FF&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   720
      Index           =   1
      Left            =   3600
      TabIndex        =   1
      Top             =   7770
      Width           =   10215
      Begin Crystal.CrystalReport CrT 
         Left            =   3810
         Top             =   210
         _ExtentX        =   741
         _ExtentY        =   741
         _Version        =   348160
         WindowControlBox=   -1  'True
         WindowMaxButton =   -1  'True
         WindowMinButton =   -1  'True
         WindowState     =   2
         PrintFileLinesPerPage=   60
      End
      Begin Sinkbutton.Sink Sink2 
         Height          =   495
         Left            =   6315
         TabIndex        =   52
         Top             =   120
         Width           =   1935
         _ExtentX        =   3413
         _ExtentY        =   873
         BackColor       =   12648447
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   162
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Caption         =   "GRAFÝK"
      End
      Begin Sinkbutton.Sink Sink1 
         Height          =   495
         Left            =   4590
         TabIndex        =   51
         Top             =   120
         Width           =   1710
         _ExtentX        =   3016
         _ExtentY        =   873
         BackColor       =   12648447
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   162
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Caption         =   "RAPORLA"
      End
      Begin XpressEditorsLibCtl.dxPickEdit dxPickEdit2 
         Height          =   330
         Index           =   1
         Left            =   930
         OleObjectBlob   =   "FrMRapor.frx":3413
         TabIndex        =   55
         Top             =   360
         Width           =   870
      End
      Begin XpressEditorsLibCtl.dxPickEdit dxPickEdit2 
         Height          =   330
         Index           =   0
         Left            =   30
         OleObjectBlob   =   "FrMRapor.frx":3608
         TabIndex        =   56
         Top             =   360
         Width           =   885
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Firmasý"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   162
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   8
         Left            =   30
         TabIndex        =   58
         Top             =   30
         Width           =   885
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Dönemi"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   162
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   9
         Left            =   915
         TabIndex        =   57
         Top             =   30
         Width           =   885
      End
   End
   Begin DXSIDEBARLibCtl.dxSideBar dxSideBar1 
      Height          =   8850
      Left            =   -30
      OleObjectBlob   =   "FrMRapor.frx":37FD
      TabIndex        =   0
      Top             =   0
      Width           =   3525
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   11.25
         Charset         =   162
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   735
      Left            =   3630
      TabIndex        =   59
      Top             =   60
      Width           =   10005
   End
   Begin VB.Label Label7 
      BackColor       =   &H00C0C0FF&
      Caption         =   "lsoft -  for the original solutions"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   162
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   10470
      TabIndex        =   54
      Top             =   8550
      Width           =   3375
   End
   Begin VB.Label Label5 
      BackColor       =   &H00C0C0FF&
      Caption         =   "@"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   162
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000040C0&
      Height          =   255
      Left            =   10230
      TabIndex        =   53
      Top             =   8520
      Width           =   255
   End
   Begin VB.Label Label2 
      BackColor       =   &H00C0C0FF&
      Caption         =   "Label2"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   162
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   255
      Left            =   3600
      TabIndex        =   50
      Top             =   8520
      Width           =   5805
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "ment"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   162
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   9690
      TabIndex        =   27
      Top             =   8550
      Width           =   615
   End
End
Attribute VB_Name = "FrMRapor"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim GelenId As String
Dim AmbarNo As Integer
Dim TarihsTr As String
Dim AmbarsTr As String
Dim OzelsTr As String
Dim YetkisTr As String
Dim GrupsTr As String
Dim StoKStr As String
Dim IlcesTr As String
Dim SStoksTr As String
Dim SOzelsTr As String
Dim SYetkisTr As String
Dim SGrupsTr As String
Dim SUretsTr As String
Dim SIsosTr As String
Dim DurumTr As String
Dim AmbarSrg As String
Dim ElemanSrg As String
Dim KasaSrg As String
Dim GidenID As Integer
Dim iLkVurus As Integer
Dim trcode As Integer
Dim trcode1 As Integer
Dim tik As Integer
Dim secim As String
Dim suz As String
Dim simdi As String
Dim Button As Integer
Sub SExCeL()
Dim SATPER, SATBAY As Long
Dim SatirSay As Long
Dim TRsi As Integer
Dim FirMa As String
Dim VDairesi As String
Dim VNosu As String
Dim FTarihi As String
Dim FNosu As String
Dim FRef As Long
Dim FaTSaY As Integer
'-----------------------------------------------
Dim appxl As New Excel.Application
Dim book As Workbook
Dim she As Worksheet
Dim celrange As Range
Dim AgirliKAra As Long
Dim PER, BAY As Long
Dim AgirliKGenel As Long
Dim TMiktar As Long
Dim TTutar As Currency
Dim TKdV As Currency
Dim AMB As Integer
Dim SUT, SAT As Integer
Dim i As Integer
Dim TTARIH As Date
Set book = appxl.Workbooks.Open(App.Path & "\GSu.xlt")
appxl.Visible = True
Set she = book.Worksheets(1)
TTARIH = dxDateEdit1.DisplayText
Set celrange = she.Cells(1, 1): celrange.Value = TTARIH
'''''''''kýrýlan damacana
''''''''     SQLSTR = "SELECT SUM(stl.AMOUNT) AS Miktar, AVG(stl.PRICE) AS BFiyat, SUM(stl.TOTAL) AS Toplam " _
''''''''     & "FROM LG_" & GFirma & "_01_STFICHE as STF INNER JOIN LG_" & GFirma & "_01_STLINE as STL ON stf.LOGICALREF = stl.STFICHEREF INNER JOIN LG_" & GFirma & "_ITEMS as itm ON stl.STOCKREF = itm.LOGICALREF " _
''''''''     & "WHERE (stf.BRANCH = 0) AND (itm.CODE = '150.01.01.05') and (stl.DATE_ = '" & Format(TTARIH, "MM/DD/YY") & "') AND (stl.IOCODE = 1) " _
''''''''     & " AND (stl.SOURCEINDEX = 0) "
''''''''
''''''''     Set RsEtM = New Recordset
''''''''     RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
''''''''     If IsNull(RsEtM.Fields(0)) = False Then Set celrange = she.Cells(2, 15): celrange.Value = RsEtM.Fields(0) Else Set celrange = she.Cells(2, 15): celrange.Value = 0
''''''''     RsEtM.Close
'''''''''----------------------------------------------------------------
'''''''''SATILAN DAMACANA
''''''''     'SATILAN
''''''''     SQLSTR = "SELECT SUM(stl.AMOUNT) AS Miktar, AVG(stl.PRICE) AS BFiyat, SUM(stl.TOTAL) AS Toplam " _
''''''''     & "FROM LG_" & GFirma & "_01_STFICHE as STF INNER JOIN LG_" & GFirma & "_01_STLINE as STL ON stf.LOGICALREF = stl.STFICHEREF INNER JOIN LG_" & GFirma & "_ITEMS as itm ON stl.STOCKREF = itm.LOGICALREF " _
''''''''     & "WHERE (stf.BRANCH = 0) AND (itm.CODE = '150.01.01.02') and (stl.DATE_ = '" & Format(TTARIH, "MM/DD/YY") & "') AND (stl.IOCODE = 4) " _
''''''''     & " AND (stl.TRCODE = 7) "
''''''''
''''''''     Set RsEtM = New Recordset
''''''''     RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
''''''''     If IsNull(RsEtM.Fields(0)) = False Then SATILAN = RsEtM.Fields(0) Else SATILAN = 0
''''''''     RsEtM.Close
''''''''     'ALINAN
''''''''     SQLSTR = "SELECT SUM(stl.AMOUNT) AS Miktar, AVG(stl.PRICE) AS BFiyat, SUM(stl.TOTAL) AS Toplam " _
''''''''     & "FROM LG_" & GFirma & "_01_STFICHE as STF INNER JOIN LG_" & GFirma & "_01_STLINE as STL ON stf.LOGICALREF = stl.STFICHEREF INNER JOIN LG_" & GFirma & "_ITEMS as itm ON stl.STOCKREF = itm.LOGICALREF " _
''''''''     & "WHERE (stf.BRANCH = 0) AND (itm.CODE LIKE '153.04%') and (stl.DATE_ = '" & Format(TTARIH, "MM/DD/YY") & "') AND (stl.IOCODE = 1) " _
''''''''     & " "
''''''''
''''''''     Set RsEtM = New Recordset
''''''''     RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
''''''''     If IsNull(RsEtM.Fields(0)) = False Then ALINAN = RsEtM.Fields(0) Else ALINAN = 0
''''''''     RsEtM.Close
''''''''
''''''''     Set celrange = she.Cells(2, 16): celrange.Value = SATILAN - ALINAN
'''''''''----------------------------------------------------------------------------------------------
'''''''''EMANET VERÝLEN
''''''''     SQLSTR = "SELECT SUM(stl.AMOUNT) AS Miktar, AVG(stl.PRICE) AS BFiyat, SUM(stl.TOTAL) AS Toplam " _
''''''''     & "FROM LG_" & GFirma & "_01_STFICHE as STF INNER JOIN LG_" & GFirma & "_01_STLINE as STL ON stf.LOGICALREF = stl.STFICHEREF INNER JOIN LG_" & GFirma & "_ITEMS as itm ON stl.STOCKREF = itm.LOGICALREF " _
''''''''     & "WHERE (stf.BRANCH = 0) AND (itm.CODE = '150.01.01.02') and (stl.DATE_ = '" & Format(TTARIH, "MM/DD/YY") & "') AND (stl.IOCODE IN(3,4)) " _
''''''''     & " AND (stl.TRCODE = 35) "
''''''''
''''''''     Set RsEtM = New Recordset
''''''''     RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
''''''''     If IsNull(RsEtM.Fields(0)) = False Then Set celrange = she.Cells(2, 20): celrange.Value = RsEtM.Fields(0) Else Set celrange = she.Cells(2, 20): celrange.Value = 0
''''''''     RsEtM.Close
'''''''''----------------------------------------------------------------------------------------------
'''''''''FABRÝKADA KALAN
''''''''     SQLSTR = "SELECT SUM(stl.AMOUNT) AS Miktar, AVG(stl.PRICE) AS BFiyat, SUM(stl.TOTAL) AS Toplam " _
''''''''     & "FROM LG_" & GFirma & "_01_STFICHE as STF INNER JOIN LG_" & GFirma & "_01_STLINE as STL ON stf.LOGICALREF = stl.STFICHEREF INNER JOIN LG_" & GFirma & "_ITEMS as itm ON stl.STOCKREF = itm.LOGICALREF " _
''''''''     & "WHERE (stf.BRANCH = 0) AND (itm.CODE = '150.01.01.02') and (stl.DATE_ = '" & Format(TTARIH, "MM/DD/YY") & "') AND (stl.SOURCEINDEX = 9) " _
''''''''     & " AND (stl.TRCODE = 25) AND (stl.DESTINDEX = 0) AND (stl.IOCODE IN(3))"
''''''''
''''''''     Set RsEtM = New Recordset
''''''''     RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
''''''''     If IsNull(RsEtM.Fields(0)) = False Then Set celrange = she.Cells(2, 22): celrange.Value = RsEtM.Fields(0) Else Set celrange = she.Cells(2, 22): celrange.Value = 0
''''''''     RsEtM.Close
'''''''''-----------------------------------------------------------------------------------------------------
'''''''''DEPOZÝTO ÝLE ÝADE ALINAN
''''''''     SQLSTR = "SELECT SUM(stl.AMOUNT) AS Miktar, AVG(stl.PRICE) AS BFiyat, SUM(stl.TOTAL) AS Toplam " _
''''''''     & "FROM LG_" & GFirma & "_01_STFICHE as STF INNER JOIN LG_" & GFirma & "_01_STLINE as STL ON stf.LOGICALREF = stl.STFICHEREF INNER JOIN LG_" & GFirma & "_ITEMS as itm ON stl.STOCKREF = itm.LOGICALREF " _
''''''''     & "WHERE (stf.BRANCH = 0) AND (itm.CODE = '150.01.01.02') and (stl.DATE_ = '" & Format(TTARIH, "MM/DD/YY") & "') AND (stl.IOCODE IN(1)) " _
''''''''     & " AND (stl.TRCODE = 2) "
''''''''
''''''''     Set RsEtM = New Recordset
''''''''     RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
''''''''     If IsNull(RsEtM.Fields(0)) = False Then Set celrange = she.Cells(4, 15): celrange.Value = RsEtM.Fields(0) Else Set celrange = she.Cells(4, 15): celrange.Value = 0
''''''''     RsEtM.Close
'''''''''----------------------------------------------------------------------------------------------
'''''''''EMANETTEN GELEN
''''''''     SQLSTR = "SELECT SUM(stl.AMOUNT) AS Miktar, AVG(stl.PRICE) AS BFiyat, SUM(stl.TOTAL) AS Toplam " _
''''''''     & "FROM LG_" & GFirma & "_01_STFICHE as STF INNER JOIN LG_" & GFirma & "_01_STLINE as STL ON stf.LOGICALREF = stl.STFICHEREF INNER JOIN LG_" & GFirma & "_ITEMS as itm ON stl.STOCKREF = itm.LOGICALREF " _
''''''''     & "WHERE (stf.BRANCH = 0) AND (itm.CODE = '150.01.01.02') and (stl.DATE_ = '" & Format(TTARIH, "MM/DD/YY") & "') AND (stl.IOCODE IN(1,2)) " _
''''''''     & " AND (stl.TRCODE = 30) "
''''''''
''''''''     Set RsEtM = New Recordset
''''''''     RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
''''''''     If IsNull(RsEtM.Fields(0)) = False Then Set celrange = she.Cells(4, 20): celrange.Value = RsEtM.Fields(0) Else Set celrange = she.Cells(4, 20): celrange.Value = 0
''''''''     RsEtM.Close
'''''''''----------------------------------------------------------------------------------------------
'''''''''FABRÝKADA GELEN
''''''''     SQLSTR = "SELECT SUM(stl.AMOUNT) AS Miktar, AVG(stl.PRICE) AS BFiyat, SUM(stl.TOTAL) AS Toplam " _
''''''''     & "FROM LG_" & GFirma & "_01_STFICHE as STF INNER JOIN LG_" & GFirma & "_01_STLINE as STL ON stf.LOGICALREF = stl.STFICHEREF INNER JOIN LG_" & GFirma & "_ITEMS as itm ON stl.STOCKREF = itm.LOGICALREF " _
''''''''     & "WHERE (stf.BRANCH = 0) AND (itm.CODE = '150.01.01.02') and (stl.DATE_ = '" & Format(TTARIH, "MM/DD/YY") & "') AND (stl.SOURCEINDEX = 0) " _
''''''''     & " AND (stl.TRCODE = 25) AND (stl.DESTINDEX = 9) AND (stl.IOCODE IN(3))"
''''''''
''''''''     Set RsEtM = New Recordset
''''''''     RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
''''''''     If IsNull(RsEtM.Fields(0)) = False Then Set celrange = she.Cells(4, 22): celrange.Value = RsEtM.Fields(0) Else Set celrange = she.Cells(4, 22): celrange.Value = 0
''''''''     RsEtM.Close
'''''''''----------------------------------------------------------------------------------------------
'''''''''RAKÝPTEKÝ DAMACANA
''''''''     SQLSTR = "SELECT SUM(stl.AMOUNT) AS Miktar, AVG(stl.PRICE) AS BFiyat, SUM(stl.TOTAL) AS Toplam " _
''''''''     & "FROM LG_" & GFirma & "_01_STFICHE as STF INNER JOIN LG_" & GFirma & "_01_STLINE as STL ON stf.LOGICALREF = stl.STFICHEREF INNER JOIN LG_" & GFirma & "_ITEMS as itm ON stl.STOCKREF = itm.LOGICALREF " _
''''''''     & "WHERE (stf.BRANCH = 0) AND (itm.CODE LIKE '153.04%') and (stl.DATE_ = '" & Format(TTARIH, "MM/DD/YY") & "') " _
''''''''     & " AND (stl.TRCODE = 1) AND(stl.IOCODE IN(1,2))"
''''''''
''''''''     Set RsEtM = New Recordset
''''''''     RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
''''''''     If IsNull(RsEtM.Fields(0)) = False Then Set celrange = she.Cells(4, 24): celrange.Value = RsEtM.Fields(0) Else Set celrange = she.Cells(4, 24): celrange.Value = 0
''''''''     RsEtM.Close
'''''''''-------------------------------------------------------------------------------------------------
'STOK DURUMLARI
'19 LT DAMACANA SU STOÐU
     SQLSTR = "SELECT ITM.CODE, ITV.INVENNO, SUM(ITV.ONHAND) AS STOK " _
     & "FROM LG_" & GFirma & "_" & GDonem & "_STINVTOT AS ITV INNER JOIN LG_002_ITEMS AS ITM ON ITV.STOCKREF = ITM.LOGICALREF " _
     & "WHERE (ITM.CODE = '152.01.001') AND (ITV.INVENNO = 0) AND (ITV.DATE_ <= '" & Format(TTARIH - 1, "MM/DD/YY") & "') GROUP BY ITM.CODE, ITV.INVENNO"

     Set RsEtM = New Recordset
     RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
     If IsNull(RsEtM.Fields(0)) = False Then Set celrange = she.Cells(2, 3): celrange.Value = RsEtM.Fields(2) Else Set celrange = she.Cells(2, 3): celrange.Value = 0
     RsEtM.Close
'KULLANIMDAKÝ YENÝ DAMACANA SU STOÐU
     SQLSTR = "SELECT ITM.CODE, ITV.INVENNO, SUM(ITV.ONHAND) AS STOK " _
     & "FROM LG_" & GFirma & "_" & GDonem & "_STINVTOT AS ITV INNER JOIN LG_002_ITEMS AS ITM ON ITV.STOCKREF = ITM.LOGICALREF " _
     & "WHERE (ITM.CODE = '150.01.01.02') AND (ITV.INVENNO = 0) AND (ITV.DATE_ <= '" & Format(TTARIH - 1, "MM/DD/YY") & "') GROUP BY ITM.CODE, ITV.INVENNO"

     Set RsEtM = New Recordset
     RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
     If IsNull(RsEtM.Fields(0)) = False Then Set celrange = she.Cells(2, 4): celrange.Value = RsEtM.Fields(2) / 2 Else Set celrange = she.Cells(2, 4): celrange.Value = 0
     RsEtM.Close
'EMANET DAMACANA
     SQLSTR = "SELECT SUM(T.G)FROM(SELECT sum(stl.AMOUNT)as G FROM LG_002_ITEMS as itm INNER JOIN LG_002_01_STLINE as stl ON itm.LOGICALREF = stl.STOCKREF " _
     & "WHERE (itm.CODE = '150.01.01.02') AND (stl.TRCODE = 35) AND (stl.DATE_ <= '" & Format(TTARIH - 1, "MM/DD/YY") & "') " _
     & " Union All " _
     & "SELECT sum(-1 * stl.AMOUNT)as G FROM LG_002_ITEMS as itm INNER JOIN LG_002_01_STLINE as stl ON itm.LOGICALREF = stl.STOCKREF " _
     & "WHERE (itm.CODE = '150.01.01.02') AND (stl.TRCODE = 30) AND (stl.DATE_ <= '" & Format(TTARIH - 1, "MM/DD/YY") & "' )) AS T"

     Set RsEtM = New Recordset
     RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
     If IsNull(RsEtM.Fields(0)) = False Then Set celrange = she.Cells(2, 5): celrange.Value = RsEtM.Fields(0) Else Set celrange = she.Cells(2, 5): celrange.Value = 0
     RsEtM.Close
'RAKÝP DAMACANA STOÐU
     SQLSTR = "SELECT ITM.CODE, ITV.INVENNO, SUM(ITV.ONHAND) AS STOK " _
     & "FROM LG_" & GFirma & "_" & GDonem & "_STINVTOT AS ITV INNER JOIN LG_002_ITEMS AS ITM ON ITV.STOCKREF = ITM.LOGICALREF " _
     & "WHERE (ITM.CODE LIKE '153.04%') AND (ITV.INVENNO = 0) AND (ITV.DATE_ <= '" & Format(TTARIH - 1, "MM/DD/YY") & "') GROUP BY ITM.CODE, ITV.INVENNO"

     Set RsEtM = New Recordset
     RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
     If IsNull(RsEtM.Fields(0)) = False Then Set celrange = she.Cells(2, 7): celrange.Value = RsEtM.Fields(2) Else Set celrange = she.Cells(2, 7): celrange.Value = 0
     RsEtM.Close
'KIRIK ÞÝÞE
     SQLSTR = "SELECT ITM.CODE, ITV.INVENNO, SUM(ITV.ONHAND) AS STOK " _
     & "FROM LG_" & GFirma & "_" & GDonem & "_STINVTOT AS ITV INNER JOIN LG_002_ITEMS AS ITM ON ITV.STOCKREF = ITM.LOGICALREF " _
     & "WHERE (ITM.CODE = '150.01.01.05') AND (ITV.INVENNO = 0) AND (ITV.DATE_ <= '" & Format(TTARIH - 1, "MM/DD/YY") & "') GROUP BY ITM.CODE, ITV.INVENNO"

     Set RsEtM = New Recordset
     RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
     If IsNull(RsEtM.Fields(0)) = False Then Set celrange = she.Cells(2, 8): celrange.Value = RsEtM.Fields(2) Else Set celrange = she.Cells(2, 8): celrange.Value = 0
     RsEtM.Close
'KOKULU DAMACANA
     SQLSTR = "SELECT ITM.CODE, ITV.INVENNO, SUM(ITV.ONHAND) AS STOK " _
     & "FROM LG_" & GFirma & "_" & GDonem & "_STINVTOT AS ITV INNER JOIN LG_002_ITEMS AS ITM ON ITV.STOCKREF = ITM.LOGICALREF " _
     & "WHERE (ITM.CODE = '150.01.01.04') AND (ITV.INVENNO = 0) AND (ITV.DATE_ <= '" & Format(TTARIH - 1, "MM/DD/YY") & "') GROUP BY ITM.CODE, ITV.INVENNO"

     Set RsEtM = New Recordset
     RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
     If IsNull(RsEtM.Fields(0)) = False Then Set celrange = she.Cells(2, 9): celrange.Value = RsEtM.Fields(2) Else Set celrange = she.Cells(2, 9): celrange.Value = 0
     RsEtM.Close
'MUSTERÝDEKÝ DOLAP
     SQLSTR = "SELECT SUM(T.G)FROM(SELECT sum(stl.AMOUNT)as G FROM LG_002_ITEMS as itm INNER JOIN LG_002_01_STLINE as stl ON itm.LOGICALREF = stl.STOCKREF " _
     & "WHERE (itm.CODE = '153.01.001') AND (stl.TRCODE = 35) AND (stl.DATE_ <= '" & Format(TTARIH - 1, "MM/DD/YY") & "') " _
     & " Union All " _
     & "SELECT sum(-1 * stl.AMOUNT)as G FROM LG_002_ITEMS as itm INNER JOIN LG_002_01_STLINE as stl ON itm.LOGICALREF = stl.STOCKREF " _
     & "WHERE (itm.CODE = '153.01.001') AND (stl.TRCODE = 30) AND (stl.DATE_ <= '" & Format(TTARIH - 1, "MM/DD/YY") & "' )) AS T"

     Set RsEtM = New Recordset
     RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
     If IsNull(RsEtM.Fields(0)) = False Then Set celrange = she.Cells(2, 10): celrange.Value = RsEtM.Fields(0) Else Set celrange = she.Cells(2, 10): celrange.Value = 0
     RsEtM.Close
'OFISTEKI DOLAP
     SQLSTR = "SELECT ITM.CODE, ITV.INVENNO, SUM(ITV.ONHAND) AS STOK " _
     & "FROM LG_" & GFirma & "_" & GDonem & "_STINVTOT AS ITV INNER JOIN LG_002_ITEMS AS ITM ON ITV.STOCKREF = ITM.LOGICALREF " _
     & "WHERE (ITM.CODE = '153.01.001') AND (ITV.INVENNO = 0) AND (ITV.DATE_ <= '" & Format(TTARIH - 1, "MM/DD/YY") & "') GROUP BY ITM.CODE, ITV.INVENNO"

     Set RsEtM = New Recordset
     RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
     If IsNull(RsEtM.Fields(0)) = False Then Set celrange = she.Cells(2, 12): celrange.Value = RsEtM.Fields(2) Else Set celrange = she.Cells(2, 12): celrange.Value = 0
     RsEtM.Close
'OFISTEKI DOLAP
     SQLSTR = "SELECT ITM.CODE, ITV.INVENNO, SUM(ITV.ONHAND) AS STOK " _
     & "FROM LG_" & GFirma & "_" & GDonem & "_STINVTOT AS ITV INNER JOIN LG_002_ITEMS AS ITM ON ITV.STOCKREF = ITM.LOGICALREF " _
     & "WHERE (ITM.CODE = '153.01.001') AND (ITV.INVENNO = 46) AND (ITV.DATE_ <= '" & Format(TTARIH - 1, "MM/DD/YY") & "') GROUP BY ITM.CODE, ITV.INVENNO"

     Set RsEtM = New Recordset
     RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
     If IsNull(RsEtM.Fields(0)) = False Then Set celrange = she.Cells(2, 14): celrange.Value = RsEtM.Fields(2) Else Set celrange = she.Cells(2, 14): celrange.Value = 0
     RsEtM.Close

'POMPA STOÐU
     SQLSTR = "SELECT ITM.CODE, ITV.INVENNO, SUM(ITV.ONHAND) AS STOK " _
     & "FROM LG_" & GFirma & "_" & GDonem & "_STINVTOT AS ITV INNER JOIN LG_002_ITEMS AS ITM ON ITV.STOCKREF = ITM.LOGICALREF " _
     & "WHERE (ITM.CODE = '153.01.002') AND (ITV.INVENNO = 0) AND (ITV.DATE_ <= '" & Format(TTARIH - 1, "MM/DD/YY") & "') GROUP BY ITM.CODE, ITV.INVENNO"

     Set RsEtM = New Recordset
     RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
     If IsNull(RsEtM.Fields(0)) = False Then Set celrange = she.Cells(2, 15): celrange.Value = RsEtM.Fields(2) Else Set celrange = she.Cells(2, 15): celrange.Value = 0
     RsEtM.Close
'MUSLUK STOÐU
     SQLSTR = "SELECT ITM.CODE, ITV.INVENNO, SUM(ITV.ONHAND) AS STOK " _
     & "FROM LG_" & GFirma & "_" & GDonem & "_STINVTOT AS ITV INNER JOIN LG_002_ITEMS AS ITM ON ITV.STOCKREF = ITM.LOGICALREF " _
     & "WHERE (ITM.CODE = '153.01.003') AND (ITV.INVENNO = 0) AND (ITV.DATE_ <= '" & Format(TTARIH - 1, "MM/DD/YY") & "') GROUP BY ITM.CODE, ITV.INVENNO"

     Set RsEtM = New Recordset
     RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
     If IsNull(RsEtM.Fields(0)) = False Then Set celrange = she.Cells(2, 16): celrange.Value = RsEtM.Fields(2) Else Set celrange = she.Cells(2, 16): celrange.Value = 0
     RsEtM.Close
'BARDAKLIK STOÐU
     SQLSTR = "SELECT ITM.CODE, ITV.INVENNO, SUM(ITV.ONHAND) AS STOK " _
     & "FROM LG_" & GFirma & "_" & GDonem & "_STINVTOT AS ITV INNER JOIN LG_002_ITEMS AS ITM ON ITV.STOCKREF = ITM.LOGICALREF " _
     & "WHERE (ITM.CODE = '153.01.004') AND (ITV.INVENNO = 0) AND (ITV.DATE_ <= '" & Format(TTARIH - 1, "MM/DD/YY") & "') GROUP BY ITM.CODE, ITV.INVENNO"

     Set RsEtM = New Recordset
     RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
     If IsNull(RsEtM.Fields(0)) = False Then Set celrange = she.Cells(2, 17): celrange.Value = RsEtM.Fields(2) Else Set celrange = she.Cells(2, 17): celrange.Value = 0
     RsEtM.Close
'ELCÝK STOÐU
     SQLSTR = "SELECT ITM.CODE, ITV.INVENNO, SUM(ITV.ONHAND) AS STOK " _
     & "FROM LG_" & GFirma & "_" & GDonem & "_STINVTOT AS ITV INNER JOIN LG_002_ITEMS AS ITM ON ITV.STOCKREF = ITM.LOGICALREF " _
     & "WHERE (ITM.CODE = '153.01.007') AND (ITV.INVENNO = 0) AND (ITV.DATE_ <= '" & Format(TTARIH - 1, "MM/DD/YY") & "') GROUP BY ITM.CODE, ITV.INVENNO"

     Set RsEtM = New Recordset
     RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
     If IsNull(RsEtM.Fields(0)) = False Then Set celrange = she.Cells(2, 18): celrange.Value = RsEtM.Fields(2) Else Set celrange = she.Cells(2, 18): celrange.Value = 0
     RsEtM.Close
'MAZOT STOÐU
     SQLSTR = "SELECT ITM.CODE, ITV.INVENNO, SUM(ITV.ONHAND) AS STOK " _
     & "FROM LG_" & GFirma & "_" & GDonem & "_STINVTOT AS ITV INNER JOIN LG_002_ITEMS AS ITM ON ITV.STOCKREF = ITM.LOGICALREF " _
     & "WHERE (ITM.CODE = '150.99.002') AND (ITV.INVENNO = 0) AND (ITV.DATE_ <= '" & Format(TTARIH - 1, "MM/DD/YY") & "') GROUP BY ITM.CODE, ITV.INVENNO"

     Set RsEtM = New Recordset
     RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
     If IsNull(RsEtM.Fields(0)) = False Then Set celrange = she.Cells(2, 19): celrange.Value = RsEtM.Fields(2) Else Set celrange = she.Cells(2, 19): celrange.Value = 0
     RsEtM.Close
     
'KAMYONLA GELEN STOK DURUMLARI
'19 LT DAMACANA SU STOÐU
     SQLSTR = "SELECT DESTINDEX,SUM(stl.AMOUNT) FROM LG_002_ITEMS as itm INNER JOIN LG_002_01_STLINE as stl ON itm.LOGICALREF = stl.STOCKREF " _
     & "WHERE (itm.CODE = '150.01.01.02') AND (stl.SOURCEINDEX = 9)AND (stl.IOCODE = 2)AND (stl.TRCODE = 25) AND (stl.DATE_ = '" & Format(TTARIH, "MM/DD/YY") & "') GROUP BY DESTINDEX "

     Set RsEtM = New Recordset
     RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
     If RsEtM.RecordCount > 0 Then
          Do While Not RsEtM.EOF
               If RsEtM.Fields(0) = 38 Then If IsNull(RsEtM.Fields(0)) = False Then Set celrange = she.Cells(3, 3): celrange.Value = RsEtM.Fields(1) Else Set celrange = she.Cells(3, 3): celrange.Value = 0
               If RsEtM.Fields(0) = 0 Then If IsNull(RsEtM.Fields(0)) = False Then Set celrange = she.Cells(4, 4): celrange.Value = RsEtM.Fields(1) Else Set celrange = she.Cells(4, 4): celrange.Value = 0
          RsEtM.MoveNext
          Loop
     End If
     RsEtM.Close
'RAKÝP DAMACANA STOÐU
     SQLSTR = "SELECT DESTINDEX,SUM(stl.AMOUNT) FROM LG_002_ITEMS as itm INNER JOIN LG_002_01_STLINE as stl ON itm.LOGICALREF = stl.STOCKREF " _
     & "WHERE (itm.CODE LIKE '153.04%') AND (stl.SOURCEINDEX = 9)AND (stl.IOCODE = 3)AND (stl.TRCODE = 25) AND (stl.DATE_ = '" & Format(TTARIH, "MM/DD/YY") & "') GROUP BY DESTINDEX "

     Set RsEtM = New Recordset
     RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
     If RsEtM.RecordCount > 0 Then
          Do While Not RsEtM.EOF
               If RsEtM.Fields(0) = 0 Then If IsNull(RsEtM.Fields(0)) = False Then Set celrange = she.Cells(3, 6): celrange.Value = RsEtM.Fields(1) Else Set celrange = she.Cells(3, 6): celrange.Value = 0
               If RsEtM.Fields(0) = 38 Then If IsNull(RsEtM.Fields(0)) = False Then Set celrange = she.Cells(4, 6): celrange.Value = RsEtM.Fields(1) Else Set celrange = she.Cells(4, 6): celrange.Value = 0
          RsEtM.MoveNext
          Loop
     End If
     RsEtM.Close
'KIRIK ÞÝÞE
     SQLSTR = "SELECT DESTINDEX,SUM(stl.AMOUNT) FROM LG_002_ITEMS as itm INNER JOIN LG_002_01_STLINE as stl ON itm.LOGICALREF = stl.STOCKREF " _
     & "WHERE (itm.CODE = '150.01.01.05') AND (stl.SOURCEINDEX = 9)AND (stl.IOCODE = 2)AND (stl.TRCODE = 25) AND (stl.DATE_ = '" & Format(TTARIH, "MM/DD/YY") & "') GROUP BY DESTINDEX "

     Set RsEtM = New Recordset
     RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
     If RsEtM.RecordCount > 0 Then
          Do While Not RsEtM.EOF
               If RsEtM.Fields(0) = 38 Then If IsNull(RsEtM.Fields(0)) = False Then Set celrange = she.Cells(3, 7): celrange.Value = RsEtM.Fields(1) Else Set celrange = she.Cells(3, 7): celrange.Value = 0
               If RsEtM.Fields(0) = 0 Then If IsNull(RsEtM.Fields(0)) = False Then Set celrange = she.Cells(4, 7): celrange.Value = RsEtM.Fields(1) Else Set celrange = she.Cells(4, 7): celrange.Value = 0
          RsEtM.MoveNext
          Loop
     End If
     RsEtM.Close
'KOKULU DAMACANA
     SQLSTR = "SELECT DESTINDEX,SUM(stl.AMOUNT) FROM LG_002_ITEMS as itm INNER JOIN LG_002_01_STLINE as stl ON itm.LOGICALREF = stl.STOCKREF " _
     & "WHERE (itm.CODE = '150.01.01.04') AND (stl.SOURCEINDEX = 9)AND (stl.IOCODE = 3)AND (stl.TRCODE = 25) AND (stl.DATE_ = '" & Format(TTARIH, "MM/DD/YY") & "') GROUP BY DESTINDEX "

     Set RsEtM = New Recordset
     RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
     If RsEtM.RecordCount > 0 Then
          Do While Not RsEtM.EOF
               If RsEtM.Fields(0) = 0 Then If IsNull(RsEtM.Fields(0)) = False Then Set celrange = she.Cells(3, 9): celrange.Value = RsEtM.Fields(1) Else Set celrange = she.Cells(3, 9): celrange.Value = 0
               If RsEtM.Fields(0) = 38 Then If IsNull(RsEtM.Fields(0)) = False Then Set celrange = she.Cells(4, 9): celrange.Value = RsEtM.Fields(1) Else Set celrange = she.Cells(4, 9): celrange.Value = 0
          RsEtM.MoveNext
          Loop
     End If
     RsEtM.Close
'OFISTEKI DOLAP
     SQLSTR = "SELECT DESTINDEX,SUM(stl.AMOUNT) FROM LG_002_ITEMS as itm INNER JOIN LG_002_01_STLINE as stl ON itm.LOGICALREF = stl.STOCKREF " _
     & "WHERE (itm.CODE = '153.01.001') AND (stl.SOURCEINDEX = 9)AND (stl.IOCODE = 2)AND (stl.TRCODE = 25) AND (stl.DATE_ = '" & Format(TTARIH, "MM/DD/YY") & "') GROUP BY DESTINDEX "

     Set RsEtM = New Recordset
     RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
     If RsEtM.RecordCount > 0 Then
          Do While Not RsEtM.EOF
               If RsEtM.Fields(0) = 38 Then If IsNull(RsEtM.Fields(0)) = False Then Set celrange = she.Cells(3, 12): celrange.Value = RsEtM.Fields(1) Else Set celrange = she.Cells(3, 12): celrange.Value = 0
               If RsEtM.Fields(0) = 0 Then If IsNull(RsEtM.Fields(0)) = False Then Set celrange = she.Cells(4, 12): celrange.Value = RsEtM.Fields(1) Else Set celrange = she.Cells(4, 12): celrange.Value = 0
          RsEtM.MoveNext
          Loop
     End If
     RsEtM.Close
'POMPA
     SQLSTR = "SELECT DESTINDEX,SUM(stl.AMOUNT) FROM LG_002_ITEMS as itm INNER JOIN LG_002_01_STLINE as stl ON itm.LOGICALREF = stl.STOCKREF " _
     & "WHERE (itm.CODE = '153.01.002') AND (stl.SOURCEINDEX = 9)AND (stl.IOCODE = 2)AND (stl.TRCODE = 25) AND (stl.DATE_ = '" & Format(TTARIH, "MM/DD/YY") & "') GROUP BY DESTINDEX "

     Set RsEtM = New Recordset
     RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
     If RsEtM.RecordCount > 0 Then
          Do While Not RsEtM.EOF
               If RsEtM.Fields(0) = 38 Then If IsNull(RsEtM.Fields(0)) = False Then Set celrange = she.Cells(3, 15): celrange.Value = RsEtM.Fields(1) Else Set celrange = she.Cells(3, 15): celrange.Value = 0
               If RsEtM.Fields(0) = 1 Then If IsNull(RsEtM.Fields(0)) = False Then Set celrange = she.Cells(4, 15): celrange.Value = RsEtM.Fields(1) Else Set celrange = she.Cells(4, 15): celrange.Value = 0
          RsEtM.MoveNext
          Loop
     End If
     RsEtM.Close
'MUSLUK
     SQLSTR = "SELECT DESTINDEX,SUM(stl.AMOUNT) FROM LG_002_ITEMS as itm INNER JOIN LG_002_01_STLINE as stl ON itm.LOGICALREF = stl.STOCKREF " _
     & "WHERE (itm.CODE = '153.01.003') AND (stl.SOURCEINDEX = 9)AND (stl.IOCODE = 2)AND (stl.TRCODE = 25) AND (stl.DATE_ = '" & Format(TTARIH, "MM/DD/YY") & "') GROUP BY DESTINDEX "

     Set RsEtM = New Recordset
     RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
     If RsEtM.RecordCount > 0 Then
          Do While Not RsEtM.EOF
               If RsEtM.Fields(0) = 38 Then If IsNull(RsEtM.Fields(0)) = False Then Set celrange = she.Cells(3, 16): celrange.Value = RsEtM.Fields(1) Else Set celrange = she.Cells(3, 16): celrange.Value = 0
               If RsEtM.Fields(0) = 1 Then If IsNull(RsEtM.Fields(0)) = False Then Set celrange = she.Cells(4, 16): celrange.Value = RsEtM.Fields(1) Else Set celrange = she.Cells(4, 16): celrange.Value = 0
          RsEtM.MoveNext
          Loop
     End If
     RsEtM.Close
'BARDAKLIK
     SQLSTR = "SELECT DESTINDEX,SUM(stl.AMOUNT) FROM LG_002_ITEMS as itm INNER JOIN LG_002_01_STLINE as stl ON itm.LOGICALREF = stl.STOCKREF " _
     & "WHERE (itm.CODE = '153.01.004') AND (stl.SOURCEINDEX = 9)AND (stl.IOCODE = 2)AND (stl.TRCODE = 25) AND (stl.DATE_ = '" & Format(TTARIH, "MM/DD/YY") & "') GROUP BY DESTINDEX "

     Set RsEtM = New Recordset
     RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
     If RsEtM.RecordCount > 0 Then
          Do While Not RsEtM.EOF
               If RsEtM.Fields(0) = 38 Then If IsNull(RsEtM.Fields(0)) = False Then Set celrange = she.Cells(3, 17): celrange.Value = RsEtM.Fields(1) Else Set celrange = she.Cells(3, 17): celrange.Value = 0
               If RsEtM.Fields(0) = 1 Then If IsNull(RsEtM.Fields(0)) = False Then Set celrange = she.Cells(4, 17): celrange.Value = RsEtM.Fields(1) Else Set celrange = she.Cells(4, 17): celrange.Value = 0
          RsEtM.MoveNext
          Loop
     End If
     RsEtM.Close
'ELÇÝK
     SQLSTR = "SELECT DESTINDEX,SUM(stl.AMOUNT) FROM LG_002_ITEMS as itm INNER JOIN LG_002_01_STLINE as stl ON itm.LOGICALREF = stl.STOCKREF " _
     & "WHERE (itm.CODE = '153.01.007') AND (stl.SOURCEINDEX = 9)AND (stl.IOCODE = 2)AND (stl.TRCODE = 25) AND (stl.DATE_ = '" & Format(TTARIH, "MM/DD/YY") & "') GROUP BY DESTINDEX "

     Set RsEtM = New Recordset
     RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
     If RsEtM.RecordCount > 0 Then
          Do While Not RsEtM.EOF
               If RsEtM.Fields(0) = 38 Then If IsNull(RsEtM.Fields(0)) = False Then Set celrange = she.Cells(3, 18): celrange.Value = RsEtM.Fields(1) Else Set celrange = she.Cells(3, 18): celrange.Value = 0
               If RsEtM.Fields(0) = 1 Then If IsNull(RsEtM.Fields(0)) = False Then Set celrange = she.Cells(4, 18): celrange.Value = RsEtM.Fields(1) Else Set celrange = she.Cells(4, 18): celrange.Value = 0
          RsEtM.MoveNext
          Loop
     End If
     RsEtM.Close
'MAZOT
     SQLSTR = "SELECT DESTINDEX,SUM(stl.AMOUNT) FROM LG_002_ITEMS as itm INNER JOIN LG_002_01_STLINE as stl ON itm.LOGICALREF = stl.STOCKREF " _
     & "WHERE (itm.CODE = '150.99.002') AND (stl.SOURCEINDEX = 9)AND (stl.IOCODE = 2)AND (stl.TRCODE = 25) AND (stl.DATE_ = '" & Format(TTARIH, "MM/DD/YY") & "') GROUP BY DESTINDEX "

     Set RsEtM = New Recordset
     RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
     If RsEtM.RecordCount > 0 Then
          Do While Not RsEtM.EOF
               If RsEtM.Fields(0) = 38 Then If IsNull(RsEtM.Fields(0)) = False Then Set celrange = she.Cells(3, 19): celrange.Value = RsEtM.Fields(1) Else Set celrange = she.Cells(3, 19): celrange.Value = 0
               If RsEtM.Fields(0) = 1 Then If IsNull(RsEtM.Fields(0)) = False Then Set celrange = she.Cells(4, 19): celrange.Value = RsEtM.Fields(1) Else Set celrange = she.Cells(4, 19): celrange.Value = 0
          RsEtM.MoveNext
          Loop
     End If
     RsEtM.Close
'--------------------------------------------
'----------------------------------------------ALAN DÖNGÜLERÝ-------------------------------------
SAT = 4: SUT = 3
For AMB = 101 To 109 'BOLGE DONUÞLERÝ
SAT = SAT + 2
          'SATILAN 19 LT DAMACANA SU
'               SQLSTR = "SELECT SUM(LG_002_01_STLINE.AMOUNT) AS Miktar, LG_002_CLCARD.SPECODE FROM LG_002_01_STFICHE INNER JOIN LG_002_01_STLINE ON LG_002_01_STFICHE.LOGICALREF = LG_002_01_STLINE.STFICHEREF INNER JOIN " _
'               & "LG_002_ITEMS ON LG_002_01_STLINE.STOCKREF = LG_002_ITEMS.LOGICALREF INNER JOIN LG_002_CLCARD ON LG_002_01_STFICHE.CLIENTREF = LG_002_CLCARD.LOGICALREF " _
'               & "WHERE (LG_002_ITEMS.CODE = '152.01.001') AND (LG_002_01_STLINE.IOCODE = 4) AND (LG_002_01_STFICHE.DEPARTMENT = " & AMB & ") AND (LG_002_01_STFICHE.DATE_ = '" & Format(TTARIH, "MM/DD/YY") & "') " _
'               & "GROUP BY LG_002_CLCARD.SPECODE"
               
               SQLSTR = "SELECT sum(T.Miktar)as Miktar,t.specode FROM(SELECT SUM(LG_002_01_STLINE.AMOUNT) AS Miktar, LG_002_CLCARD.SPECODE FROM LG_002_01_STFICHE INNER JOIN LG_002_01_STLINE ON LG_002_01_STFICHE.LOGICALREF = LG_002_01_STLINE.STFICHEREF INNER JOIN " _
               & "LG_002_ITEMS ON LG_002_01_STLINE.STOCKREF = LG_002_ITEMS.LOGICALREF left OUTER JOIN LG_002_CLCARD ON LG_002_01_STFICHE.CLIENTREF = LG_002_CLCARD.LOGICALREF " _
               & "WHERE (LG_002_ITEMS.CODE = '152.01.001') AND (LG_002_01_STLINE.IOCODE IN(3,4)) AND (LG_002_01_STFICHE.DEPARTMENT = " & AMB & ") AND (LG_002_01_STFICHE.DATE_ = '" & Format(TTARIH, "MM/DD/YY") & "') " _
               & "GROUP BY LG_002_CLCARD.SPECODE " _
               & "UNION ALL " _
               & "SELECT SUM(LG_002_01_STLINE.AMOUNT * -1) AS Miktar, LG_002_CLCARD.SPECODE FROM LG_002_01_STFICHE INNER JOIN LG_002_01_STLINE ON LG_002_01_STFICHE.LOGICALREF = LG_002_01_STLINE.STFICHEREF INNER JOIN " _
               & "LG_002_ITEMS ON LG_002_01_STLINE.STOCKREF = LG_002_ITEMS.LOGICALREF LEFT OUTER JOIN LG_002_CLCARD ON LG_002_01_STFICHE.CLIENTREF = LG_002_CLCARD.LOGICALREF " _
               & "WHERE (LG_002_ITEMS.CODE = '152.01.001') AND (LG_002_01_STLINE.IOCODE IN(1,2)) AND (LG_002_01_STFICHE.DEPARTMENT = " & AMB & ") AND (LG_002_01_STFICHE.DATE_ = '" & Format(TTARIH, "MM/DD/YY") & "') " _
               & "GROUP BY LG_002_CLCARD.SPECODE) AS T group by t.specode "
               
               
               PER = 0: BAY = 0
               Set RsEtM = New Recordset
               RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
               If RsEtM.RecordCount > 0 Then
                    Do While Not RsEtM.EOF
                         If RsEtM.Fields(1) = "DMC.01.TB" Then
                              If IsNull(RsEtM.Fields(0)) = False Then BAY = BAY + RsEtM.Fields(0)
                         Else
                              If IsNull(RsEtM.Fields(0)) = False Then PER = PER + RsEtM.Fields(0)
                         End If
                    RsEtM.MoveNext
                    Loop
                    SATPER = PER: SATBAY = BAY
                    Set celrange = she.Cells(SAT, 3): celrange.Value = PER
                    Set celrange = she.Cells(SAT + 1, 3): celrange.Value = BAY
               End If
               RsEtM.Close
          'BOÞ DAMACANA
''''''''''''''          PER = 0: BAY = 0
''''''''''''''               SQLSTR = "SELECT SUM(LG_002_01_STLINE.AMOUNT) AS ADET FROM LG_002_01_STFICHE INNER JOIN LG_002_01_STLINE ON LG_002_01_STFICHE.LOGICALREF = LG_002_01_STLINE.STFICHEREF INNER JOIN LG_002_ITEMS ON LG_002_01_STLINE.STOCKREF = LG_002_ITEMS.LOGICALREF " _
''''''''''''''               & "WHERE (LG_002_ITEMS.CODE = '150.01.01.02') AND (LG_002_01_STLINE.TRCODE=25) AND (LG_002_01_STLINE.IOCODE=3)AND LG_002_01_STLINE.DATE_='" & Format(TTARIH, "MM/DD/YY") & "' AND LG_002_01_STFICHE.COMPDEPARTMENT=" & AMB & " "
''''''''''''''
''''''''''''''               Set RsEtM = New Recordset
''''''''''''''               RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
''''''''''''''               If RsEtM.RecordCount > 0 Then
''''''''''''''                    PER = RsEtM.Fields(0)
''''''''''''''               End If
''''''''''''''               RsEtM.Close
''''''''''''''
''''''''''''''               SQLSTR = "SELECT SUM(LG_002_01_STLINE.AMOUNT) AS ADET FROM LG_002_01_STFICHE INNER JOIN LG_002_01_STLINE ON LG_002_01_STFICHE.LOGICALREF = LG_002_01_STLINE.STFICHEREF INNER JOIN LG_002_ITEMS ON LG_002_01_STLINE.STOCKREF = LG_002_ITEMS.LOGICALREF " _
''''''''''''''               & "WHERE (LG_002_ITEMS.CODE = '152.01.001') AND (LG_002_01_STLINE.TRCODE=25) AND (LG_002_01_STLINE.IOCODE=3)AND LG_002_01_STLINE.DATE_='" & Format(TTARIH, "MM/DD/YY") & "' AND LG_002_01_STFICHE.DEPARTMENT=" & AMB & " "
''''''''''''''
''''''''''''''               Set RsEtM = New Recordset
''''''''''''''               RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
''''''''''''''               If RsEtM.RecordCount > 0 Then
''''''''''''''                    If IsNull(RsEtM.Fields(0)) = False Then BAY = RsEtM.Fields(0)
''''''''''''''               End If
''''''''''''''               RsEtM.Close
               Set celrange = she.Cells(SAT, 4): celrange.Value = PER - BAY
          'MÜÞTERÝYE EMANET VERÝLEN DAMACANA
               SQLSTR = "SELECT T.SPECODE,SUM(T.G)AS G,SUM(T.C)AS C FROM " _
               & "(SELECT sum(stl.AMOUNT)as G,0 AS C,LG_002_CLCARD.SPECODE FROM LG_002_ITEMS as itm INNER JOIN LG_002_01_STLINE as stl ON itm.LOGICALREF = stl.STOCKREF INNER JOIN LG_002_01_STFICHE ON STL.STFICHEREF=LG_002_01_STFICHE.LOGICALREF INNER JOIN LG_002_CLCARD ON LG_002_01_STFICHE.CLIENTREF = LG_002_CLCARD.LOGICALREF " _
               & "WHERE (itm.CODE = '150.01.01.02')AND (LG_002_01_STFICHE.DEPARTMENT = " & AMB & ") AND (stl.TRCODE = 35) AND (LG_002_01_STFICHE.DATE_ = '" & Format(TTARIH, "MM/DD/YY") & "') GROUP BY LG_002_CLCARD.SPECODE " _
               & "Union All " _
               & "SELECT 0 AS G, sum(stl.AMOUNT)as C, LG_002_CLCARD.SPECODE FROM LG_002_ITEMS as itm INNER JOIN LG_002_01_STLINE as stl ON itm.LOGICALREF = stl.STOCKREF  INNER JOIN LG_002_01_STFICHE ON STL.STFICHEREF=LG_002_01_STFICHE.LOGICALREF INNER JOIN LG_002_CLCARD ON LG_002_01_STFICHE.CLIENTREF = LG_002_CLCARD.LOGICALREF " _
               & "WHERE (itm.CODE = '150.01.01.02')AND (LG_002_01_STFICHE.DEPARTMENT = " & AMB & ") AND (stl.TRCODE = 30) AND (LG_002_01_STFICHE.DATE_ = '" & Format(TTARIH, "MM/DD/YY") & "')GROUP BY LG_002_CLCARD.SPECODE) AS T GROUP BY SPECODE"
               PERG = 0: BAYG = 0:     PERC = 0: BAYC = 0
               Set RsEtM = New Recordset
               RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
               If RsEtM.RecordCount > 0 Then
                    Do While Not RsEtM.EOF
                         If RsEtM.Fields(0) = "DMC.01.TB" Then
                              If RsEtM.Fields(1) > 0 Then BAYG = BAYG + RsEtM.Fields(1)
                              If RsEtM.Fields(2) > 0 Then BAYC = BAYC + RsEtM.Fields(2)
                         Else
                              If RsEtM.Fields(1) > 0 Then PERG = PERG + RsEtM.Fields(1)
                              If RsEtM.Fields(2) > 0 Then PERC = PERC + RsEtM.Fields(2)
                         End If
                    RsEtM.MoveNext
                    Loop
                    
                    Set celrange = she.Cells(SAT, 5): celrange.Value = PERG
                    Set celrange = she.Cells(SAT, 6): celrange.Value = PERC
                    Set celrange = she.Cells(SAT + 1, 5): celrange.Value = BAYG
                    Set celrange = she.Cells(SAT + 1, 6): celrange.Value = BAYC
               End If
               RsEtM.Close
          'BOÞ DAMACANA HESAPLA
               Set celrange = she.Cells(SAT, 4): celrange.Value = (SATPER + SATBAY + PERC + BAYC) - (PERG + BAYG)
          'RAKÝP DAMACANA SU
               SQLSTR = "SELECT SUM(LG_002_01_STLINE.AMOUNT) AS Miktar, LG_002_CLCARD.SPECODE FROM LG_002_01_STFICHE INNER JOIN LG_002_01_STLINE ON LG_002_01_STFICHE.LOGICALREF = LG_002_01_STLINE.STFICHEREF INNER JOIN " _
               & "LG_002_ITEMS ON LG_002_01_STLINE.STOCKREF = LG_002_ITEMS.LOGICALREF INNER JOIN LG_002_CLCARD ON LG_002_01_STFICHE.CLIENTREF = LG_002_CLCARD.LOGICALREF " _
               & "WHERE (LG_002_ITEMS.CODE LIKE '153.04l%') AND (LG_002_01_STLINE.IOCODE = 4) AND (LG_002_01_STFICHE.DEPARTMENT = " & AMB & ") AND (LG_002_01_STFICHE.DATE_ = '" & Format(TTARIH, "MM/DD/YY") & "') " _
               & "GROUP BY LG_002_CLCARD.SPECODE"
               PER = 0: BAY = 0
               Set RsEtM = New Recordset
               RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
               If RsEtM.RecordCount > 0 Then
                    Do While Not RsEtM.EOF
                         If RsEtM.Fields(1) = "DMC.01.TB" Then
                              If IsNull(RsEtM.Fields(0)) = False Then BAY = BAY + RsEtM.Fields(0)
                         Else
                              If IsNull(RsEtM.Fields(0)) = False Then PER = PER + RsEtM.Fields(0)
                         End If
                    RsEtM.MoveNext
                    Loop
                    Set celrange = she.Cells(SAT, 7): celrange.Value = PER
                    Set celrange = she.Cells(SAT + 1, 7): celrange.Value = BAY
               End If
               RsEtM.Close
          'KIRIK DAMACANA SU
               SQLSTR = "SELECT SUM(LG_002_01_STLINE.AMOUNT) AS Miktar, LG_002_CLCARD.SPECODE FROM LG_002_01_STFICHE INNER JOIN LG_002_01_STLINE ON LG_002_01_STFICHE.LOGICALREF = LG_002_01_STLINE.STFICHEREF INNER JOIN " _
               & "LG_002_ITEMS ON LG_002_01_STLINE.STOCKREF = LG_002_ITEMS.LOGICALREF INNER JOIN LG_002_CLCARD ON LG_002_01_STFICHE.CLIENTREF = LG_002_CLCARD.LOGICALREF " _
               & "WHERE (LG_002_ITEMS.CODE = '150.0l.01.05') AND (LG_002_01_STLINE.IOCODE = 4) AND (LG_002_01_STFICHE.DEPARTMENT = " & AMB & ") AND (LG_002_01_STFICHE.DATE_ = '" & Format(TTARIH, "MM/DD/YY") & "') " _
               & "GROUP BY LG_002_CLCARD.SPECODE"
               PER = 0: BAY = 0
               Set RsEtM = New Recordset
               RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
               If RsEtM.RecordCount > 0 Then
                    Do While Not RsEtM.EOF
                         If RsEtM.Fields(1) = "DMC.01.TB" Then
                              If IsNull(RsEtM.Fields(0)) = False Then BAY = BAY + RsEtM.Fields(0)
                         Else
                              If IsNull(RsEtM.Fields(0)) = False Then PER = PER + RsEtM.Fields(0)
                         End If
                    RsEtM.MoveNext
                    Loop
                    Set celrange = she.Cells(SAT, 8): celrange.Value = PER
                    Set celrange = she.Cells(SAT + 1, 8): celrange.Value = BAY
               End If
               RsEtM.Close
          'KOKULU DAMACANA SU
               SQLSTR = "SELECT SUM(LG_002_01_STLINE.AMOUNT) AS Miktar, LG_002_CLCARD.SPECODE FROM LG_002_01_STFICHE INNER JOIN LG_002_01_STLINE ON LG_002_01_STFICHE.LOGICALREF = LG_002_01_STLINE.STFICHEREF INNER JOIN " _
               & "LG_002_ITEMS ON LG_002_01_STLINE.STOCKREF = LG_002_ITEMS.LOGICALREF INNER JOIN LG_002_CLCARD ON LG_002_01_STFICHE.CLIENTREF = LG_002_CLCARD.LOGICALREF " _
               & "WHERE (LG_002_ITEMS.CODE = '150.0l.01.04') AND (LG_002_01_STLINE.IOCODE = 4) AND (LG_002_01_STFICHE.DEPARTMENT = " & AMB & ") AND (LG_002_01_STFICHE.DATE_ = '" & Format(TTARIH, "MM/DD/YY") & "') " _
               & "GROUP BY LG_002_CLCARD.SPECODE"
               PER = 0: BAY = 0
               Set RsEtM = New Recordset
               RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
               If RsEtM.RecordCount > 0 Then
                    Do While Not RsEtM.EOF
                         If RsEtM.Fields(1) = "DMC.01.TB" Then
                              If IsNull(RsEtM.Fields(0)) = False Then BAY = BAY + RsEtM.Fields(0)
                         Else
                              If IsNull(RsEtM.Fields(0)) = False Then PER = PER + RsEtM.Fields(0)
                         End If
                    RsEtM.MoveNext
                    Loop
                    Set celrange = she.Cells(SAT, 9): celrange.Value = PER
                    Set celrange = she.Cells(SAT + 1, 9): celrange.Value = BAY
               End If
               RsEtM.Close
          'EMANET VERÝLEN DOLAP
               SQLSTR = "SELECT T.SPECODE,SUM(T.G)AS G,SUM(T.C)AS C FROM " _
               & "(SELECT sum(stl.AMOUNT)as G,0 AS C,LG_002_CLCARD.SPECODE FROM LG_002_ITEMS as itm INNER JOIN LG_002_01_STLINE as stl ON itm.LOGICALREF = stl.STOCKREF INNER JOIN LG_002_01_STFICHE ON STL.STFICHEREF=LG_002_01_STFICHE.LOGICALREF INNER JOIN LG_002_CLCARD ON LG_002_01_STFICHE.CLIENTREF = LG_002_CLCARD.LOGICALREF " _
               & "WHERE (itm.CODE = '153.01.001')AND (LG_002_01_STFICHE.DEPARTMENT = " & AMB & ") AND (stl.TRCODE = 35) AND (LG_002_01_STFICHE.DATE_ = '" & Format(TTARIH, "MM/DD/YY") & "') GROUP BY LG_002_CLCARD.SPECODE " _
               & "Union All " _
               & "SELECT 0 AS G, sum(stl.AMOUNT)as C, LG_002_CLCARD.SPECODE FROM LG_002_ITEMS as itm INNER JOIN LG_002_01_STLINE as stl ON itm.LOGICALREF = stl.STOCKREF  INNER JOIN LG_002_01_STFICHE ON STL.STFICHEREF=LG_002_01_STFICHE.LOGICALREF INNER JOIN LG_002_CLCARD ON LG_002_01_STFICHE.CLIENTREF = LG_002_CLCARD.LOGICALREF " _
               & "WHERE (itm.CODE = '153.01.001')AND (LG_002_01_STFICHE.DEPARTMENT = " & AMB & ") AND (stl.TRCODE = 30) AND (LG_002_01_STFICHE.DATE_ = '" & Format(TTARIH, "MM/DD/YY") & "')GROUP BY LG_002_CLCARD.SPECODE) AS T GROUP BY SPECODE"
               PERG = 0: BAYG = 0:     PERC = 0: BAYC = 0
               Set RsEtM = New Recordset
               RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
               If RsEtM.RecordCount > 0 Then
                    Do While Not RsEtM.EOF
                         If RsEtM.Fields(0) = "DMC.01.TB" Then
                              If RsEtM.Fields(1) > 0 Then BAYG = BAYG + RsEtM.Fields(1)
                              If RsEtM.Fields(2) > 0 Then BAYC = BAYC + RsEtM.Fields(2)
                         Else
                              If RsEtM.Fields(1) > 0 Then PERG = PERG + RsEtM.Fields(1)
                              If RsEtM.Fields(2) > 0 Then PERC = PERC + RsEtM.Fields(2)
                         End If
                    RsEtM.MoveNext
                    Loop
                    
                    Set celrange = she.Cells(SAT, 10): celrange.Value = PERG
                    Set celrange = she.Cells(SAT, 11): celrange.Value = PERC
                    Set celrange = she.Cells(SAT + 1, 10): celrange.Value = BAYG
                    Set celrange = she.Cells(SAT + 1, 11): celrange.Value = BAYC
               End If
               RsEtM.Close
          'depodaki dolap
               'giriþ için
                    SQLSTR = "SELECT SUM(LG_002_01_STLINE.AMOUNT) AS Miktar FROM LG_002_01_STFICHE INNER JOIN LG_002_01_STLINE ON LG_002_01_STFICHE.LOGICALREF = LG_002_01_STLINE.STFICHEREF INNER JOIN " _
                    & "LG_002_ITEMS ON LG_002_01_STLINE.STOCKREF = LG_002_ITEMS.LOGICALREF INNER JOIN LG_002_CLCARD ON LG_002_01_STFICHE.CLIENTREF = LG_002_CLCARD.LOGICALREF " _
                    & "WHERE (LG_002_ITEMS.CODE = '153.01.001') AND (LG_002_01_STLINE.IOCODE = 2) AND (LG_002_01_STFICHE.DEPARTMENT = " & AMB & ") AND (LG_002_01_STFICHE.DATE_ = '" & Format(TTARIH, "MM/DD/YY") & "') "
                    PER = 0: BAY = 0
                    Set RsEtM = New Recordset
                    RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
                    If RsEtM.RecordCount > 0 Then
                         If IsNull(RsEtM.Fields(0)) = False Then Set celrange = she.Cells(SAT, 12): celrange.Value = RsEtM.Fields(0)
                    End If
                    RsEtM.Close
               'çýkýþ için
                    SQLSTR = "SELECT SUM(LG_002_01_STLINE.AMOUNT) AS Miktar FROM LG_002_01_STFICHE INNER JOIN LG_002_01_STLINE ON LG_002_01_STFICHE.LOGICALREF = LG_002_01_STLINE.STFICHEREF INNER JOIN " _
                    & "LG_002_ITEMS ON LG_002_01_STLINE.STOCKREF = LG_002_ITEMS.LOGICALREF INNER JOIN LG_002_CLCARD ON LG_002_01_STFICHE.CLIENTREF = LG_002_CLCARD.LOGICALREF " _
                    & "WHERE (LG_002_ITEMS.CODE = '153.01.001') AND (LG_002_01_STLINE.IOCODE = 3) AND (LG_002_01_STFICHE.COMPDEPARTMENT = " & AMB & ") AND (LG_002_01_STFICHE.DATE_ = '" & Format(TTARIH, "MM/DD/YY") & "') "
                    PER = 0: BAY = 0
                    Set RsEtM = New Recordset
                    RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
                    If RsEtM.RecordCount > 0 Then
                         If IsNull(RsEtM.Fields(0)) = False Then Set celrange = she.Cells(SAT + 1, 13): celrange.Value = RsEtM.Fields(0)
                    End If
                    RsEtM.Close
          'SATILAN POMPA
               SQLSTR = "SELECT SUM(LG_002_01_STLINE.AMOUNT) AS Miktar, LG_002_CLCARD.SPECODE FROM LG_002_01_STFICHE INNER JOIN LG_002_01_STLINE ON LG_002_01_STFICHE.LOGICALREF = LG_002_01_STLINE.STFICHEREF INNER JOIN " _
               & "LG_002_ITEMS ON LG_002_01_STLINE.STOCKREF = LG_002_ITEMS.LOGICALREF INNER JOIN LG_002_CLCARD ON LG_002_01_STFICHE.CLIENTREF = LG_002_CLCARD.LOGICALREF " _
               & "WHERE (LG_002_ITEMS.CODE = '153.01.002') AND (LG_002_01_STLINE.IOCODE = 4) AND (LG_002_01_STFICHE.DEPARTMENT = " & AMB & ") AND (LG_002_01_STFICHE.DATE_ = '" & Format(TTARIH, "MM/DD/YY") & "') " _
               & "GROUP BY LG_002_CLCARD.SPECODE"
               PER = 0: BAY = 0
               Set RsEtM = New Recordset
               RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
               If RsEtM.RecordCount > 0 Then
                    Do While Not RsEtM.EOF
                         If RsEtM.Fields(1) = "DMC.01.TB" Then
                              If IsNull(RsEtM.Fields(0)) = False Then BAY = BAY + RsEtM.Fields(0)
                         Else
                              If IsNull(RsEtM.Fields(0)) = False Then PER = PER + RsEtM.Fields(0)
                         End If
                    RsEtM.MoveNext
                    Loop
                    Set celrange = she.Cells(SAT, 15): celrange.Value = PER
                    Set celrange = she.Cells(SAT + 1, 15): celrange.Value = BAY
               End If
               RsEtM.Close
          'SATILAN MUSLUK
               SQLSTR = "SELECT SUM(LG_002_01_STLINE.AMOUNT) AS Miktar, LG_002_CLCARD.SPECODE FROM LG_002_01_STFICHE INNER JOIN LG_002_01_STLINE ON LG_002_01_STFICHE.LOGICALREF = LG_002_01_STLINE.STFICHEREF INNER JOIN " _
               & "LG_002_ITEMS ON LG_002_01_STLINE.STOCKREF = LG_002_ITEMS.LOGICALREF INNER JOIN LG_002_CLCARD ON LG_002_01_STFICHE.CLIENTREF = LG_002_CLCARD.LOGICALREF " _
               & "WHERE (LG_002_ITEMS.CODE = '153.01.003') AND (LG_002_01_STLINE.IOCODE = 4) AND (LG_002_01_STFICHE.DEPARTMENT = " & AMB & ") AND (LG_002_01_STFICHE.DATE_ = '" & Format(TTARIH, "MM/DD/YY") & "') " _
               & "GROUP BY LG_002_CLCARD.SPECODE"
               PER = 0: BAY = 0
               Set RsEtM = New Recordset
               RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
               If RsEtM.RecordCount > 0 Then
                    Do While Not RsEtM.EOF
                         If RsEtM.Fields(1) = "DMC.01.TB" Then
                              If IsNull(RsEtM.Fields(0)) = False Then BAY = BAY + RsEtM.Fields(0)
                         Else
                              If IsNull(RsEtM.Fields(0)) = False Then PER = PER + RsEtM.Fields(0)
                         End If
                    RsEtM.MoveNext
                    Loop
                    Set celrange = she.Cells(SAT, 16): celrange.Value = PER
                    Set celrange = she.Cells(SAT + 1, 16): celrange.Value = BAY
               End If
               RsEtM.Close
          'SATILAN BARDAKLIK
               SQLSTR = "SELECT SUM(LG_002_01_STLINE.AMOUNT) AS Miktar, LG_002_CLCARD.SPECODE FROM LG_002_01_STFICHE INNER JOIN LG_002_01_STLINE ON LG_002_01_STFICHE.LOGICALREF = LG_002_01_STLINE.STFICHEREF INNER JOIN " _
               & "LG_002_ITEMS ON LG_002_01_STLINE.STOCKREF = LG_002_ITEMS.LOGICALREF INNER JOIN LG_002_CLCARD ON LG_002_01_STFICHE.CLIENTREF = LG_002_CLCARD.LOGICALREF " _
               & "WHERE (LG_002_ITEMS.CODE = '153.01.004') AND (LG_002_01_STLINE.IOCODE = 4) AND (LG_002_01_STFICHE.DEPARTMENT = " & AMB & ") AND (LG_002_01_STFICHE.DATE_ = '" & Format(TTARIH, "MM/DD/YY") & "') " _
               & "GROUP BY LG_002_CLCARD.SPECODE"
               PER = 0: BAY = 0
               Set RsEtM = New Recordset
               RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
               If RsEtM.RecordCount > 0 Then
                    Do While Not RsEtM.EOF
                         If RsEtM.Fields(1) = "DMC.01.TB" Then
                              If IsNull(RsEtM.Fields(0)) = False Then BAY = BAY + RsEtM.Fields(0)
                         Else
                              If IsNull(RsEtM.Fields(0)) = False Then PER = PER + RsEtM.Fields(0)
                         End If
                    RsEtM.MoveNext
                    Loop
                    Set celrange = she.Cells(SAT, 17): celrange.Value = PER
                    Set celrange = she.Cells(SAT + 1, 17): celrange.Value = BAY
               End If
               RsEtM.Close
          'SATILAN ELÇÝK
               SQLSTR = "SELECT SUM(LG_002_01_STLINE.AMOUNT) AS Miktar, LG_002_CLCARD.SPECODE FROM LG_002_01_STFICHE INNER JOIN LG_002_01_STLINE ON LG_002_01_STFICHE.LOGICALREF = LG_002_01_STLINE.STFICHEREF INNER JOIN " _
               & "LG_002_ITEMS ON LG_002_01_STLINE.STOCKREF = LG_002_ITEMS.LOGICALREF INNER JOIN LG_002_CLCARD ON LG_002_01_STFICHE.CLIENTREF = LG_002_CLCARD.LOGICALREF " _
               & "WHERE (LG_002_ITEMS.CODE = '153.01.007') AND (LG_002_01_STLINE.IOCODE = 4) AND (LG_002_01_STFICHE.DEPARTMENT = " & AMB & ") AND (LG_002_01_STFICHE.DATE_ = '" & Format(TTARIH, "MM/DD/YY") & "') " _
               & "GROUP BY LG_002_CLCARD.SPECODE"
               PER = 0: BAY = 0
               Set RsEtM = New Recordset
               RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
               If RsEtM.RecordCount > 0 Then
                    Do While Not RsEtM.EOF
                         If RsEtM.Fields(1) = "DMC.01.TB" Then
                              If IsNull(RsEtM.Fields(0)) = False Then BAY = BAY + RsEtM.Fields(0)
                         Else
                              If IsNull(RsEtM.Fields(0)) = False Then PER = PER + RsEtM.Fields(0)
                         End If
                    RsEtM.MoveNext
                    Loop
                    Set celrange = she.Cells(SAT, 18): celrange.Value = PER
                    Set celrange = she.Cells(SAT + 1, 18): celrange.Value = BAY
               End If
               RsEtM.Close
          'SATILAN MAZOT
               SQLSTR = "SELECT SUM(LG_002_01_STLINE.AMOUNT) AS Miktar, LG_002_CLCARD.SPECODE FROM LG_002_01_STFICHE INNER JOIN LG_002_01_STLINE ON LG_002_01_STFICHE.LOGICALREF = LG_002_01_STLINE.STFICHEREF INNER JOIN " _
               & "LG_002_ITEMS ON LG_002_01_STLINE.STOCKREF = LG_002_ITEMS.LOGICALREF INNER JOIN LG_002_CLCARD ON LG_002_01_STFICHE.CLIENTREF = LG_002_CLCARD.LOGICALREF " _
               & "WHERE (LG_002_ITEMS.CODE = '150.99.002') AND (LG_002_01_STLINE.IOCODE = 4) AND (LG_002_01_STFICHE.DEPARTMENT = " & AMB & ") AND (LG_002_01_STFICHE.DATE_ = '" & Format(TTARIH, "MM/DD/YY") & "') " _
               & "GROUP BY LG_002_CLCARD.SPECODE"
               PER = 0: BAY = 0
               Set RsEtM = New Recordset
               RsEtM.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
               If RsEtM.RecordCount > 0 Then
                    Do While Not RsEtM.EOF
                         If RsEtM.Fields(1) = "DMC.01.TB" Then
                              If IsNull(RsEtM.Fields(0)) = False Then BAY = BAY + RsEtM.Fields(0)
                         Else
                              If IsNull(RsEtM.Fields(0)) = False Then PER = PER + RsEtM.Fields(0)
                         End If
                    RsEtM.MoveNext
                    Loop
                    Set celrange = she.Cells(SAT, 19): celrange.Value = PER
                    Set celrange = she.Cells(SAT + 1, 19): celrange.Value = BAY
               End If
               RsEtM.Close
Next

'''''''(satýr,sütün)
''''''
''''''    'Set celrange = she.Cells(6, 5): celrange.Value = "65"
''''''    'Set celrange = she.Cells(7, 5): celrange.Value = "75"
''''''
''''''

End Sub

Sub SRGMenaDSC()
On Error GoTo HATA
ilktarih = "01/01/10": sontarih = "31/12/10"
TarihsTr = " and LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ >= '" & Format(ilktarih, "MM/DD/YY") & "' and LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ <= '" & Format(sontarih, "MM/DD/YY") & "'"

If Len(dxPickEdit1(4).DisplayText) = 0 Then OzelsTr = "" Else OzelsTr = " and LG_" & GFirma & "_CLCARD.SPECODE = '" & Trim(dxPickEdit1(4)) & "'"
If Len(dxPickEdit1(6).DisplayText) = 0 Then YetkisTr = "" Else YetkisTr = " and LG_" & GFirma & "_CLCARD.CYPHCODE = '" & Trim(dxPickEdit1(6)) & "'"
If Len(dxPickEdit1(7).DisplayText) = 0 Then GrupsTr = "" Else GrupsTr = " and LG_" & GFirma & "_CLCARD.CITY = '" & Trim(dxPickEdit1(7)) & "'"
If Len(dxPickEdit1(9).DisplayText) = 0 Then
     IlcesTr = ""
Else
     If Len(dxPickEdit1(11).DisplayText) = 0 Then
          IlcesTr = " and LG_" & GFirma & "_CLCARD.LOWLEVELCODES1 = " & Val(dxPickEdit1(9).DisplayText) & ""
     Else
          IlcesTr = " and LG_" & GFirma & "_CLCARD.LOWLEVELCODES1 = " & Val(dxPickEdit1(9).DisplayText) & " and LG_" & GFirma & "_CLCARD.LOWLEVELCODES2 = " & Val(dxPickEdit1(11).DisplayText) & ""
     End If
End If
  
   If Len(dxPickEdit1(8).DisplayText) = 0 Then
      StoKStr = ""
   Else
      If dxTextEdit1(3).Visible = False Then
         If dxPickEdit1(8) = "EÞÝT" Then
         JJ = dxPickEdit1(8)
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " and LG_" & GFirma & "_CLCARD.CODE = '" & dxTextEdit1(2) & "'"
         Else
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " AND LG_" & GFirma & "_CLCARD.CODE LIKE '" & dxTextEdit1(2) & "%" & "'"
         End If
      Else
         If dxPickEdit1(8) = "ARASI" Then
            StoKStr = " AND LG_" & GFirma & "_CLCARD.CODE >= '" & dxTextEdit1(2) & "' and LG_" & GFirma & "_CLCARD.CODE <= '" & dxTextEdit1(3) & "'"
         End If
      End If
   End If

DUZENLE:
SQLSTR = "SELECT LG_" & GFirma & "_CLCARD.CODE AS CariKod, LG_" & GFirma & "_CLCARD.DEFINITION_ AS CariAdi, LG_" & GFirma & "_CLCARD.SPECODE AS CariOzel, LG_" & GFirma & "_CLCARD.CITY AS CariSehir, LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ AS FaturaTarih, LG_" & GFirma & "_" & GDonem & "_INVOICE.GRPCODE AS FaturaCinsi, LG_" & GFirma & "_" & GDonem & "_INVOICE.TRCODE AS FaturaTipi, LG_" & GFirma & "_" & GDonem & "_STFICHE.IOCODE AS FisCinsi, LG_" & GFirma & "_" & GDonem & "_INVOICE.FICHENO AS FaturaNo, LG_" & GFirma & "_" & GDonem & "_INVOICE.DOCODE AS FaturaXNo, LG_" & GFirma & "_" & GDonem & "_INVOICE.SALESMANREF AS SatýcýKodu, LG_" & GFirma & "_" & GDonem & "_STLINE.SPECODE AS SatirOzel, LG_" & GFirma & "_" & GDonem & "_STLINE.AMOUNT AS Miktar, LG_" & GFirma & "_" & GDonem & "_STLINE.PRICE AS BFiyati," _
& " LG_" & GFirma & "_" & GDonem & "_STLINE.TOTAL AS Tutari, LG_" & GFirma & "_" & GDonem & "_STLINE.VATAMNT AS KDVsi, LG_" & GFirma & "_" & GDonem & "_STLINE.VATMATRAH AS KDVliTutar, LG_" & GFirma & "_" & GDonem & "_STLINE.LINENET AS NetTutar, LG_" & GFirma & "_ITEMS.CODE AS StokKodu, LG_" & GFirma & "_ITEMS.NAME AS StokAdi, LG_" & GFirma & "_ITEMS.STGRPCODE AS StokGrup, LG_" & GFirma & "_ITEMS.PRODUCERCODE AS StokUretici, LG_" & GFirma & "_ITEMS.SPECODE AS StokOzel, LG_" & GFirma & "_ITEMS.CYPHCODE AS StokYetki, LG_" & GFirma & "_ITEMS.VAT AS StokKDV, LG_" & GFirma & "_" & GDonem & "_STLINE.UINFO1 AS Carpan1, LG_" & GFirma & "_" & GDonem & "_STLINE.UINFO2 AS Carpan2, LG_" & GFirma & "_UNITSETL.CODE AS Birimi, LG_" & GFirma & "_" & GDonem & "_STLINE.DISTDISC, LG_" & GFirma & "_" & GDonem & "_STLINE.DISTCOST, LG_" & GFirma & "_" & GDonem & "_STLINE.DISTEXP, LG_" & GFirma & "_" & GDonem & "_INVOICE.TOTALDISCOUNTS," _
& " LG_" & GFirma & "_" & GDonem & "_INVOICE.GROSSTOTAL , LG_" & GFirma & "_" & GDonem & "_INVOICE.LOGICALREF AS INVREF, LG_" & GFirma & "_" & GDonem & "_INVOICE.NETTOTAL ,LG_" & GFirma & "_PAYPLANS.DEFINITION_ ,LG_" & GFirma & "_CLCARD.LOGICALREF AS CariReF, LG_" & GFirma & "_ITEMS.LOGICALREF AS StokReF" _
& " FROM LG_" & GFirma & "_" & GDonem & "_STFICHE INNER JOIN LG_" & GFirma & "_CLCARD INNER JOIN LG_" & GFirma & "_" & GDonem & "_INVOICE ON LG_" & GFirma & "_CLCARD.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_INVOICE.CLIENTREF ON LG_" & GFirma & "_" & GDonem & "_STFICHE.INVOICEREF = LG_" & GFirma & "_" & GDonem & "_INVOICE.LOGICALREF INNER JOIN LG_" & GFirma & "_ITEMS INNER JOIN LG_" & GFirma & "_" & GDonem & "_STLINE ON LG_" & GFirma & "_ITEMS.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_STLINE.STOCKREF ON LG_" & GFirma & "_" & GDonem & "_STFICHE.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_STLINE.STFICHEREF INNER JOIN LG_" & GFirma & "_UNITSETL ON LG_" & GFirma & "_" & GDonem & "_STLINE.UOMREF = LG_" & GFirma & "_UNITSETL.LOGICALREF LEFT OUTER JOIN LG_SLSMAN ON LG_" & GFirma & "_" & GDonem & "_INVOICE.SALESMANREF = LG_SLSMAN.LOGICALREF" _
& " LEFT OUTER JOIN LG_" & GFirma & "_PAYPLANS ON LG_" & GFirma & "_" & GDonem & "_INVOICE.PAYDEFREF = LG_" & GFirma & "_PAYPLANS.LOGICALREF " _
& " Where (LG_" & GFirma & "_" & GDonem & "_STLINE.LINETYPE = 0) And (LG_" & GFirma & "_" & GDonem & "_STLINE.CANCELLED = 0) and (LG_" & GFirma & "_" & GDonem & "_STLINE.Stockref = 200)"

CnnMlMain.Execute "CREATE VIEW MenaFSC WITH ENCRYPTION AS " & SQLSTR & TarihsTr & OzelsTr & GrupsTr & YetkisTr & IlcesTr

Exit Sub
HATA:
If Err.Number = -2147217900 Then
   CnnMlMain.Execute "drop view MenaFSC"
   GoTo DUZENLE
Else
   MsgBox Err.Number
End If

End Sub

Sub SSorGuDamacana()
On Error GoTo HATA
DUZENLE:

SQLSTR = "select t.stockref,t.clIentref,sum(Verilen)as Verilen,sum(Alinan)as Alinan,sum(Verilen - Alinan) as Kalan " _
& "from(SELECT STOCKREF, CLIENTREF, SUM(AMOUNT) AS Verilen, 0 as Alinan From LG_" & GFirma & "_01_STLINE " _
& "WHERE (STOCKREF IN(252,163,106)) and trcode = 35 group by stockref,clIentref " _
& "Union All SELECT STOCKREF, CLIENTREF, 0 AS Verilen, SUM(AMOUNT) as Alinan " _
& "From LG_" & GFirma & "_01_STLINE WHERE (STOCKREF IN(252,163,106)) and trcode = 30 " _
& " group by stockref,clIentref) as t group by t.stockref,t.ClIentref "

CnnMlMain.Execute "CREATE VIEW SrG_EmaNet WITH ENCRYPTION AS " & SQLSTR
Exit Sub
HATA:
If Err.Number = -2147217900 Then
   CnnMlMain.Execute "drop view SrG_EmaNet"
   GoTo DUZENLE
Else
   MsgBox Err.Number
End If

End Sub
Sub SSorguyaP1()
On Error GoTo HATA
DUZENLE:
SQLSTR = "CREATE VIEW SrG_Cari_YarD WITH ENCRYPTION AS SELECT t.CariRef, t.Tarih, SUM(t.TuTar) AS TuTaR FROM (SELECT CLIENTREF AS CariRef, DATE_ AS Tarih, AMOUNT AS TuTar From LG_" & GFirma & "_01_CLFLINE " _
& " Where (SIGN = 1) Union All SELECT TRANSREF AS CariRef, DATE_ AS Tarih, AMOUNT AS TuTar From LG_" & GFirma & "_01_KSLINES WHERE (TRCODE IN (31, 32, 33, 34, 35, 36, 37, 38, 39))) AS t INNER JOIN SrG_Cari_YardA ON t.CariRef = SrG_Cari_YardA.CariReF AND t.Tarih = SrG_Cari_YardA.Tarih GROUP BY t.CariRef, t.Tarih ORDER BY t.CariRef "

CnnMlMain.Execute SQLSTR
Exit Sub
HATA:
If Err.Number = -2147217900 Then
   CnnMlMain.Execute "drop view SrG_Cari_YarD"
   GoTo DUZENLE
Else
   MsgBox Err.Number
End If

End Sub

Sub SSorguyaP()
On Error GoTo HATA
DUZENLE:
SQLSTR = "CREATE VIEW SrG_Cari_YardA WITH ENCRYPTION AS SELECT CariRef, MAX(Tarih) AS Tarih FROM (SELECT     CLIENTREF AS CariRef, MAX(DATE_) AS Tarih  From LG_" & GFirma & "_01_CLFLINE " _
& " Where (SIGN = 1) GROUP BY CLIENTREF Union All SELECT     TRANSREF AS CariRef, MAX(DATE_) AS Tarih From LG_" & GFirma & "_01_KSLINES WHERE (TRCODE IN (31, 32, 33, 34, 35, 36, 37, 38, 39)) GROUP BY TRANSREF) AS t GROUP BY CariRef ORDER BY CariRef"
CnnMlMain.Execute SQLSTR
Exit Sub
HATA:
If Err.Number = -2147217900 Then
   CnnMlMain.Execute "drop view SrG_Cari_YardA"
   GoTo DUZENLE
Else
   MsgBox Err.Number
End If

End Sub
Sub SRGMena_ObjeUT()
On Error GoTo HATA

If Len(dxPickEdit1(0).DisplayText) = 0 Then OzelsTr = "" Else OzelsTr = " and LG_" & GFirma & "_ITEMS.SPECODE = '" & Trim(dxPickEdit1(0)) & "'"
If Len(dxPickEdit1(1).DisplayText) = 0 Then YetkisTr = "" Else YetkisTr = " and LG_" & GFirma & "_ITEMS.CYPHCODE = '" & Trim(dxPickEdit1(1)) & "'"
If Len(dxPickEdit1(2).DisplayText) = 0 Then GrupsTr = "" Else GrupsTr = " and LG_" & GFirma & "_ITEMS.STGRPCODE = '" & Trim(dxPickEdit1(2)) & "'"
If Len(dxPickEdit1(5).DisplayText) = 0 Then UretsTr = "" Else UretsTr = " and LG_" & GFirma & "_ITEMS.PRODCOUNTRY = '" & Trim(dxPickEdit1(5)) & "'"
If Len(dxPickEdit1(10).DisplayText) = 0 Then IsosTr = "" Else IsosTr = " and LG_" & GFirma & "_ITEMS.ISONR = '" & Trim(dxPickEdit1(10)) & "'"

If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/10" Else ilktarih = dxDateEdit1
If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "31/12/08" Else sontarih = dxDateEdit2
TarihsTr = " and LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ >= '" & Format(ilktarih, "MM/DD/YY") & "' and LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ <= '" & Format(sontarih, "MM/DD/YY") & "'"

If Len(dxPickEdit1(5).DisplayText) = 0 Then SDuruMu = "" Else SDuruMu = " and LG_" & GFirma & "_ITEMS.ACTIVE = " & Val(dxPickEdit1(5).DisplayText)

'RAPORA ETKIME BAÞLIYOR
   If Len(dxPickEdit1(3).DisplayText) = 0 Then
      StoKStr = ""
   Else
      If dxTextEdit1(1).Visible = False Then
         If dxPickEdit1(3) = "EÞÝT" Then
            If Len(dxTextEdit1(0).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " and LG_" & GFirma & "_ITEMS.CODE = '" & dxTextEdit1(0) & "'"
         Else
            If Len(dxTextEdit1(0).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " AND LG_" & GFirma & "_ITEMS.CODE LIKE '" & dxTextEdit1(0) & "%" & "'"
         End If
      Else
         If dxPickEdit1(3) = "ARASI" Then
            StoKStr = " AND LG_" & GFirma & "_ITEMS.CODE >= '" & dxTextEdit1(0) & "' and LG_" & GFirma & "_ITEMS.CODE <= '" & dxTextEdit1(1) & "'"
         End If
      End If
   End If
DUZENLE:

SQLSTR = "SELECT LG_" & GFirma & "_CLCARD.CODE AS CariKodu, LG_" & GFirma & "_CLCARD.DEFINITION_ AS CariAdi, LG_" & GFirma & "_CLCARD.SPECODE AS CariOzel, LG_" & GFirma & "_CLCARD.CYPHCODE AS CariYetki, LG_" & GFirma & "_CLCARD.CITY AS CariSehir, LG_" & GFirma & "_" & GDonem & "_INVOICE.TRCODE AS FaturaTipi, LG_" & GFirma & "_" & GDonem & "_INVOICE.FICHENO AS FaturaNo, LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ AS FaturaTarihi, LG_" & GFirma & "_" & GDonem & "_STLINE.STOCKREF AS Stokref, LG_" & GFirma & "_" & GDonem & "_STLINE.AMOUNT AS Miktari, LG_" & GFirma & "_" & GDonem & "_STLINE.PRICE AS BFiyati, LG_" & GFirma & "_" & GDonem & "_STLINE.TOTAL AS Toplam, " _
& "LG_" & GFirma & "_" & GDonem & "_STLINE.DISTDISC AS iNdirim, LG_" & GFirma & "_" & GDonem & "_STLINE.LINENET AS NetTutar, LG_" & GFirma & "_ITEMS.CODE, LG_" & GFirma & "_ITEMS.NAME, LG_" & GFirma & "_ITEMS.STGRPCODE, LG_" & GFirma & "_ITEMS.PRODUCERCODE, LG_" & GFirma & "_ITEMS.SPECODE, LG_" & GFirma & "_ITEMS.CYPHCODE, LG_" & GFirma & "_ITEMS.ISONR , LG_" & GFirma & "_ITEMS.GROUPNR, LG_" & GFirma & "_ITEMS.PRODCOUNTRY " _
& "FROM LG_" & GFirma & "_CLCARD INNER JOIN LG_" & GFirma & "_" & GDonem & "_INVOICE ON LG_" & GFirma & "_CLCARD.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_INVOICE.CLIENTREF INNER JOIN LG_" & GFirma & "_" & GDonem & "_STLINE ON LG_" & GFirma & "_" & GDonem & "_INVOICE.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_STLINE.INVOICEREF INNER JOIN LG_" & GFirma & "_ITEMS ON LG_" & GFirma & "_" & GDonem & "_STLINE.STOCKREF = LG_" & GFirma & "_ITEMS.LOGICALREF " _
& "WHERE LG_" & GFirma & "_" & GDonem & "_STLINE.LINETYPE = 0 "

CnnMlMain.Execute "CREATE VIEW ASRGMental_Env_Ek WITH ENCRYPTION AS " & SQLSTR & TarihsTr & OzelsTr & GrupsTr & YetkisTr & StoKStr & UretsTr & IsosTr

Exit Sub
HATA:
If Err.Number = -2147217900 Then
   CnnMlMain.Execute "drop view ASRGMental_Env_Ek"
   GoTo DUZENLE
Else
   MsgBox Err.Number
End If

End Sub
Sub SRGMenaFSC()
On Error GoTo HATA

Eleman_Ara

If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/" & Year(Date) Else ilktarih = dxDateEdit1
If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "31/12/" & Year(Date) Else sontarih = dxDateEdit2
TarihsTr = " and LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ >= '" & Format(ilktarih, "MM/DD/YY") & "' and LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ <= '" & Format(sontarih, "MM/DD/YY") & "'"

If Len(dxPickEdit1(4).DisplayText) = 0 Then OzelsTr = "" Else OzelsTr = " and LG_" & GFirma & "_CLCARD.SPECODE = '" & Trim(dxPickEdit1(4)) & "'"
If Len(dxPickEdit1(6).DisplayText) = 0 Then YetkisTr = "" Else YetkisTr = " and LG_" & GFirma & "_CLCARD.CYPHCODE = '" & Trim(dxPickEdit1(6)) & "'"
If Len(dxPickEdit1(7).DisplayText) = 0 Then GrupsTr = "" Else GrupsTr = " and LG_" & GFirma & "_CLCARD.CITY = '" & Trim(dxPickEdit1(7)) & "'"
If Len(dxPickEdit1(9).DisplayText) = 0 Then IlcesTr = "" Else IlcesTr = " and LG_" & GFirma & "_CLCARD.TOWN = '" & Trim(dxPickEdit1(9)) & "'"

If Len(dxPickEdit1(0).DisplayText) = 0 Then SOzelsTr = "" Else SOzelsTr = " and LG_" & GFirma & "_ITEMS.SPECODE = '" & Trim(dxPickEdit1(0)) & "'"
If Len(dxPickEdit1(1).DisplayText) = 0 Then SYetkisTr = "" Else SYetkisTr = " and LG_" & GFirma & "_ITEMS.CYPHCODE = '" & Trim(dxPickEdit1(1)) & "'"
If Len(dxPickEdit1(2).DisplayText) = 0 Then SGrupsTr = "" Else SGrupsTr = " and LG_" & GFirma & "_ITEMS.STGRPCODE = '" & Trim(dxPickEdit1(2)) & "'"
If Len(dxPickEdit1(5).DisplayText) = 0 Then SUretsTr = "" Else SUretsTr = " and LG_" & GFirma & "_ITEMS.PRODCOUNTRY = '" & Trim(dxPickEdit1(5)) & "'"
If Len(dxPickEdit1(10).DisplayText) = 0 Then SIsosTr = "" Else SIsosTr = " and LG_" & GFirma & "_ITEMS.ISONR = '" & Trim(dxPickEdit1(10)) & "'"
   
If ElemanSrg <> "" Then DurumTr = " AND LG_" & GFirma & "_PROJECT.NAME IN " & ElemanSrg Else DurumTr = ""
   
   If Len(dxPickEdit1(8).DisplayText) = 0 Then
      StoKStr = ""
   Else
      If dxTextEdit1(3).Visible = False Then
         If dxPickEdit1(8) = "EÞÝT" Then
         JJ = dxPickEdit1(8)
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " and LG_" & GFirma & "_CLCARD.CODE = '" & dxTextEdit1(2) & "'"
         Else
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " AND LG_" & GFirma & "_CLCARD.CODE LIKE '" & dxTextEdit1(2) & "%" & "'"
         End If
      Else
         If dxPickEdit1(8) = "ARASI" Then
            StoKStr = " AND LG_" & GFirma & "_CLCARD.CODE >= '" & dxTextEdit1(2) & "' and LG_" & GFirma & "_CLCARD.CODE <= '" & dxTextEdit1(3) & "'"
         End If
      End If
   End If

   If Len(dxPickEdit1(3).DisplayText) = 0 Then
      SStoksTr = ""
   Else
      If dxTextEdit1(1).Visible = False Then
         If dxPickEdit1(3) = "EÞÝT" Then
         JJ = dxPickEdit1(3)
            If Len(dxTextEdit1(0).DisplayText) = 0 Then SStoksTr = "" Else SStoksTr = " and LG_" & GFirma & "_ITEMS.CODE = '" & dxTextEdit1(0) & "'"
         Else
            If Len(dxTextEdit1(0).DisplayText) = 0 Then SStoksTr = "" Else SStoksTr = " AND LG_" & GFirma & "_ITEMS.CODE LIKE '" & dxTextEdit1(0) & "%" & "'"
         End If
      Else
         If dxPickEdit1(3) = "ARASI" Then
            SStoksTr = " AND LG_" & GFirma & "_ITEMS.CODE >= '" & dxTextEdit1(0) & "' and LG_" & GFirma & "_ITEMS.CODE <= '" & dxTextEdit1(1) & "'"
         End If
      End If
   End If

DUZENLE:
SQLSTR = "SELECT LG_" & GFirma & "_CLCARD.CODE AS CariKod, LG_" & GFirma & "_CLCARD.DEFINITION_ AS CariAdi, LG_" & GFirma & "_CLCARD.SPECODE AS CariOzel, LG_" & GFirma & "_CLCARD.CITY AS CariSehir, LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ AS FaturaTarih, LG_" & GFirma & "_" & GDonem & "_INVOICE.GRPCODE AS FaturaCinsi, LG_" & GFirma & "_" & GDonem & "_INVOICE.TRCODE AS FaturaTipi, LG_" & GFirma & "_" & GDonem & "_STFICHE.IOCODE AS FisCinsi, LG_" & GFirma & "_" & GDonem & "_INVOICE.FICHENO AS FaturaNo, LG_" & GFirma & "_" & GDonem & "_INVOICE.DOCODE AS FaturaXNo, LG_" & GFirma & "_" & GDonem & "_INVOICE.SALESMANREF AS SatýcýKodu, LG_" & GFirma & "_" & GDonem & "_STLINE.SPECODE AS SatirOzel, LG_" & GFirma & "_" & GDonem & "_STLINE.AMOUNT AS Miktar, LG_" & GFirma & "_" & GDonem & "_STLINE.PRICE AS BFiyati," _
& " LG_" & GFirma & "_" & GDonem & "_STLINE.TOTAL AS Tutari, LG_" & GFirma & "_" & GDonem & "_STLINE.VATAMNT AS KDVsi, LG_" & GFirma & "_" & GDonem & "_STLINE.VATMATRAH AS KDVliTutar, LG_" & GFirma & "_" & GDonem & "_STLINE.LINENET AS NetTutar, LG_" & GFirma & "_ITEMS.CODE AS StokKodu, LG_" & GFirma & "_ITEMS.NAME AS StokAdi, LG_" & GFirma & "_ITEMS.STGRPCODE AS StokGrup, LG_" & GFirma & "_ITEMS.PRODUCERCODE AS StokUretici, LG_" & GFirma & "_ITEMS.SPECODE AS StokOzel, LG_" & GFirma & "_ITEMS.CYPHCODE AS StokYetki, LG_" & GFirma & "_ITEMS.VAT AS StokKDV, LG_" & GFirma & "_" & GDonem & "_STLINE.UINFO1 AS Carpan1, LG_" & GFirma & "_" & GDonem & "_STLINE.UINFO2 AS Carpan2, LG_" & GFirma & "_UNITSETL.CODE AS Birimi, LG_" & GFirma & "_" & GDonem & "_STLINE.DISTDISC, LG_" & GFirma & "_" & GDonem & "_STLINE.DISTCOST, LG_" & GFirma & "_" & GDonem & "_STLINE.DISTEXP, LG_" & GFirma & "_" & GDonem & "_INVOICE.TOTALDISCOUNTS," _
& " LG_" & GFirma & "_" & GDonem & "_INVOICE.GROSSTOTAL , LG_" & GFirma & "_" & GDonem & "_INVOICE.LOGICALREF AS INVREF, LG_" & GFirma & "_" & GDonem & "_INVOICE.NETTOTAL ,LG_" & GFirma & "_PAYPLANS.DEFINITION_ ,LG_" & GFirma & "_CLCARD.LOGICALREF AS CariReF, LG_" & GFirma & "_ITEMS.LOGICALREF AS StokReF" _
& " FROM LG_" & GFirma & "_" & GDonem & "_STFICHE INNER JOIN LG_" & GFirma & "_CLCARD INNER JOIN LG_" & GFirma & "_" & GDonem & "_INVOICE ON LG_" & GFirma & "_CLCARD.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_INVOICE.CLIENTREF ON LG_" & GFirma & "_" & GDonem & "_STFICHE.INVOICEREF = LG_" & GFirma & "_" & GDonem & "_INVOICE.LOGICALREF INNER JOIN LG_" & GFirma & "_ITEMS INNER JOIN LG_" & GFirma & "_" & GDonem & "_STLINE ON LG_" & GFirma & "_ITEMS.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_STLINE.STOCKREF ON LG_" & GFirma & "_" & GDonem & "_STFICHE.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_STLINE.STFICHEREF INNER JOIN LG_" & GFirma & "_UNITSETL ON LG_" & GFirma & "_" & GDonem & "_STLINE.UOMREF = LG_" & GFirma & "_UNITSETL.LOGICALREF LEFT OUTER JOIN LG_SLSMAN ON LG_" & GFirma & "_" & GDonem & "_INVOICE.SALESMANREF = LG_SLSMAN.LOGICALREF" _
& " LEFT OUTER JOIN LG_" & GFirma & "_PAYPLANS ON LG_" & GFirma & "_" & GDonem & "_INVOICE.PAYDEFREF = LG_" & GFirma & "_PAYPLANS.LOGICALREF INNER JOIN  LG_" & GFirma & "_PROJECT ON LG_" & GFirma & "_" & GDonem & "_INVOICE.PROJECTREF = LG_" & GFirma & "_PROJECT.LOGICALREF" _
& " Where (LG_" & GFirma & "_" & GDonem & "_STLINE.LINETYPE = 0) And (LG_" & GFirma & "_" & GDonem & "_STLINE.CANCELLED = 0) "

CnnMlMain.Execute "CREATE VIEW MenaFSC WITH ENCRYPTION AS " & SQLSTR & TarihsTr & OzelsTr & GrupsTr & YetkisTr & StoKStr & SOzelsTr & SGrupsTr & SYetkisTr & SUretsTr & SIsosTr & SStoksTr & DurumTr
'CnnMlMain.Execute "CREATE VIEW MenaFSC AS " & sqlstr & TarihsTr & OzelsTr & GrupsTr & YetkisTr & StoksTr & SOzelsTr & SGrupsTr & SYetkisTr & SUretsTr & SIsosTr & SStoksTr & DurumTr

Exit Sub
HATA:
If Err.Number = -2147217900 Then
   CnnMlMain.Execute "drop view MenaFSC"
   GoTo DUZENLE
Else
   MsgBox Err.Number
End If

End Sub
Sub STaHsilat()
On Error GoTo HATA

Eleman_Ara

If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/" & Year(Date) Else ilktarih = dxDateEdit1
If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "31/12/" & Year(Date) Else sontarih = dxDateEdit2
TarihsTr = " and TAHSILAR.TARIH >= '" & Format(ilktarih, "MM/DD/YY") & "' and TAHSILAR.TARIH <= '" & Format(sontarih, "MM/DD/YY") & "'"

If Len(dxPickEdit1(4).DisplayText) = 0 Then OzelsTr = "" Else OzelsTr = " and LG_" & GFirma & "_CLCARD.SPECODE = '" & Trim(dxPickEdit1(4)) & "'"
If Len(dxPickEdit1(6).DisplayText) = 0 Then YetkisTr = "" Else YetkisTr = " and LG_" & GFirma & "_CLCARD.CYPHCODE = '" & Trim(dxPickEdit1(6)) & "'"
If Len(dxPickEdit1(7).DisplayText) = 0 Then GrupsTr = "" Else GrupsTr = " and LG_" & GFirma & "_CLCARD.CITY = '" & Trim(dxPickEdit1(7)) & "'"
If Len(dxPickEdit1(9).DisplayText) = 0 Then IlcesTr = "" Else IlcesTr = " and LG_" & GFirma & "_CLCARD.TOWN = '" & Trim(dxPickEdit1(9)) & "'"

If Len(dxPickEdit1(0).DisplayText) = 0 Then SOzelsTr = "" Else SOzelsTr = " and LG_" & GFirma & "_ITEMS.SPECODE = '" & Trim(dxPickEdit1(0)) & "'"
If Len(dxPickEdit1(1).DisplayText) = 0 Then SYetkisTr = "" Else SYetkisTr = " and LG_" & GFirma & "_ITEMS.CYPHCODE = '" & Trim(dxPickEdit1(1)) & "'"
If Len(dxPickEdit1(2).DisplayText) = 0 Then SGrupsTr = "" Else SGrupsTr = " and LG_" & GFirma & "_ITEMS.STGRPCODE = '" & Trim(dxPickEdit1(2)) & "'"
If Len(dxPickEdit1(5).DisplayText) = 0 Then SUretsTr = "" Else SUretsTr = " and LG_" & GFirma & "_ITEMS.PRODCOUNTRY = '" & Trim(dxPickEdit1(5)) & "'"
If Len(dxPickEdit1(10).DisplayText) = 0 Then SIsosTr = "" Else SIsosTr = " and LG_" & GFirma & "_ITEMS.ISONR = '" & Trim(dxPickEdit1(10)) & "'"
   
If ElemanSrg <> "" Then DurumTr = " AND LG_" & GFirma & "_PROJECT.NAME IN " & ElemanSrg Else DurumTr = ""
   
   If Len(dxPickEdit1(8).DisplayText) = 0 Then
      StoKStr = ""
   Else
      If dxTextEdit1(3).Visible = False Then
         If dxPickEdit1(8) = "EÞÝT" Then
         JJ = dxPickEdit1(8)
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " and LG_" & GFirma & "_CLCARD.CODE = '" & dxTextEdit1(2) & "'"
         Else
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " AND LG_" & GFirma & "_CLCARD.CODE LIKE '" & dxTextEdit1(2) & "%" & "'"
         End If
      Else
         If dxPickEdit1(8) = "ARASI" Then
            StoKStr = " AND LG_" & GFirma & "_CLCARD.CODE >= '" & dxTextEdit1(2) & "' and LG_" & GFirma & "_CLCARD.CODE <= '" & dxTextEdit1(3) & "'"
         End If
      End If
   End If

   If Len(dxPickEdit1(3).DisplayText) = 0 Then
      SStoksTr = ""
   Else
      If dxTextEdit1(1).Visible = False Then
         If dxPickEdit1(3) = "EÞÝT" Then
         JJ = dxPickEdit1(3)
            If Len(dxTextEdit1(0).DisplayText) = 0 Then SStoksTr = "" Else SStoksTr = " and LG_" & GFirma & "_ITEMS.CODE = '" & dxTextEdit1(0) & "'"
         Else
            If Len(dxTextEdit1(0).DisplayText) = 0 Then SStoksTr = "" Else SStoksTr = " AND LG_" & GFirma & "_ITEMS.CODE LIKE '" & dxTextEdit1(0) & "%" & "'"
         End If
      Else
         If dxPickEdit1(3) = "ARASI" Then
            SStoksTr = " AND LG_" & GFirma & "_ITEMS.CODE >= '" & dxTextEdit1(0) & "' and LG_" & GFirma & "_ITEMS.CODE <= '" & dxTextEdit1(1) & "'"
         End If
      End If
   End If

DUZENLE:
'SQLSTR = "SELECT LG_" & GFirma & "_CLCARD.CODE AS CariKod, LG_" & GFirma & "_CLCARD.DEFINITION_ AS CariAdi, LG_" & GFirma & "_CLCARD.SPECODE AS CariOzel, LG_" & GFirma & "_CLCARD.CITY AS CariSehir, LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ AS FaturaTarih, LG_" & GFirma & "_" & GDonem & "_INVOICE.GRPCODE AS FaturaCinsi, LG_" & GFirma & "_" & GDonem & "_INVOICE.TRCODE AS FaturaTipi, LG_" & GFirma & "_" & GDonem & "_STFICHE.IOCODE AS FisCinsi, LG_" & GFirma & "_" & GDonem & "_INVOICE.FICHENO AS FaturaNo, LG_" & GFirma & "_" & GDonem & "_INVOICE.DOCODE AS FaturaXNo, LG_" & GFirma & "_" & GDonem & "_INVOICE.SALESMANREF AS SatýcýKodu, LG_" & GFirma & "_" & GDonem & "_STLINE.SPECODE AS SatirOzel, LG_" & GFirma & "_" & GDonem & "_STLINE.AMOUNT AS Miktar, LG_" & GFirma & "_" & GDonem & "_STLINE.PRICE AS BFiyati," _
'& " LG_" & GFirma & "_" & GDonem & "_STLINE.TOTAL AS Tutari, LG_" & GFirma & "_" & GDonem & "_STLINE.VATAMNT AS KDVsi, LG_" & GFirma & "_" & GDonem & "_STLINE.VATMATRAH AS KDVliTutar, LG_" & GFirma & "_" & GDonem & "_STLINE.LINENET AS NetTutar, LG_" & GFirma & "_ITEMS.CODE AS StokKodu, LG_" & GFirma & "_ITEMS.NAME AS StokAdi, LG_" & GFirma & "_ITEMS.STGRPCODE AS StokGrup, LG_" & GFirma & "_ITEMS.PRODUCERCODE AS StokUretici, LG_" & GFirma & "_ITEMS.SPECODE AS StokOzel, LG_" & GFirma & "_ITEMS.CYPHCODE AS StokYetki, LG_" & GFirma & "_ITEMS.VAT AS StokKDV, LG_" & GFirma & "_" & GDonem & "_STLINE.UINFO1 AS Carpan1, LG_" & GFirma & "_" & GDonem & "_STLINE.UINFO2 AS Carpan2, LG_" & GFirma & "_UNITSETL.CODE AS Birimi, LG_" & GFirma & "_" & GDonem & "_STLINE.DISTDISC, LG_" & GFirma & "_" & GDonem & "_STLINE.DISTCOST, LG_" & GFirma & "_" & GDonem & "_STLINE.DISTEXP, LG_" & GFirma & "_" & GDonem & "_INVOICE.TOTALDISCOUNTS," _
'& " LG_" & GFirma & "_" & GDonem & "_INVOICE.GROSSTOTAL , LG_" & GFirma & "_" & GDonem & "_INVOICE.LOGICALREF AS INVREF, LG_" & GFirma & "_" & GDonem & "_INVOICE.NETTOTAL ,LG_" & GFirma & "_PAYPLANS.DEFINITION_ ,LG_" & GFirma & "_CLCARD.LOGICALREF AS CariReF, LG_" & GFirma & "_ITEMS.LOGICALREF AS StokReF" _
'& " FROM LG_" & GFirma & "_" & GDonem & "_STFICHE INNER JOIN LG_" & GFirma & "_CLCARD INNER JOIN LG_" & GFirma & "_" & GDonem & "_INVOICE ON LG_" & GFirma & "_CLCARD.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_INVOICE.CLIENTREF ON LG_" & GFirma & "_" & GDonem & "_STFICHE.INVOICEREF = LG_" & GFirma & "_" & GDonem & "_INVOICE.LOGICALREF INNER JOIN LG_" & GFirma & "_ITEMS INNER JOIN LG_" & GFirma & "_" & GDonem & "_STLINE ON LG_" & GFirma & "_ITEMS.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_STLINE.STOCKREF ON LG_" & GFirma & "_" & GDonem & "_STFICHE.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_STLINE.STFICHEREF INNER JOIN LG_" & GFirma & "_UNITSETL ON LG_" & GFirma & "_" & GDonem & "_STLINE.UOMREF = LG_" & GFirma & "_UNITSETL.LOGICALREF LEFT OUTER JOIN LG_SLSMAN ON LG_" & GFirma & "_" & GDonem & "_INVOICE.SALESMANREF = LG_SLSMAN.LOGICALREF" _
'& " LEFT OUTER JOIN LG_" & GFirma & "_PAYPLANS ON LG_" & GFirma & "_" & GDonem & "_INVOICE.PAYDEFREF = LG_" & GFirma & "_PAYPLANS.LOGICALREF " _
'& " Where (LG_" & GFirma & "_" & GDonem & "_STLINE.LINETYPE = 0) And (LG_" & GFirma & "_" & GDonem & "_STLINE.CANCELLED = 0) "

SQLSTR = "SELECT 'TAH' AS ISLEM, LG_" & GFirma & "_" & GDonem & "_CLFICHE.DATE_ AS TARIH, LG_" & GFirma & "_" & GDonem & "_CLFLINE.TRCODE AS TURU, LG_" & GFirma & "_" & GDonem & "_CLFLINE.MODULENR AS MODEL,LG_" & GFirma & "_" & GDonem & "_CLFICHE.FICHENO AS NO, LG_" & GFirma & "_" & GDonem & "_CLFICHE.PROJECTREF AS PRO, LG_" & GFirma & "_" & GDonem & "_CLFLINE.CLIENTREF AS CARI,LG_" & GFirma & "_" & GDonem & "_CLFLINE.AMOUNT AS TUTAR, LG_" & GFirma & "_" & GDonem & "_CLFLINE.SIGN AS TIP " _
& " FROM LG_" & GFirma & "_" & GDonem & "_CLFICHE INNER JOIN LG_" & GFirma & "_" & GDonem & "_CLFLINE ON LG_" & GFirma & "_" & GDonem & "_CLFICHE.FICHENO = LG_" & GFirma & "_" & GDonem & "_CLFLINE.TRANNO AND LG_" & GFirma & "_" & GDonem & "_CLFICHE.trcode = LG_" & GFirma & "_" & GDonem & "_CLFLINE.trcode Where LG_" & GFirma & "_" & GDonem & "_CLFICHE.trcode <> 14 AND LG_" & GFirma & "_" & GDonem & "_CLFLINE.MODULENR=5 " _
& " Union All " _
& " SELECT 'KASA' AS ISLEM, LG_" & GFirma & "_" & GDonem & "_KSLINES.DATE_ AS TARIH, LG_" & GFirma & "_" & GDonem & "_CLFLINE.TRCODE AS TURU, LG_" & GFirma & "_" & GDonem & "_CLFLINE.MODULENR AS MODEL,LG_" & GFirma & "_" & GDonem & "_KSLINES.FICHENO AS NO, LG_" & GFirma & "_" & GDonem & "_KSLINES.PROJECTREF AS PRO, LG_" & GFirma & "_" & GDonem & "_CLFLINE.CLIENTREF AS CARI,LG_" & GFirma & "_" & GDonem & "_CLFLINE.AMOUNT AS TUTAR, LG_" & GFirma & "_" & GDonem & "_CLFLINE.SIGN AS TIP " _
& " FROM LG_" & GFirma & "_" & GDonem & "_KSLINES INNER JOIN LG_" & GFirma & "_" & GDonem & "_CLFLINE ON LG_" & GFirma & "_" & GDonem & "_KSLINES.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_CLFLINE.SOURCEFREF WHERE LG_" & GFirma & "_" & GDonem & "_CLFLINE.MODULENR=10 " _
& " Union All " _
& " SELECT 'CEK' AS ISLEM, LG_" & GFirma & "_" & GDonem & "_CLFLINE.DATE_ AS TARIH, LG_" & GFirma & "_" & GDonem & "_CLFLINE.TRCODE AS TURU, LG_" & GFirma & "_" & GDonem & "_CLFLINE.MODULENR AS MODEL, LG_" & GFirma & "_" & GDonem & "_CSROLL.ROLLNO AS NO, LG_" & GFirma & "_" & GDonem & "_CSROLL.PROJECTREF AS PRO, LG_" & GFirma & "_" & GDonem & "_CLFLINE.CLIENTREF AS CARI,LG_" & GFirma & "_" & GDonem & "_CLFLINE.AMOUNT AS TUTAR, LG_" & GFirma & "_" & GDonem & "_CLFLINE.SIGN AS TIP " _
& " FROM LG_" & GFirma & "_" & GDonem & "_CSROLL INNER JOIN LG_" & GFirma & "_" & GDonem & "_CLFLINE ON LG_" & GFirma & "_" & GDonem & "_CSROLL.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_CLFLINE.SOURCEFREF WHERE  LG_" & GFirma & "_" & GDonem & "_CLFLINE.MODULENR=6" _
& " Union All " _
& " SELECT 'BANK' AS ISLEM, LG_" & GFirma & "_" & GDonem & "_BNFICHE.DATE_ AS TARIH, LG_" & GFirma & "_" & GDonem & "_CLFLINE.TRCODE AS TURU, LG_" & GFirma & "_" & GDonem & "_CLFLINE.MODULENR AS MODEL,LG_" & GFirma & "_" & GDonem & "_BNFICHE.FICHENO AS NO, LG_" & GFirma & "_" & GDonem & "_BNFICHE.PROJECTREF AS PRO, LG_" & GFirma & "_" & GDonem & "_CLFLINE.CLIENTREF AS CARI,LG_" & GFirma & "_" & GDonem & "_CLFLINE.AMOUNT AS TUTAR, LG_" & GFirma & "_" & GDonem & "_CLFLINE.SIGN AS TIP " _
& " FROM LG_" & GFirma & "_" & GDonem & "_BNFICHE INNER JOIN LG_" & GFirma & "_" & GDonem & "_CLFLINE ON LG_" & GFirma & "_" & GDonem & "_BNFICHE.FICHENO = LG_" & GFirma & "_" & GDonem & "_CLFLINE.TRANNO INNER JOIN LG_" & GFirma & "_" & GDonem & "_BNFLINE ON LG_" & GFirma & "_" & GDonem & "_BNFICHE.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_BNFLINE.SOURCEFREF AND LG_" & GFirma & "_" & GDonem & "_CLFLINE.SOURCEFREF = LG_" & GFirma & "_" & GDonem & "_BNFLINE.LOGICALREF WHERE  LG_" & GFirma & "_" & GDonem & "_CLFLINE.MODULENR=7 "


'CnnMlMain.Execute "CREATE VIEW TAHSILAR WITH ENCRYPTION AS " & SQLSTR & TarihsTr & OzelsTr & GrupsTr & YetkisTr & StoksTr & SOzelsTr & SGrupsTr & SYetkisTr & SUretsTr & SIsosTr & SStoksTr & DurumTr
CnnMlMain.Execute "CREATE VIEW TAHSILAR WITH ENCRYPTION  AS " & SQLSTR '& TarihsTr & OzelsTr & GrupsTr & YetkisTr & StoksTr & SOzelsTr & SGrupsTr & SYetkisTr & SUretsTr & SIsosTr & SStoksTr & DurumTr
'CnnMlMain.Execute "CREATE VIEW MenaFSC AS " & sqlstr & TarihsTr & OzelsTr & GrupsTr & YetkisTr & StoksTr & SOzelsTr & SGrupsTr & SYetkisTr & SUretsTr & SIsosTr & SStoksTr & DurumTr
SQLSTR1 = "SELECT TAHSILAR.ISLEM, TAHSILAR.TARIH, TAHSILAR.TURU, TAHSILAR.MODEL, TAHSILAR.[NO], LG_" & GFirma & "_CLCARD.CODE,LG_" & GFirma & "_CLCARD.DEFINITION_ , TAHSILAR.TUTAR, TAHSILAR.TIP, LG_" & GFirma & "_PROJECT.Name " _
& " FROM LG_" & GFirma & "_CLCARD INNER JOIN TAHSILAR ON LG_" & GFirma & "_CLCARD.LOGICALREF = TAHSILAR.CARI INNER JOIN  LG_" & GFirma & "_PROJECT ON TAHSILAR.PRO = LG_" & GFirma & "_PROJECT.LOGICALREF"
CnnMlMain.Execute "CREATE VIEW TAHSILAT WITH ENCRYPTION  AS " & SQLSTR1 & TarihsTr & OzelsTr & GrupsTr & YetkisTr & DurumTr

Exit Sub
HATA:
If Err.Number = -2147217900 Then
   CnnMlMain.Execute "drop view TAHSILAR"
   CnnMlMain.Execute "drop view TAHSILAT"
   GoTo DUZENLE
Else
   MsgBox Err.Number
End If

End Sub
Sub SMaSraF()
On Error GoTo HATA

'Eleman_Ara

If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/" & Year(Date) Else ilktarih = dxDateEdit1
If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "31/12/" & Year(Date) Else sontarih = dxDateEdit2
TarihsTr = " and LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ >= '" & Format(ilktarih, "MM/DD/YY") & "' and LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ <= '" & Format(sontarih, "MM/DD/YY") & "'"

   
'If ElemanSrg <> "" Then DurumTr = " AND LG_" & GFirma & "_PROJECT.NAME IN " & ElemanSrg Else DurumTr = ""
   
DUZENLE:

SQLSTR = "SELECT LG_" & GFirma & "_SRVCARD.CODE, LG_" & GFirma & "_SRVCARD.DEFINITION_, LG_" & GFirma & "_" & GDonem & "_STLINE.TRCODE, LG_" & GFirma & "_" & GDonem & "_STLINE.DATE_,LG_" & GFirma & "_" & GDonem & "_INVOICE.FICHENO, LG_" & GFirma & "_" & GDonem & "_INVOICE.TRCODE AS Expr1, LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ AS Expr2,LG_" & GFirma & "_" & GDonem & "_STLINE.LINETYPE , LG_" & GFirma & "_" & GDonem & "_STLINE.LINENET, LG_" & GFirma & "_PROJECT.Name, LG_" & GFirma & "_" & GDonem & "_INVOICE.GENEXP1,LG_" & GFirma & "_" & GDonem & "_STLINE.AMOUNT,LG_" & GFirma & "_CLCARD.DEFINITION_ AS Expr4,LG_" & GFirma & "_CLCARD.code AS Expr5,LG_" & GFirma & "_" & GDonem & "_STLINE.LINEEXP FROM LG_" & GFirma & "_" & GDonem & "_STLINE INNER JOIN " _
& " LG_" & GFirma & "_SRVCARD ON LG_" & GFirma & "_" & GDonem & "_STLINE.STOCKREF = LG_" & GFirma & "_SRVCARD.LOGICALREF INNER JOIN LG_" & GFirma & "_" & GDonem & "_INVOICE ON LG_" & GFirma & "_" & GDonem & "_STLINE.INVOICEREF = LG_" & GFirma & "_" & GDonem & "_INVOICE.LOGICALREF INNER JOIN LG_" & GFirma & "_PROJECT ON LG_" & GFirma & "_" & GDonem & "_STLINE.PROJECTREF = LG_" & GFirma & "_PROJECT.LOGICALREF  LEFT OUTER JOIN  LG_" & GFirma & "_CLCARD ON LG_" & GFirma & "_" & GDonem & "_INVOICE.CLIENTREF = LG_" & GFirma & "_CLCARD.LOGICALREF where (LG_" & GFirma & "_" & GDonem & "_STLINE.LINETYPE = 4) And (LG_" & GFirma & "_" & GDonem & "_STLINE.trcode = 4)"

'CnnMlMain.Execute "CREATE VIEW TAHSILAR WITH ENCRYPTION AS " & SQLSTR & TarihsTr & OzelsTr & GrupsTr & YetkisTr & StoksTr & SOzelsTr & SGrupsTr & SYetkisTr & SUretsTr & SIsosTr & SStoksTr & DurumTr
CnnMlMain.Execute "CREATE VIEW MASRAF WITH ENCRYPTION AS " & SQLSTR & TarihsTr '& DurumTr

Exit Sub
HATA:
If Err.Number = -2147217900 Then
   CnnMlMain.Execute "drop view MASRAF"
   GoTo DUZENLE
Else
   MsgBox Err.Number
End If

End Sub
Sub SMaSraFElm()
On Error GoTo HATA

Eleman_Ara

If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/" & Year(Date) Else ilktarih = dxDateEdit1
If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "31/12/" & Year(Date) Else sontarih = dxDateEdit2
TarihsTr = " and LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ >= '" & Format(ilktarih, "MM/DD/YY") & "' and LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ <= '" & Format(sontarih, "MM/DD/YY") & "'"

   
If ElemanSrg <> "" Then DurumTr = " AND LG_" & GFirma & "_PROJECT.NAME IN " & ElemanSrg Else DurumTr = ""
   
DUZENLE:

SQLSTR = "SELECT LG_" & GFirma & "_SRVCARD.CODE, LG_" & GFirma & "_SRVCARD.DEFINITION_, LG_" & GFirma & "_" & GDonem & "_STLINE.TRCODE, LG_" & GFirma & "_" & GDonem & "_STLINE.DATE_,LG_" & GFirma & "_" & GDonem & "_INVOICE.FICHENO, LG_" & GFirma & "_" & GDonem & "_INVOICE.TRCODE AS Expr1, LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ AS Expr2,LG_" & GFirma & "_" & GDonem & "_STLINE.LINETYPE , LG_" & GFirma & "_" & GDonem & "_STLINE.LINENET, LG_" & GFirma & "_PROJECT.Name, LG_" & GFirma & "_" & GDonem & "_INVOICE.GENEXP1,LG_" & GFirma & "_" & GDonem & "_STLINE.AMOUNT,LG_" & GFirma & "_CLCARD.DEFINITION_ AS Expr4,LG_" & GFirma & "_CLCARD.code AS Expr5,LG_" & GFirma & "_" & GDonem & "_STLINE.LINEEXP  FROM LG_" & GFirma & "_" & GDonem & "_STLINE INNER JOIN " _
& " LG_" & GFirma & "_SRVCARD ON LG_" & GFirma & "_" & GDonem & "_STLINE.STOCKREF = LG_" & GFirma & "_SRVCARD.LOGICALREF INNER JOIN LG_" & GFirma & "_" & GDonem & "_INVOICE ON LG_" & GFirma & "_" & GDonem & "_STLINE.INVOICEREF = LG_" & GFirma & "_" & GDonem & "_INVOICE.LOGICALREF INNER JOIN LG_" & GFirma & "_PROJECT ON LG_" & GFirma & "_" & GDonem & "_STLINE.PROJECTREF = LG_" & GFirma & "_PROJECT.LOGICALREF  LEFT OUTER JOIN  LG_" & GFirma & "_CLCARD ON LG_" & GFirma & "_" & GDonem & "_INVOICE.CLIENTREF = LG_" & GFirma & "_CLCARD.LOGICALREF where (LG_" & GFirma & "_" & GDonem & "_STLINE.LINETYPE = 4) And (LG_" & GFirma & "_" & GDonem & "_STLINE.trcode = 4)"

'CnnMlMain.Execute "CREATE VIEW TAHSILAR WITH ENCRYPTION AS " & SQLSTR & TarihsTr & OzelsTr & GrupsTr & YetkisTr & StoksTr & SOzelsTr & SGrupsTr & SYetkisTr & SUretsTr & SIsosTr & SStoksTr & DurumTr
CnnMlMain.Execute "CREATE VIEW MASRAF WITH ENCRYPTION AS " & SQLSTR & TarihsTr & DurumTr

Exit Sub
HATA:
If Err.Number = -2147217900 Then
   CnnMlMain.Execute "drop view MASRAF"
   GoTo DUZENLE
Else
   MsgBox Err.Number
End If

End Sub

Sub SIcmal()
On Error GoTo HATA

If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/10" Else ilktarih = dxDateEdit1
If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "31/12/08" Else sontarih = dxDateEdit2
TarihsTr = " and ICMAL1.DATE_ = '" & Format(ilktarih, "MM/DD/YY") & "'"


DUZENLE:
SQLSTR = "SELECT ISLEM, DATE_, FICHENO, CARI_KODU, CARI, KODU, ADI, TUTAR From ICMAL1 WHERE ISLEM <> ''"

CnnMlMain.Execute "CREATE VIEW ICMAL1 WITH ENCRYPTION AS select ISLEM, DATE_, FICHENO, CARI_KODU, CARI, KODU, ADI, TUTAR From ICMAL WHERE ISLEM <> ''"
CnnMlMain.Execute "CREATE VIEW ICMAL2 WITH ENCRYPTION AS " & SQLSTR & TarihsTr

SIcmalCari
Exit Sub
HATA:
If Err.Number = -2147217900 Then
   CnnMlMain.Execute "drop view ICMAL1"
   CnnMlMain.Execute "drop view ICMAL2"
   GoTo DUZENLE
Else
   MsgBox Err.Number
End If

End Sub
Sub SIcmalCari()
On Error GoTo HATA

'If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/10" Else ilktarih = dxDateEdit1
If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "01/01/10"

If Len(dxPickEdit1(4).DisplayText) = 0 Then OzelsTr = "" Else OzelsTr = " and LG_" & GFirma & "_CLCARD.SPECODE = '" & Trim(dxPickEdit1(4)) & "'"
If Len(dxPickEdit1(6).DisplayText) = 0 Then YetkisTr = "" Else YetkisTr = " and LG_" & GFirma & "_CLCARD.CYPHCODE = '" & Trim(dxPickEdit1(6)) & "'"
If Len(dxPickEdit1(7).DisplayText) = 0 Then GrupsTr = "" Else GrupsTr = " and LG_" & GFirma & "_CLCARD.CITY = '" & Trim(dxPickEdit1(7)) & "'"
If Len(dxPickEdit1(9).DisplayText) = 0 Then IlcesTr = "" Else IlcesTr = " and LG_" & GFirma & "_CLCARD.TOWN = '" & Trim(dxPickEdit1(9)) & "'"
'RAPORA ETKIME BAÞLIYOR
TarihsTr = " where LG_" & GFirma & "_" & GDonem & "_CLFLINE.DATE_ >= '" & Format(sontarih, "MM/DD/YY") & "' AND LG_" & GFirma & "_" & GDonem & "_CLFLINE.DATE_ <= '" & Format(ilktarih, "MM/DD/YY") & "' "
   If Len(dxPickEdit1(8).DisplayText) = 0 Then
      StoKStr = ""
   Else
      If dxTextEdit1(3).Visible = False Then
         If dxPickEdit1(8) = "EÞÝT" Then
         JJ = dxPickEdit1(8)
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " and LG_" & GFirma & "_CLCARD.CODE = '" & dxTextEdit1(2) & "'"
         Else
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " AND LG_" & GFirma & "_CLCARD.CODE LIKE '" & dxTextEdit1(2) & "%" & "'"
         End If
      Else
         If dxPickEdit1(8) = "ARASI" Then
            StoKStr = " AND LG_" & GFirma & "_CLCARD.CODE >= '" & dxTextEdit1(2) & "' and LG_" & GFirma & "_CLCARD.CODE <= '" & dxTextEdit1(3) & "'"
         End If
      End If
   End If

    CnnMlMain.Execute "drop view BORCALC"
    CnnMlMain.Execute "drop view BAK"
    CnnMlMain.Execute "drop view BAK1"
    CnnMlMain.Execute "CREATE VIEW BORCALC WITH ENCRYPTION AS SELECT LG_" & GFirma & "_CLCARD.CODE, LG_" & GFirma & "_CLCARD.DEFINITION_, LG_" & GFirma & "_" & GDonem & "_CLFLINE.DATE_, LG_" & GFirma & "_" & GDonem & "_CLFLINE.SIGN,SUM(LG_" & GFirma & "_" & GDonem & "_CLFLINE.AMOUNT) As Expr1 FROM LG_" & GFirma & "_" & GDonem & "_CLFLINE INNER JOIN LG_" & GFirma & "_CLCARD ON LG_" & GFirma & "_" & GDonem & "_CLFLINE.CLIENTREF = LG_" & GFirma & "_CLCARD.LOGICALREF  " & TarihsTr & OzelsTr & YetkisTr & GrupsTr & IlcesTr & StoKStr & " GROUP BY LG_" & GFirma & "_CLCARD.CODE, LG_" & GFirma & "_CLCARD.DEFINITION_, LG_" & GFirma & "_" & GDonem & "_CLFLINE.DATE_, LG_" & GFirma & "_" & GDonem & "_CLFLINE.SIGN"
    CnnMlMain.Execute "CREATE VIEW BAK AS WITH ENCRYPTION SELECT CODE, DEFINITION_,SIGN,  [BORC] =CASE SIGN WHEN 0 THEN SUM(Expr1)ELSE 0 END,[ALACAK] =CASE SIGN WHEN 1 THEN SUM(Expr1) ELSE 0 END From BORCALC GROUP BY CODE, DEFINITION_,SIGN "
    CnnMlMain.Execute "CREATE VIEW BAK1 AS WITH ENCRYPTION SELECT CODE, DEFINITION_, SUM(BORC) AS Expr1, SUM(ALACAK) AS Expr2 From BAK GROUP BY CODE, DEFINITION_"
Exit Sub
HATA:
'MsgBox Err.Number & Err.Description
   Resume Next
   Exit Sub
End Sub
Sub SRGMenaSonAlSat()
On Error GoTo HATA

If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/10" Else ilktarih = dxDateEdit1
If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "31/12/08" Else sontarih = dxDateEdit2
TarihsTr = " and LG_" & GFirma & "_" & GDonem & "_STLINE.DATE_ >= '" & Format(ilktarih, "MM/DD/YY") & "' and LG_" & GFirma & "_" & GDonem & "_STLINE.DATE_ <= '" & Format(sontarih, "MM/DD/YY") & "'"

If Len(dxPickEdit1(4).DisplayText) = 0 Then OzelsTr = "" Else OzelsTr = " and LG_" & GFirma & "_CLCARD.SPECODE = '" & Trim(dxPickEdit1(4)) & "'"
If Len(dxPickEdit1(6).DisplayText) = 0 Then YetkisTr = "" Else YetkisTr = " and LG_" & GFirma & "_CLCARD.CYPHCODE = '" & Trim(dxPickEdit1(6)) & "'"
If Len(dxPickEdit1(7).DisplayText) = 0 Then GrupsTr = "" Else GrupsTr = " and LG_" & GFirma & "_CLCARD.CITY = '" & Trim(dxPickEdit1(7)) & "'"
If Len(dxPickEdit1(9).DisplayText) = 0 Then IlcesTr = "" Else IlcesTr = " and LG_" & GFirma & "_CLCARD.TOWN = '" & Trim(dxPickEdit1(9)) & "'"

If Len(dxPickEdit1(0).DisplayText) = 0 Then SOzelsTr = "" Else SOzelsTr = " and LG_" & GFirma & "_ITEMS.SPECODE = '" & Trim(dxPickEdit1(0)) & "'"
If Len(dxPickEdit1(1).DisplayText) = 0 Then SYetkisTr = "" Else SYetkisTr = " and LG_" & GFirma & "_ITEMS.CYPHCODE = '" & Trim(dxPickEdit1(1)) & "'"
If Len(dxPickEdit1(2).DisplayText) = 0 Then SGrupsTr = "" Else SGrupsTr = " and LG_" & GFirma & "_ITEMS.STGRPCODE = '" & Trim(dxPickEdit1(2)) & "'"
If Len(dxPickEdit1(5).DisplayText) = 0 Then SUretsTr = "" Else SUretsTr = " and LG_" & GFirma & "_ITEMS.PRODCOUNTRY = '" & Trim(dxPickEdit1(5)) & "'"
If Len(dxPickEdit1(10).DisplayText) = 0 Then SIsosTr = "" Else SIsosTr = " and LG_" & GFirma & "_ITEMS.ISONR = '" & Trim(dxPickEdit1(10)) & "'"
   
   If Len(dxPickEdit1(8).DisplayText) = 0 Then
      StoKStr = ""
   Else
      If dxTextEdit1(3).Visible = False Then
         If dxPickEdit1(8) = "EÞÝT" Then
         JJ = dxPickEdit1(8)
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " and LG_" & GFirma & "_CLCARD.CODE = '" & dxTextEdit1(2) & "'"
         Else
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " AND LG_" & GFirma & "_CLCARD.CODE LIKE '" & dxTextEdit1(2) & "%" & "'"
         End If
      Else
         If dxPickEdit1(8) = "ARASI" Then
            StoKStr = " AND LG_" & GFirma & "_CLCARD.CODE >= '" & dxTextEdit1(2) & "' and LG_" & GFirma & "_CLCARD.CODE <= '" & dxTextEdit1(3) & "'"
         End If
      End If
   End If

   If Len(dxPickEdit1(3).DisplayText) = 0 Then
      SStoksTr = ""
   Else
      If dxTextEdit1(1).Visible = False Then
         If dxPickEdit1(3) = "EÞÝT" Then
         JJ = dxPickEdit1(3)
            If Len(dxTextEdit1(0).DisplayText) = 0 Then SStoksTr = "" Else SStoksTr = " and LG_" & GFirma & "_ITEMS.CODE = '" & dxTextEdit1(0) & "'"
         Else
            If Len(dxTextEdit1(0).DisplayText) = 0 Then SStoksTr = "" Else SStoksTr = " AND LG_" & GFirma & "_ITEMS.CODE LIKE '" & dxTextEdit1(0) & "%" & "'"
         End If
      Else
         If dxPickEdit1(3) = "ARASI" Then
            SStoksTr = " AND LG_" & GFirma & "_ITEMS.CODE >= '" & dxTextEdit1(0) & "' and LG_" & GFirma & "_ITEMS.CODE <= '" & dxTextEdit1(1) & "'"
         End If
      End If
   End If

DUZENLE:
SQLSTR = "SELECT LG_" & GFirma & "_" & GDonem & "_STLINE.STOCKREF, LG_" & GFirma & "_" & GDonem & "_STLINE.TRCODE, LG_" & GFirma & "_" & GDonem & "_STLINE.DATE_, LG_" & GFirma & "_" & GDonem & "_STLINE.PRICE FROM LG_" & GFirma & "_" & GDonem & "_STLINE INNER JOIN " _
& " LG_" & GFirma & "_ITEMS ON LG_" & GFirma & "_" & GDonem & "_STLINE.STOCKREF = LG_" & GFirma & "_ITEMS.LOGICALREF INNER JOIN LG_" & GFirma & "_CLCARD ON LG_" & GFirma & "_" & GDonem & "_STLINE.CLIENTREF = LG_" & GFirma & "_CLCARD.LOGICALREF " _
& " WHERE (LG_" & GFirma & "_" & GDonem & "_STLINE.TRCODE = " & trcode & " or LG_" & GFirma & "_" & GDonem & "_STLINE.TRCODE = " & trcode1 & ") "

CnnMlMain.Execute "CREATE VIEW ALISSTOK WITH ENCRYPTION AS " & SQLSTR & TarihsTr & OzelsTr & GrupsTr & YetkisTr & StoKStr & SOzelsTr & SGrupsTr & SYetkisTr & SUretsTr & SIsosTr & SStoksTr

CnnMlMain.Execute "create view ALIS WITH ENCRYPTION as SELECT LG_" & GFirma & "_ITEMS.CODE, LG_" & GFirma & "_ITEMS.NAME, ALISSTOK.TRCODE, ALISSTOK.DATE_, ALISSTOK.PRICE FROM LG_" & GFirma & "_ITEMS INNER JOIN ALISSTOK ON LG_" & GFirma & "_ITEMS.LOGICALREF = ALISSTOK.STOCKREF"


Exit Sub
HATA:
If Err.Number = -2147217900 Then
   CnnMlMain.Execute "drop view ALISSTOK"
   CnnMlMain.Execute "drop view ALIS"
   GoTo DUZENLE
Else
   MsgBox Err.Number
End If

End Sub
Sub SMenaElemanSat()
On Error GoTo HATA
Eleman_Ara

If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/10" Else ilktarih = dxDateEdit1
If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "31/12/08" Else sontarih = dxDateEdit2
TarihsTr = " and LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ >= '" & Format(ilktarih, "MM/DD/YY") & "' and LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ <= '" & Format(sontarih, "MM/DD/YY") & "'"

If Len(dxPickEdit1(4).DisplayText) = 0 Then OzelsTr = "" Else OzelsTr = " and LG_" & GFirma & "_CLCARD.SPECODE = '" & Trim(dxPickEdit1(4)) & "'"
If Len(dxPickEdit1(6).DisplayText) = 0 Then YetkisTr = "" Else YetkisTr = " and LG_" & GFirma & "_CLCARD.CYPHCODE = '" & Trim(dxPickEdit1(6)) & "'"
If Len(dxPickEdit1(7).DisplayText) = 0 Then GrupsTr = "" Else GrupsTr = " and LG_" & GFirma & "_CLCARD.CITY = '" & Trim(dxPickEdit1(7)) & "'"
If Len(dxPickEdit1(9).DisplayText) = 0 Then IlcesTr = "" Else IlcesTr = " and LG_" & GFirma & "_CLCARD.TOWN = '" & Trim(dxPickEdit1(9)) & "'"

If Len(dxPickEdit1(0).DisplayText) = 0 Then SOzelsTr = "" Else SOzelsTr = " and LG_" & GFirma & "_ITEMS.SPECODE = '" & Trim(dxPickEdit1(0)) & "'"
If Len(dxPickEdit1(1).DisplayText) = 0 Then SYetkisTr = "" Else SYetkisTr = " and LG_" & GFirma & "_ITEMS.CYPHCODE = '" & Trim(dxPickEdit1(1)) & "'"
If Len(dxPickEdit1(2).DisplayText) = 0 Then SGrupsTr = "" Else SGrupsTr = " and LG_" & GFirma & "_ITEMS.STGRPCODE = '" & Trim(dxPickEdit1(2)) & "'"
If Len(dxPickEdit1(5).DisplayText) = 0 Then SUretsTr = "" Else SUretsTr = " and LG_" & GFirma & "_ITEMS.PRODCOUNTRY = '" & Trim(dxPickEdit1(5)) & "'"
If Len(dxPickEdit1(10).DisplayText) = 0 Then SIsosTr = "" Else SIsosTr = " and LG_" & GFirma & "_ITEMS.ISONR = '" & Trim(dxPickEdit1(10)) & "'"
   
If ElemanSrg <> "" Then DurumTr = "  AND LG_" & GFirma & "_PROJECT.NAME IN " & ElemanSrg Else DurumTr = ""
   
   If Len(dxPickEdit1(8).DisplayText) = 0 Then
      StoKStr = ""
   Else
      If dxTextEdit1(3).Visible = False Then
         If dxPickEdit1(8) = "EÞÝT" Then
         JJ = dxPickEdit1(8)
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " and LG_" & GFirma & "_CLCARD.CODE = '" & dxTextEdit1(2) & "'"
         Else
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " AND LG_" & GFirma & "_CLCARD.CODE LIKE '" & dxTextEdit1(2) & "%" & "'"
         End If
      Else
         If dxPickEdit1(8) = "ARASI" Then
            StoKStr = " AND LG_" & GFirma & "_CLCARD.CODE >= '" & dxTextEdit1(2) & "' and LG_" & GFirma & "_CLCARD.CODE <= '" & dxTextEdit1(3) & "'"
         End If
      End If
   End If

   If Len(dxPickEdit1(3).DisplayText) = 0 Then
      SStoksTr = ""
   Else
      If dxTextEdit1(1).Visible = False Then
         If dxPickEdit1(3) = "EÞÝT" Then
         JJ = dxPickEdit1(3)
            If Len(dxTextEdit1(0).DisplayText) = 0 Then SStoksTr = "" Else SStoksTr = " and LG_" & GFirma & "_ITEMS.CODE = '" & dxTextEdit1(0) & "'"
         Else
            If Len(dxTextEdit1(0).DisplayText) = 0 Then SStoksTr = "" Else SStoksTr = " AND LG_" & GFirma & "_ITEMS.CODE LIKE '" & dxTextEdit1(0) & "%" & "'"
         End If
      Else
         If dxPickEdit1(3) = "ARASI" Then
            SStoksTr = " AND LG_" & GFirma & "_ITEMS.CODE >= '" & dxTextEdit1(0) & "' and LG_" & GFirma & "_ITEMS.CODE <= '" & dxTextEdit1(1) & "'"
         End If
      End If
   End If
'SELECT LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_, LG_" & GFirma & "_" & GDonem & "_INVOICE.FICHENO, LG_" & GFirma & "_" & GDonem & "_INVOICE.TRCODE, LG_" & GFirma & "_CLCARD.CODE,LG_" & GFirma & "_CLCARD.DEFINITION_, LG_SLSMAN.CODE AS Expr1, LG_SLSMAN.DEFINITION_ AS Expr2, LG_" & GFirma & "_ITEMS.CODE AS Expr3, " _
& " LG_" & GFirma & "_ITEMS.NAME, LG_" & GFirma & "_" & GDonem & "_STLINE.AMOUNT, LG_" & GFirma & "_" & GDonem & "_STLINE.PRICE, LG_" & GFirma & "_" & GDonem & "_STLINE.TOTAL, LG_" & GFirma & "_" & GDonem & "_STLINE.DISTDISC , LG_" & GFirma & "_" & GDonem & "_STLINE.LINENET, LG_" & GFirma & "_" & GDonem & "_STLINE.LINETYPE FROM LG_" & GFirma & "_SLSCLREL INNER JOIN " _
& " LG_" & GFirma & "_CLCARD ON LG_" & GFirma & "_SLSCLREL.CLIENTREF = LG_" & GFirma & "_CLCARD.LOGICALREF INNER JOIN LG_" & GFirma & "_" & GDonem & "_INVOICE ON LG_" & GFirma & "_CLCARD.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_INVOICE.CLIENTREF INNER JOIN LG_SLSMAN ON LG_" & GFirma & "_SLSCLREL.SALESMANREF = LG_SLSMAN.LOGICALREF INNER JOIN " _
& " LG_" & GFirma & "_" & GDonem & "_STLINE ON LG_" & GFirma & "_" & GDonem & "_INVOICE.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_STLINE.INVOICEREF INNER JOIN  LG_" & GFirma & "_ITEMS ON LG_" & GFirma & "_" & GDonem & "_STLINE.STOCKREF = LG_" & GFirma & "_ITEMS.LOGICALREF WHERE (LG_" & GFirma & "_" & GDonem & "_INVOICE.TRCODE = 8) AND (LG_" & GFirma & "_" & GDonem & "_STLINE.LINETYPE = 0) OR " _
& " (LG_" & GFirma & "_" & GDonem & "_INVOICE.TRCODE = 3) AND (LG_" & GFirma & "_" & GDonem & "_STLINE.LINETYPE = 0)
DUZENLE:
SQLSTR = "SELECT LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_, LG_" & GFirma & "_" & GDonem & "_INVOICE.FICHENO, LG_" & GFirma & "_" & GDonem & "_INVOICE.TRCODE,LG_" & GFirma & "_" & GDonem & "_STLINE.VATAMNT, LG_" & GFirma & "_CLCARD.CODE,LG_" & GFirma & "_CLCARD.DEFINITION_, LG_" & GFirma & "_ITEMS.CODE AS Expr3, " _
& " LG_" & GFirma & "_ITEMS.NAME, LG_" & GFirma & "_" & GDonem & "_STLINE.AMOUNT, LG_" & GFirma & "_" & GDonem & "_STLINE.PRICE, LG_" & GFirma & "_" & GDonem & "_STLINE.TOTAL, LG_" & GFirma & "_" & GDonem & "_STLINE.DISTDISC , LG_" & GFirma & "_" & GDonem & "_STLINE.LINENET, LG_" & GFirma & "_" & GDonem & "_STLINE.LINETYPE,LG_" & GFirma & "_CLCARD.CYPHCODE,LG_" & GFirma & "_CLCARD.CITY ,LG_" & GFirma & "_PROJECT.NAME AS Expr1 FROM LG_" & GFirma & "_CLCARD INNER JOIN " _
& " LG_" & GFirma & "_" & GDonem & "_INVOICE ON LG_" & GFirma & "_CLCARD.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_INVOICE.CLIENTREF INNER JOIN " _
& " LG_" & GFirma & "_" & GDonem & "_STLINE ON LG_" & GFirma & "_" & GDonem & "_INVOICE.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_STLINE.INVOICEREF INNER JOIN  LG_" & GFirma & "_ITEMS ON LG_" & GFirma & "_" & GDonem & "_STLINE.STOCKREF = LG_" & GFirma & "_ITEMS.LOGICALREF INNER JOIN  LG_" & GFirma & "_PROJECT ON LG_" & GFirma & "_" & GDonem & "_INVOICE.PROJECTREF = LG_" & GFirma & "_PROJECT.LOGICALREF WHERE (LG_" & GFirma & "_" & GDonem & "_INVOICE.TRCODE in(8,3,7,2)) AND (LG_" & GFirma & "_" & GDonem & "_STLINE.LINETYPE = 0) AND LG_" & GFirma & "_" & GDonem & "_INVOICE.CANCELLED=0  "

'CnnMlMain.Execute "CREATE VIEW MENAELEMANBAZLISATIS  AS " & sqlstr & TarihsTr & OzelsTr & GrupsTr & YetkisTr & StoksTr & SOzelsTr & SGrupsTr & SYetkisTr & SUretsTr & SIsosTr & SStoksTr & DurumTr
CnnMlMain.Execute "CREATE VIEW MENAELEMANBAZLISATIS WITH ENCRYPTION AS " & SQLSTR & TarihsTr & OzelsTr & GrupsTr & YetkisTr & StoKStr & SOzelsTr & SGrupsTr & SYetkisTr & SUretsTr & SIsosTr & SStoksTr & DurumTr

Exit Sub
HATA:
If Err.Number = -2147217900 Then
   CnnMlMain.Execute "drop view MENAELEMANBAZLISATIS"
   GoTo DUZENLE
Else
   MsgBox Err.Number
End If

End Sub

Sub SRGMenaStokFiyat()
On Error GoTo HATA

If Len(dxPickEdit1(0).DisplayText) = 0 Then SOzelsTr = "" Else SOzelsTr = " and LG_" & GFirma & "_ITEMS.SPECODE = '" & Trim(dxPickEdit1(0)) & "'"
If Len(dxPickEdit1(1).DisplayText) = 0 Then SYetkisTr = "" Else SYetkisTr = " and LG_" & GFirma & "_ITEMS.CYPHCODE = '" & Trim(dxPickEdit1(1)) & "'"
If Len(dxPickEdit1(2).DisplayText) = 0 Then SGrupsTr = "" Else SGrupsTr = " and LG_" & GFirma & "_ITEMS.STGRPCODE = '" & Trim(dxPickEdit1(2)) & "'"
If Len(dxPickEdit1(5).DisplayText) = 0 Then SUretsTr = "" Else SUretsTr = " and LG_" & GFirma & "_ITEMS.PRODCOUNTRY = '" & Trim(dxPickEdit1(5)) & "'"
If Len(dxPickEdit1(10).DisplayText) = 0 Then SIsosTr = "" Else SIsosTr = " and LG_" & GFirma & "_ITEMS.ISONR = '" & Trim(dxPickEdit1(10)) & "'"
   

   If Len(dxPickEdit1(3).DisplayText) = 0 Then
      SStoksTr = ""
   Else
      If dxTextEdit1(1).Visible = False Then
         If dxPickEdit1(3) = "EÞÝT" Then
         JJ = dxPickEdit1(3)
            If Len(dxTextEdit1(0).DisplayText) = 0 Then SStoksTr = "" Else SStoksTr = " and LG_" & GFirma & "_ITEMS.CODE = '" & dxTextEdit1(0) & "'"
         Else
            If Len(dxTextEdit1(0).DisplayText) = 0 Then SStoksTr = "" Else SStoksTr = " AND LG_" & GFirma & "_ITEMS.CODE LIKE '" & dxTextEdit1(0) & "%" & "'"
         End If
      Else
         If dxPickEdit1(3) = "ARASI" Then
            SStoksTr = " AND LG_" & GFirma & "_ITEMS.CODE >= '" & dxTextEdit1(0) & "' and LG_" & GFirma & "_ITEMS.CODE <= '" & dxTextEdit1(1) & "'"
         End If
      End If
   End If
DUZENLE:
SQLSTR = "SELECT LG_" & GFirma & "_ITEMS.STGRPCODE,LG_" & GFirma & "_ITEMS.SPECODE,LG_" & GFirma & "_ITEMS.CODE, LG_" & GFirma & "_ITEMS.NAME, LG_" & GFirma & "_PRCLIST.PRICE, LG_" & GFirma & "_UNITSETL.CODE AS Expr1,LG_" & GFirma & "_PRCLIST.INCVAT , LG_" & GFirma & "_PRCLIST.PRIORITY, LG_" & GFirma & "_PRCLIST.PTYPE, CRL.CURCODE " _
& " FROM LG_" & GFirma & "_ITEMS INNER JOIN LG_" & GFirma & "_PRCLIST ON LG_" & GFirma & "_ITEMS.LOGICALREF = LG_" & GFirma & "_PRCLIST.CARDREF INNER JOIN LG_" & GFirma & "_UNITSETL ON LG_" & GFirma & "_PRCLIST.UOMREF = LG_" & GFirma & "_UNITSETL.LOGICALREF INNER JOIN L_CURRENCYLIST AS CRL ON LG_" & GFirma & "_PRCLIST.CURRENCY=CRL.CURTYPE where LG_" & GFirma & "_PRCLIST.PTYPE = " & trcode & " AND CRL.FIRMNR=" & GFirma & ""

CnnMlMain.Execute "CREATE VIEW MENASTOKFIYAT WITH ENCRYPTION AS " & SQLSTR & OzelsTr & GrupsTr & YetkisTr & StoKStr & SOzelsTr & SGrupsTr & SYetkisTr & SUretsTr & SIsosTr & SStoksTr

Exit Sub
HATA:
If Err.Number = -2147217900 Then
   CnnMlMain.Execute "drop view MENASTOKFIYAT"
   GoTo DUZENLE
Else
   MsgBox Err.Number
End If

End Sub

Sub SRGCari()
On Error GoTo HATA

If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/10" Else ilktarih = dxDateEdit1
If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "31/12/08" Else sontarih = dxDateEdit2
TarihsTr = " and LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ >= '" & Format(ilktarih, "MM/DD/YY") & "' and LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ <= '" & Format(sontarih, "MM/DD/YY") & "'"

If Len(dxPickEdit1(4).DisplayText) = 0 Then OzelsTr = "" Else OzelsTr = " and LG_" & GFirma & "_CLCARD.SPECODE = '" & Trim(dxPickEdit1(4)) & "'"
If Len(dxPickEdit1(6).DisplayText) = 0 Then YetkisTr = "" Else YetkisTr = " and LG_" & GFirma & "_CLCARD.CYPHCODE = '" & Trim(dxPickEdit1(6)) & "'"
If Len(dxPickEdit1(7).DisplayText) = 0 Then GrupsTr = "" Else GrupsTr = " and LG_" & GFirma & "_CLCARD.CITY = '" & Trim(dxPickEdit1(7)) & "'"
If Len(dxPickEdit1(9).DisplayText) = 0 Then IlcesTr = "" Else IlcesTr = " and LG_" & GFirma & "_CLCARD.TOWN = '" & Trim(dxPickEdit1(9)) & "'"

If Len(dxPickEdit1(0).DisplayText) = 0 Then SOzelsTr = "" Else SOzelsTr = " and LG_" & GFirma & "_ITEMS.SPECODE = '" & Trim(dxPickEdit1(0)) & "'"
If Len(dxPickEdit1(1).DisplayText) = 0 Then SYetkisTr = "" Else SYetkisTr = " and LG_" & GFirma & "_ITEMS.CYPHCODE = '" & Trim(dxPickEdit1(1)) & "'"
If Len(dxPickEdit1(2).DisplayText) = 0 Then SGrupsTr = "" Else SGrupsTr = " and LG_" & GFirma & "_ITEMS.STGRPCODE = '" & Trim(dxPickEdit1(2)) & "'"
If Len(dxPickEdit1(5).DisplayText) = 0 Then SUretsTr = "" Else SUretsTr = " and LG_" & GFirma & "_ITEMS.PRODCOUNTRY = '" & Trim(dxPickEdit1(5)) & "'"
If Len(dxPickEdit1(10).DisplayText) = 0 Then SIsosTr = "" Else SIsosTr = " and LG_" & GFirma & "_ITEMS.ISONR = '" & Trim(dxPickEdit1(10)) & "'"
   
   If Len(dxPickEdit1(8).DisplayText) = 0 Then
      StoKStr = ""
   Else
      If dxTextEdit1(3).Visible = False Then
         If dxPickEdit1(8) = "EÞÝT" Then
         JJ = dxPickEdit1(8)
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " and LG_" & GFirma & "_CLCARD.CODE = '" & dxTextEdit1(2) & "'"
         Else
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " AND LG_" & GFirma & "_CLCARD.CODE LIKE '" & dxTextEdit1(2) & "%" & "'"
         End If
      Else
         If dxPickEdit1(8) = "ARASI" Then
            StoKStr = " AND LG_" & GFirma & "_CLCARD.CODE >= '" & dxTextEdit1(2) & "' and LG_" & GFirma & "_CLCARD.CODE <= '" & dxTextEdit1(3) & "'"
         End If
      End If
   End If

   If Len(dxPickEdit1(3).DisplayText) = 0 Then
      SStoksTr = ""
   Else
      If dxTextEdit1(1).Visible = False Then
         If dxPickEdit1(3) = "EÞÝT" Then
         JJ = dxPickEdit1(3)
            If Len(dxTextEdit1(0).DisplayText) = 0 Then SStoksTr = "" Else SStoksTr = " and LG_" & GFirma & "_ITEMS.CODE = '" & dxTextEdit1(0) & "'"
         Else
            If Len(dxTextEdit1(0).DisplayText) = 0 Then SStoksTr = "" Else SStoksTr = " AND LG_" & GFirma & "_ITEMS.CODE LIKE '" & dxTextEdit1(0) & "%" & "'"
         End If
      Else
         If dxPickEdit1(3) = "ARASI" Then
            SStoksTr = " AND LG_" & GFirma & "_ITEMS.CODE >= '" & dxTextEdit1(0) & "' and LG_" & GFirma & "_ITEMS.CODE <= '" & dxTextEdit1(1) & "'"
         End If
      End If
   End If

DUZENLE:
SQLSTR = "SELECT LG_" & GFirma & "_CLCARD.CODE AS CariKodu, LG_" & GFirma & "_CLCARD.DEFINITION_ AS CariAdi, LG_" & GFirma & "_CLCARD.SPECODE AS CariOzel, LG_" & GFirma & "_CLCARD.CYPHCODE AS CariYetki, LG_" & GFirma & "_CLCARD.CITY AS CariSehir, LG_" & GFirma & "_" & GDonem & "_INVOICE.GRPCODE AS FGrup, LG_" & GFirma & "_" & GDonem & "_INVOICE.TRCODE AS FTipi, LG_" & GFirma & "_" & GDonem & "_INVOICE.FICHENO AS FFisNo, LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ AS FTarih, LG_" & GFirma & "_ITEMS.CODE AS StokKodu, LG_" & GFirma & "_ITEMS.NAME AS StokAdi, LG_" & GFirma & "_ITEMS.FREIGHTPLACE AS f0, LG_" & GFirma & "_ITEMS.FREIGHTTYPCODE1 AS f1, LG_" & GFirma & "_ITEMS.FREIGHTTYPCODE2 AS f2, LG_" & GFirma & "_ITEMS.FREIGHTTYPCODE3 AS f3," _
& " LG_" & GFirma & "_ITEMS.FREIGHTTYPCODE4 AS f4, LG_" & GFirma & "_ITEMS.FREIGHTTYPCODE5 AS f5, LG_" & GFirma & "_ITEMS.FREIGHTTYPCODE6 AS f6, LG_" & GFirma & "_ITEMS.FREIGHTTYPCODE7 AS f7, LG_" & GFirma & "_ITEMS.FREIGHTTYPCODE8 AS f8, LG_" & GFirma & "_ITEMS.FREIGHTTYPCODE9 AS f9, LG_" & GFirma & "_ITEMS.FREIGHTTYPCODE10 AS f10, LG_" & GFirma & "_" & GDonem & "_STLINE.AMOUNT AS Miktar, LG_" & GFirma & "_" & GDonem & "_STLINE.PRICE AS BFiyati, LG_" & GFirma & "_" & GDonem & "_STLINE.TOTAL AS Toplam, LG_" & GFirma & "_" & GDonem & "_STLINE.VATINC AS KDVDahil, LG_" & GFirma & "_" & GDonem & "_STLINE.VAT AS KDVOrani, LG_" & GFirma & "_" & GDonem & "_STLINE.VATAMNT AS KDVTutari, LG_" & GFirma & "_" & GDonem & "_STLINE.VATMATRAH AS KDVliTutar, LG_" & GFirma & "_" & GDonem & "_STLINE.LINENET AS NetTutar,LG_" & GFirma & "_" & GDonem & "_STLINE.DISTDISC " _
& " FROM LG_" & GFirma & "_" & GDonem & "_INVOICE INNER JOIN LG_" & GFirma & "_CLCARD ON LG_" & GFirma & "_" & GDonem & "_INVOICE.CLIENTREF = LG_" & GFirma & "_CLCARD.LOGICALREF INNER JOIN LG_" & GFirma & "_" & GDonem & "_STLINE ON LG_" & GFirma & "_" & GDonem & "_INVOICE.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_STLINE.INVOICEREF INNER JOIN LG_" & GFirma & "_ITEMS ON LG_" & GFirma & "_" & GDonem & "_STLINE.STOCKREF = LG_" & GFirma & "_ITEMS.LOGICALREF " _
& "Where (LG_" & GFirma & "_CLCARD.ACTIVE = 0) And (LG_" & GFirma & "_" & GDonem & "_INVOICE.CANCELLED = 0)"

'CnnMlMain.Execute "CREATE VIEW AMenaCariSatis  AS " & sqlstr & TarihsTr & OzelsTr & GrupsTr & YetkisTr & IlcesTr & StoksTr & SOzelsTr & SGrupsTr & SYetkisTr & SUretsTr & SIsosTr & SStoksTr
CnnMlMain.Execute "CREATE VIEW AMenaCariSatis WITH ENCRYPTION AS " & SQLSTR & TarihsTr & OzelsTr & GrupsTr & YetkisTr & IlcesTr & StoKStr & SOzelsTr & SGrupsTr & SYetkisTr & SUretsTr & SIsosTr & SStoksTr

Exit Sub
HATA:
If Err.Number = -2147217900 Then
   CnnMlMain.Execute "drop view AMenaCariSatis"
   GoTo DUZENLE
Else
   MsgBox Err.Number
End If

End Sub
Sub SSiparis()
On Error GoTo HATA

If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/10" Else ilktarih = dxDateEdit1
If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "31/12/08" Else sontarih = dxDateEdit2
TarihsTr = " AND LG_" & GFirma & "_" & GDonem & "_ORFLINE.DATE_ >= '" & Format(ilktarih, "MM/DD/YY") & "' and LG_" & GFirma & "_" & GDonem & "_ORFLINE.DATE_ <= '" & Format(sontarih, "MM/DD/YY") & "'"

If Len(dxPickEdit1(4).DisplayText) = 0 Then OzelsTr = "" Else OzelsTr = " and LG_" & GFirma & "_CLCARD.SPECODE = '" & Trim(dxPickEdit1(4)) & "'"
If Len(dxPickEdit1(6).DisplayText) = 0 Then YetkisTr = "" Else YetkisTr = " and LG_" & GFirma & "_CLCARD.CYPHCODE = '" & Trim(dxPickEdit1(6)) & "'"
If Len(dxPickEdit1(7).DisplayText) = 0 Then GrupsTr = "" Else GrupsTr = " and LG_" & GFirma & "_CLCARD.CITY = '" & Trim(dxPickEdit1(7)) & "'"
If Len(dxPickEdit1(9).DisplayText) = 0 Then IlcesTr = "" Else IlcesTr = " and LG_" & GFirma & "_CLCARD.TOWN = '" & Trim(dxPickEdit1(9)) & "'"

If Len(dxPickEdit1(0).DisplayText) = 0 Then SOzelsTr = "" Else SOzelsTr = " and LG_" & GFirma & "_ITEMS.SPECODE = '" & Trim(dxPickEdit1(0)) & "'"
If Len(dxPickEdit1(1).DisplayText) = 0 Then SYetkisTr = "" Else SYetkisTr = " and LG_" & GFirma & "_ITEMS.CYPHCODE = '" & Trim(dxPickEdit1(1)) & "'"
If Len(dxPickEdit1(2).DisplayText) = 0 Then SGrupsTr = "" Else SGrupsTr = " and LG_" & GFirma & "_ITEMS.STGRPCODE = '" & Trim(dxPickEdit1(2)) & "'"
If Len(dxPickEdit1(5).DisplayText) = 0 Then SUretsTr = "" Else SUretsTr = " and LG_" & GFirma & "_ITEMS.PRODCOUNTRY = '" & Trim(dxPickEdit1(5)) & "'"
If Len(dxPickEdit1(10).DisplayText) = 0 Then SIsosTr = "" Else SIsosTr = " and LG_" & GFirma & "_ITEMS.ISONR = '" & Trim(dxPickEdit1(10)) & "'"
   
   If Len(dxPickEdit1(8).DisplayText) = 0 Then
      StoKStr = ""
   Else
      If dxTextEdit1(3).Visible = False Then
         If dxPickEdit1(8) = "EÞÝT" Then
         JJ = dxPickEdit1(8)
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " and LG_" & GFirma & "_CLCARD.CODE = '" & dxTextEdit1(2) & "'"
         Else
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " AND LG_" & GFirma & "_CLCARD.CODE LIKE '" & dxTextEdit1(2) & "%" & "'"
         End If
      Else
         If dxPickEdit1(8) = "ARASI" Then
            StoKStr = " AND LG_" & GFirma & "_CLCARD.CODE >= '" & dxTextEdit1(2) & "' and LG_" & GFirma & "_CLCARD.CODE <= '" & dxTextEdit1(3) & "'"
         End If
      End If
   End If

   If Len(dxPickEdit1(3).DisplayText) = 0 Then
      SStoksTr = ""
   Else
      If dxTextEdit1(1).Visible = False Then
         If dxPickEdit1(3) = "EÞÝT" Then
         JJ = dxPickEdit1(3)
            If Len(dxTextEdit1(0).DisplayText) = 0 Then SStoksTr = "" Else SStoksTr = " and LG_" & GFirma & "_ITEMS.CODE = '" & dxTextEdit1(0) & "'"
         Else
            If Len(dxTextEdit1(0).DisplayText) = 0 Then SStoksTr = "" Else SStoksTr = " AND LG_" & GFirma & "_ITEMS.CODE LIKE '" & dxTextEdit1(0) & "%" & "'"
         End If
      Else
         If dxPickEdit1(3) = "ARASI" Then
            SStoksTr = " AND LG_" & GFirma & "_ITEMS.CODE >= '" & dxTextEdit1(0) & "' and LG_" & GFirma & "_ITEMS.CODE <= '" & dxTextEdit1(1) & "'"
         End If
      End If
   End If

DUZENLE:
    CnnMlMain.Execute "CREATE VIEW MenaSiparis WITH ENCRYPTION AS SELECT LG_" & GFirma & "_ITEMS.CODE, LG_" & GFirma & "_ITEMS.NAME, LG_" & GFirma & "_CLCARD.CODE AS CARI, LG_" & GFirma & "_CLCARD.DEFINITION_,LG_" & GFirma & "_01_ORFLINE.TRCODE, LG_" & GFirma & "_01_ORFLINE.DATE_, SUM(LG_" & GFirma & "_" & GDonem & "_ORFLINE.AMOUNT) AS AMOUNT, LG_" & GFirma & "_" & GDonem & "_ORFLINE.SHIPPEDAMOUNT " _
    & " FROM LG_" & GFirma & "_ITEMS INNER JOIN LG_" & GFirma & "_" & GDonem & "_ORFLINE ON LG_" & GFirma & "_ITEMS.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_ORFLINE.STOCKREF INNER JOIN  LG_" & GFirma & "_CLCARD ON LG_" & GFirma & "_" & GDonem & "_ORFLINE.CLIENTREF = LG_" & GFirma & "_CLCARD.LOGICALREF WHERE LG_" & GFirma & "_" & GDonem & "_ORFLINE.trcodE= " & trcode & " " & SQLSTR & TarihsTr & OzelsTr & GrupsTr & YetkisTr & IlcesTr & StoKStr & SOzelsTr & SGrupsTr & SYetkisTr & SUretsTr & SIsosTr & SStoksTr _
    & " GROUP BY LG_" & GFirma & "_ITEMS.CODE, LG_" & GFirma & "_ITEMS.NAME, LG_" & GFirma & "_CLCARD.CODE, LG_" & GFirma & "_CLCARD.DEFINITION_, " _
    & " LG_" & GFirma & "_" & GDonem & "_ORFLINE.trcode , LG_" & GFirma & "_" & GDonem & "_ORFLINE.DATE_, LG_" & GFirma & "_" & GDonem & "_ORFLINE.SHIPPEDAMOUNT"

Exit Sub
HATA:
If Err.Number = -2147217900 Then
   CnnMlMain.Execute "drop view MenaSiparis"
   GoTo DUZENLE
Else
   MsgBox Err.Number
End If

End Sub

Sub SOdeme()
On Error GoTo HATA

DuruM_Ara

If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/10" Else ilktarih = dxDateEdit1
If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "31/12/08" Else sontarih = dxDateEdit2

If Len(dxPickEdit1(4).DisplayText) = 0 Then OzelsTr = "" Else OzelsTr = " and LG_" & GFirma & "_CLCARD.SPECODE = '" & Trim(dxPickEdit1(4)) & "'"
If Len(dxPickEdit1(6).DisplayText) = 0 Then YetkisTr = "" Else YetkisTr = " and LG_" & GFirma & "_CLCARD.CYPHCODE = '" & Trim(dxPickEdit1(6)) & "'"
If Len(dxPickEdit1(7).DisplayText) = 0 Then GrupsTr = "" Else GrupsTr = " and LG_" & GFirma & "_CLCARD.CITY = '" & Trim(dxPickEdit1(7)) & "'"
If Len(dxPickEdit1(9).DisplayText) = 0 Then IlcesTr = "" Else IlcesTr = " and LG_" & GFirma & "_CLCARD.TOWN = '" & Trim(dxPickEdit1(9)) & "'"

DurumTr = " AND CURRSTAT IN " & KasaSrg

'RAPORA ETKIME BAÞLIYOR
TarihsTr = " AND DUEDATE >= '" & Format(ilktarih, "MM/DD/YY") & "' AND DUEDATE <= '" & Format(sontarih, "MM/DD/YY") & "' "
'TarihsTr = " AND BT.DATE_ >= '" & Format(ilktarih, "MM/DD/YY") & "' AND BT.DATE_ <= '" & Format(sontarih, "MM/DD/YY") & "' "
   If Len(dxPickEdit1(8).DisplayText) = 0 Then
      StoKStr = ""
   Else
      If dxTextEdit1(1).Visible = False Then
         If dxPickEdit1(8) = "EÞÝT" Then
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " and CARI.CODE = '" & dxTextEdit1(2) & "'"
         Else
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " AND CARI.CODE LIKE '" & dxTextEdit1(2) & "*" & "'"
         End If
      Else
         If dxPickEdit1(8) = "ARASI" Then
            StoKStr = " AND CARI.CODE >= '" & dxTextEdit1(2) & "' and CARI.CODE <= '" & dxTextEdit1(3) & "'"
         End If
      End If
   End If

   CnnMlMain.Execute "drop view ODEME"
   
   If Len(dxPickEdit1(5).DisplayText) = 0 Then SDuruMu = "" Else SDuruMu = " and CARI.ACTIVE = " & Val(dxPickEdit1(5).DisplayText)
CnnMlMain.Execute "CREATE VIEW ODEME  WITH ENCRYPTION AS SELECT DUEDATE, OWING, DOC, BANKNAME, PORTFOYNO, CURRSTAT , AMOUNT From LG_" & GFirma & "_" & GDonem & "_CSCARD where LOGICALREF <> 0 " & TarihsTr & DurumTr
'WITH ENCRYPTION
'   CnnMlMain.Execute "CREATE VIEW ODEME  AS SELECT CARI.CODE AS [Cari Hesap Kodu], CARI.DEFINITION_ AS [Cari Hesap Adi], CS.BANKNAME,CURRSTAT,[TURU] = CASE MODULENR WHEN 4 THEN 'FATURA' WHEN 5 THEN 'CARI' WHEN 6 THEN 'CEK' WHEN 7 THEN 'BANKA' WHEN 10 THEN 'KASA' END, [TURU2] = CASE BT.TRCODE WHEN 1 THEN 'CEK' WHEN 2 THEN 'SENET' WHEN 3 THEN 'CEK' WHEN 4 THEN 'SENET' END,[B/A] = CASE SIGN WHEN 0 THEN 'ÖDEME' WHEN 1 THEN 'TAHSILAT' END, (CASE WHEN BT.MODULENR = 4 THEN (SELECT FICHENO From LG_" & GFirma & "_" & GDonem & "_INVOICE WHERE LG_" & GFirma & "_" & GDonem & "_INVOICE.LOGICALREF = BT.FICHEREF) WHEN BT.MODULENR = 7 THEN " _
'   & " (SELECT TRANNO From LG_" & GFirma & "_" & GDonem & "_BNFLINE WHERE LG_" & GFirma & "_" & GDonem & "_BNFLINE.LOGICALREF = BT.FICHEREF) WHEN BT.MODULENR = 10 THEN (SELECT FICHENO From LG_" & GFirma & "_" & GDonem & "_KSLINES WHERE LG_" & GFirma & "_" & GDonem & "_KSLINES.LOGICALREF = BT.FICHEREF) WHEN BT.MODULENR = 6 THEN (SELECT PORTFOYNO FROM LG_" & GFirma & "_" & GDonem & "_CSTRANS CSTRANS, LG_" & GFirma & "_" & GDonem & "_CSCARD CSCARD WHERE(CSTRANS.CSREF = CSCARD.LOGICALREF) AND CSTRANS.LOGICALREF = BT.FICHELINEREF) WHEN BT.MODULENR IN (5, 61, 62) " _
'   & " THEN (SELECT TRANNO From LG_" & GFirma & "_" & GDonem & "_CLFLINE WHERE LG_" & GFirma & "_" & GDonem & "_CLFLINE.LOGICALREF = BT.FICHEREF) ELSE '0' END) AS [Fis No], BT.DATE_ AS [Vade Tarihi], GETDATE() AS BUGUN,CONVERT(INT, BT.DATE_ - GETDATE()) + 1 AS GUN, TOPLAM = SUM(BT.TOTAL), ODENEN = SUM(BT.PAID) " _
'   & " FROM LG_" & GFirma & "_" & GDonem & "_PAYTRANS BT(NOLOCK), LG_" & GFirma & "_CLCARD CARI(NOLOCK),LG_" & GFirma & "_" & GDonem & "_CSCARD CS(NOLOCK), LG_" & GFirma & "_" & GDonem & "_CSTRANS CT(NOLOCK),LG_" & GFirma & "_" & GDonem & "_CSROLL CR(NOLOCK) " _
'   & " Where (BT.CARDREF = CARI.LOGICALREF) AND (CT.LOGICALREF = BT.FICHELINEREF) AND (CS.LOGICALREF = CT.CSREF) AND (CR.LOGICALREF = CT.ROLLREF)And PAIDINCASH = 0 AND BT.MODULENR = 6 " & TarihsTr & OzelsTr & YetkisTr & GrupsTr & StoksTr & IlcesTr & DurumTr _
'   & " GROUP BY CARI.CODE, CARI.DEFINITION_,BT.FICHEREF, BT.MODULENR, BT.FICHELINEREF, BT.TRCODE,BT.DATE_, SIGN,CS.BANKNAME,CURRSTAT"

   Exit Sub
HATA:
'MsgBox Err.Number & Err.Description
   Resume Next
   Exit Sub
End Sub
Sub SBorcAlacak()
On Error GoTo HATA

If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/10" Else ilktarih = dxDateEdit1
If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "31/12/08" Else sontarih = dxDateEdit2

If Len(dxPickEdit1(4).DisplayText) = 0 Then OzelsTr = "" Else OzelsTr = " and LG_" & GFirma & "_CLCARD.SPECODE = '" & Trim(dxPickEdit1(4)) & "'"
If Len(dxPickEdit1(6).DisplayText) = 0 Then YetkisTr = "" Else YetkisTr = " and LG_" & GFirma & "_CLCARD.CYPHCODE = '" & Trim(dxPickEdit1(6)) & "'"
If Len(dxPickEdit1(7).DisplayText) = 0 Then GrupsTr = "" Else GrupsTr = " and LG_" & GFirma & "_CLCARD.CITY = '" & Trim(dxPickEdit1(7)) & "'"
If Len(dxPickEdit1(9).DisplayText) = 0 Then IlcesTr = "" Else IlcesTr = " and LG_" & GFirma & "_CLCARD.TOWN = '" & Trim(dxPickEdit1(9)) & "'"
'RAPORA ETKIME BAÞLIYOR
TarihsTr = " where LG_" & GFirma & "_" & GDonem & "_CLFLINE.DATE_ >= '" & Format(ilktarih, "MM/DD/YY") & "' AND LG_" & GFirma & "_" & GDonem & "_CLFLINE.DATE_ <= '" & Format(sontarih, "MM/DD/YY") & "' "
   If Len(dxPickEdit1(8).DisplayText) = 0 Then
      StoKStr = ""
   Else
      If dxTextEdit1(3).Visible = False Then
         If dxPickEdit1(8) = "EÞÝT" Then
         JJ = dxPickEdit1(8)
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " and LG_" & GFirma & "_CLCARD.CODE = '" & dxTextEdit1(2) & "'"
         Else
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " AND LG_" & GFirma & "_CLCARD.CODE LIKE '" & dxTextEdit1(2) & "%" & "'"
         End If
      Else
         If dxPickEdit1(8) = "ARASI" Then
            StoKStr = " AND LG_" & GFirma & "_CLCARD.CODE >= '" & dxTextEdit1(2) & "' and LG_" & GFirma & "_CLCARD.CODE <= '" & dxTextEdit1(3) & "'"
         End If
      End If
   End If

    CnnMlMain.Execute "drop view BORCALC"
    CnnMlMain.Execute "drop view BAK"
    CnnMlMain.Execute "drop view BAK1"
    CnnMlMain.Execute "CREATE VIEW BORCALC WITH ENCRYPTION AS SELECT LG_" & GFirma & "_CLCARD.CODE, LG_" & GFirma & "_CLCARD.DEFINITION_, LG_" & GFirma & "_" & GDonem & "_CLFLINE.DATE_, LG_" & GFirma & "_" & GDonem & "_CLFLINE.SIGN,SUM(LG_" & GFirma & "_" & GDonem & "_CLFLINE.AMOUNT) As Expr1 FROM LG_" & GFirma & "_" & GDonem & "_CLFLINE INNER JOIN LG_" & GFirma & "_CLCARD ON LG_" & GFirma & "_" & GDonem & "_CLFLINE.CLIENTREF = LG_" & GFirma & "_CLCARD.LOGICALREF  " & TarihsTr & OzelsTr & YetkisTr & GrupsTr & IlcesTr & StoKStr & " GROUP BY LG_" & GFirma & "_CLCARD.CODE, LG_" & GFirma & "_CLCARD.DEFINITION_, LG_" & GFirma & "_" & GDonem & "_CLFLINE.DATE_, LG_" & GFirma & "_" & GDonem & "_CLFLINE.SIGN"
    CnnMlMain.Execute "CREATE VIEW BAK  WITH ENCRYPTION AS SELECT CODE, DEFINITION_,SIGN,  [BORC] =CASE SIGN WHEN 0 THEN SUM(Expr1)ELSE 0 END,[ALACAK] =CASE SIGN WHEN 1 THEN SUM(Expr1) ELSE 0 END From BORCALC GROUP BY CODE, DEFINITION_,SIGN "
    CnnMlMain.Execute "CREATE VIEW BAK1  WITH ENCRYPTION AS SELECT CODE, DEFINITION_, SUM(BORC) AS Expr1, SUM(ALACAK) AS Expr2 From BAK GROUP BY CODE, DEFINITION_"
Exit Sub
HATA:
'MsgBox Err.Number & Err.Description
   Resume Next
   Exit Sub
End Sub
Sub SGenelTah()
On Error GoTo HATA
If Len(dxPickEdit1(4).DisplayText) = 0 Then OzelsTr = "" Else OzelsTr = " AND LG_" & GFirma & "_CLCARD.SPECODE = '" & Trim(dxPickEdit1(4)) & "'"
If Len(dxPickEdit1(6).DisplayText) = 0 Then YetkisTr = "" Else YetkisTr = " and LG_" & GFirma & "_CLCARD.CYPHCODE = '" & Trim(dxPickEdit1(6)) & "'"
If Len(dxPickEdit1(7).DisplayText) = 0 Then GrupsTr = "" Else GrupsTr = " and LG_" & GFirma & "_CLCARD.CITY = '" & Trim(dxPickEdit1(7)) & "'"
If Len(dxPickEdit1(9).DisplayText) = 0 Then IlcesTr = "" Else IlcesTr = " and LG_" & GFirma & "_CLCARD.TOWN = '" & Trim(dxPickEdit1(9)) & "'"
'RAPORA ETKIME BAÞLIYOR
   If Len(dxPickEdit1(8).DisplayText) = 0 Then
      StoKStr = ""
   Else
      If dxTextEdit1(3).Visible = False Then
         If dxPickEdit1(8) = "EÞÝT" Then
         JJ = dxPickEdit1(8)
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " and LG_" & GFirma & "_CLCARD.CODE = '" & dxTextEdit1(2) & "'"
         Else
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " AND LG_" & GFirma & "_CLCARD.CODE LIKE '" & dxTextEdit1(2) & "%" & "'"
         End If
      Else
         If dxPickEdit1(8) = "ARASI" Then
            StoKStr = " AND LG_" & GFirma & "_CLCARD.CODE >= '" & dxTextEdit1(2) & "' and LG_" & GFirma & "_CLCARD.CODE <= '" & dxTextEdit1(3) & "'"
         End If
      End If
   End If
    
    CnnMlMain.Execute "drop view YASLANDIRMA"
    CnnMlMain.Execute "CREATE VIEW YASLANDIRMA WITH ENCRYPTION AS SELECT LOGICALREF,CODE, DEFINITION_, ISNULL ((SELECT SUM(TOTAL) From LG_" & GFirma & "_" & GDonem & "_PAYTRANS WHERE CARDREF = LG_" & GFirma & "_CLCARD.LOGICALREF AND SIGN = 0), 0) - ISNULL " _
    & " ((SELECT     SUM(TOTAL) From LG_" & GFirma & "_" & GDonem & "_PAYTRANS WHERE CARDREF = LG_" & GFirma & "_CLCARD.LOGICALREF AND SIGN = 1), 0) AS BAKIYE, ISNULL ((SELECT SUM(TOTAL) " _
    & " From LG_" & GFirma & "_" & GDonem & "_PAYTRANS WHERE CARDREF = LG_" & GFirma & "_CLCARD.LOGICALREF AND PAID = 0 AND DATE_ < GETDATE() AND SIGN = 0), 0) AS [Geçiken Tutar], ISNULL " _
    & " ((SELECT AVG(CAST(GETDATE() AS DECIMAL(8, 0)) - CAST(DATE_ AS DECIMAL(8, 0))-1) From LG_" & GFirma & "_" & GDonem & "_PAYTRANS WHERE CARDREF = LG_" & GFirma & "_CLCARD.LOGICALREF " _
    & " AND PAID = 0 AND DATE_ < GETDATE() AND SIGN = 0), 0) AS [Geçikme Günü], ISNULL ((SELECT SUM(TOTAL) From LG_" & GFirma & "_" & GDonem & "_PAYTRANS " _
    & " WHERE CARDREF = LG_" & GFirma & "_CLCARD.LOGICALREF AND PAID = 0 AND DATE_ >= GETDATE() AND DATE_ < (GETDATE() + (7 - DATEPART(DW, GETDATE()))) AND SIGN = 0), 0) AS [Bu Hafta Tahsilat] FROM LG_" & GFirma & "_CLCARD  WHERE LG_" & GFirma & "_CLCARD.LOGICALREF<>0 " & OzelsTr & YetkisTr & GrupsTr & IlcesTr & StoKStr & ""
    
Exit Sub
HATA:
MsgBox Err.Number & Err.Description
   Resume Next
   Exit Sub
End Sub
Sub SNotCari()
On Error GoTo HATA

If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/10" Else ilktarih = dxDateEdit1
If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "31/12/08" Else sontarih = dxDateEdit2
TarihsTr = " where LG_" & GFirma & "_" & GDonem & "_CLFLINE.DATE_ >= '" & Format(ilktarih, "MM/DD/YY") & "' AND LG_" & GFirma & "_" & GDonem & "_CLFLINE.DATE_ <= '" & Format(sontarih, "MM/DD/YY") & "' "

If Len(dxPickEdit1(4).DisplayText) = 0 Then OzelsTr = "" Else OzelsTr = " AND LG_" & GFirma & "_CLCARD.SPECODE = '" & Trim(dxPickEdit1(4)) & "'"
If Len(dxPickEdit1(6).DisplayText) = 0 Then YetkisTr = "" Else YetkisTr = " and LG_" & GFirma & "_CLCARD.CYPHCODE = '" & Trim(dxPickEdit1(6)) & "'"
If Len(dxPickEdit1(7).DisplayText) = 0 Then GrupsTr = "" Else GrupsTr = " and LG_" & GFirma & "_CLCARD.CITY = '" & Trim(dxPickEdit1(7)) & "'"
If Len(dxPickEdit1(9).DisplayText) = 0 Then IlcesTr = "" Else IlcesTr = " and LG_" & GFirma & "_CLCARD.TOWN = '" & Trim(dxPickEdit1(9)) & "'"
'RAPORA ETKIME BAÞLIYOR
   If Len(dxPickEdit1(8).DisplayText) = 0 Then
      StoKStr = ""
   Else
      If dxTextEdit1(3).Visible = False Then
         If dxPickEdit1(8) = "EÞÝT" Then
         JJ = dxPickEdit1(8)
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " and LG_" & GFirma & "_CLCARD.CODE = '" & dxTextEdit1(2) & "'"
         Else
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " AND LG_" & GFirma & "_CLCARD.CODE LIKE '" & dxTextEdit1(2) & "%" & "'"
         End If
      Else
         If dxPickEdit1(8) = "ARASI" Then
            StoKStr = " AND LG_" & GFirma & "_CLCARD.CODE >= '" & dxTextEdit1(2) & "' and LG_" & GFirma & "_CLCARD.CODE <= '" & dxTextEdit1(3) & "'"
         End If
      End If
   End If
    
    CnnMlMain.Execute "drop view MenaNotCari"
    CnnMlMain.Execute "drop view MenaNotCari1"
    CnnMlMain.Execute "CREATE VIEW MenaNotCari1 WITH ENCRYPTION AS SELECT LOGICALREF,CLIENTREF From LG_" & GFirma & "_" & GDonem & "_CLFLINE " & TarihsTr & ""
    CnnMlMain.Execute "CREATE VIEW MenaNotCari WITH ENCRYPTION AS SELECT LG_" & GFirma & "_CLCARD.CODE, LG_" & GFirma & "_CLCARD.DEFINITION_,LG_" & GFirma & "_CLCARD.CITY,LG_" & GFirma & "_CLCARD.TELNRS1, MenaNotCari1.LOGICALREF FROM LG_" & GFirma & "_CLCARD LEFT OUTER JOIN MenaNotCari1 ON " _
    & " LG_" & GFirma & "_CLCARD.LOGICALREF = MenaNotCari1.CLIENTREF Where (MenaNotCari1.LOGICALREF Is Null) " & OzelsTr & YetkisTr & GrupsTr & IlcesTr & StoKStr & ""
Exit Sub
HATA:
MsgBox Err.Number & Err.Description
   Resume Next
   Exit Sub
End Sub
Sub SNotStok()
On Error GoTo HATA

If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/10" Else ilktarih = dxDateEdit1
If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "31/12/08" Else sontarih = dxDateEdit2
TarihsTr = " where LG_" & GFirma & "_" & GDonem & "_STLINE.DATE_ >= '" & Format(ilktarih, "MM/DD/YY") & "' AND LG_" & GFirma & "_" & GDonem & "_STLINE.DATE_ <= '" & Format(sontarih, "MM/DD/YY") & "' "

If Len(dxPickEdit1(0).DisplayText) = 0 Then SOzelsTr = "" Else SOzelsTr = " and LG_" & GFirma & "_ITEMS.SPECODE = '" & Trim(dxPickEdit1(0)) & "'"
If Len(dxPickEdit1(1).DisplayText) = 0 Then SYetkisTr = "" Else SYetkisTr = " and LG_" & GFirma & "_ITEMS.CYPHCODE = '" & Trim(dxPickEdit1(1)) & "'"
If Len(dxPickEdit1(2).DisplayText) = 0 Then SGrupsTr = "" Else SGrupsTr = " and LG_" & GFirma & "_ITEMS.STGRPCODE = '" & Trim(dxPickEdit1(2)) & "'"
If Len(dxPickEdit1(5).DisplayText) = 0 Then SUretsTr = "" Else SUretsTr = " and LG_" & GFirma & "_ITEMS.PRODCOUNTRY = '" & Trim(dxPickEdit1(5)) & "'"
If Len(dxPickEdit1(10).DisplayText) = 0 Then SIsosTr = "" Else SIsosTr = " and LG_" & GFirma & "_ITEMS.ISONR = '" & Trim(dxPickEdit1(10)) & "'"
'RAPORA ETKIME BAÞLIYOR
   If Len(dxPickEdit1(3).DisplayText) = 0 Then
      SStoksTr = ""
   Else
      If dxTextEdit1(1).Visible = False Then
         If dxPickEdit1(3) = "EÞÝT" Then
         JJ = dxPickEdit1(3)
            If Len(dxTextEdit1(0).DisplayText) = 0 Then SStoksTr = "" Else SStoksTr = " and LG_" & GFirma & "_ITEMS.CODE = '" & dxTextEdit1(0) & "'"
         Else
            If Len(dxTextEdit1(0).DisplayText) = 0 Then SStoksTr = "" Else SStoksTr = " AND LG_" & GFirma & "_ITEMS.CODE LIKE '" & dxTextEdit1(0) & "%" & "'"
         End If
      Else
         If dxPickEdit1(3) = "ARASI" Then
            SStoksTr = " AND LG_" & GFirma & "_ITEMS.CODE >= '" & dxTextEdit1(0) & "' and LG_" & GFirma & "_ITEMS.CODE <= '" & dxTextEdit1(1) & "'"
         End If
      End If
   End If
    
    CnnMlMain.Execute "drop view MenaNotStok"
    CnnMlMain.Execute "drop view MenaNotStok1"
    CnnMlMain.Execute "CREATE VIEW MenaNotStok1 WITH ENCRYPTION AS SELECT LOGICALREF,STOCKREF From LG_" & GFirma & "_" & GDonem & "_STLINE " & TarihsTr & ""
    CnnMlMain.Execute "CREATE VIEW MenaNotStok WITH ENCRYPTION AS SELECT LG_" & GFirma & "_ITEMS.CODE, LG_" & GFirma & "_ITEMS.NAME,LG_" & GFirma & "_ITEMS.SPECODE,LG_" & GFirma & "_ITEMS.CYPHCODE, MenaNotStok1.LOGICALREF FROM LG_" & GFirma & "_ITEMS LEFT OUTER JOIN MenaNotStok1 ON " _
    & " LG_" & GFirma & "_ITEMS.LOGICALREF = MenaNotStok1.STOCKREF Where (MenaNotStok1.LOGICALREF Is Null) " & SOzelsTr & SYetkisTr & SGrupsTr & SUretsTr & SIsosTr & StoKStr & ""
Exit Sub
HATA:
MsgBox Err.Number & Err.Description
   Resume Next
   Exit Sub
End Sub

Sub SMizan()
On Error GoTo HATA
If Len(dxPickEdit1(0).DisplayText) = 0 Then OzelsTr = "" Else OzelsTr = " AND LG_" & GFirma & "_EMUHACC.SPECODE = '" & Trim(dxPickEdit1(0)) & "'"
If Len(dxPickEdit1(1).DisplayText) = 0 Then YetkisTr = "" Else YetkisTr = " and LG_" & GFirma & "_EMUHACC.CYPHCODE = '" & Trim(dxPickEdit1(1)) & "'"
'RAPORA ETKIME BAÞLIYOR
   If Len(dxPickEdit1(3).DisplayText) = 0 Then
      StoKStr = ""
   Else
      If dxTextEdit1(1).Visible = False Then
         If dxPickEdit1(3) = "EÞÝT" Then
         JJ = dxPickEdit1(3)
            If Len(dxTextEdit1(0).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " and LG_" & GFirma & "_EMUHACC.CODE = '" & dxTextEdit1(0) & "'"
         Else
            If Len(dxTextEdit1(0).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " AND LG_" & GFirma & "_EMUHACC.CODE LIKE '" & dxTextEdit1(0) & "%" & "'"
         End If
      Else
         If dxPickEdit1(3) = "ARASI" Then
            StoKStr = " AND LG_" & GFirma & "_EMUHACC.CODE >= '" & dxTextEdit1(0) & "' and LG_" & GFirma & "_EMUHACC.CODE <= '" & dxTextEdit1(0) & "'"
         End If
      End If
   End If
    CnnMlMain.Execute "drop view MenaGMizan"
    CnnMlMain.Execute "CREATE VIEW MenaGMizan WITH ENCRYPTION AS SELECT LG_" & GFirma & "_EMUHACC.CODE AS HESAPKODU, LG_" & GFirma & "_EMUHACC.DEFINITION_ AS ACIKLAMA, SUM(B.DEBIT) AS BORC, SUM(B.CREDIT) AS ALACAK, SUM(B.DEBITREM) AS " _
    & " BORCBAKIYE,SUM(B.CREDITREM) AS ALACAKBAKIYE, SUM(B.DEBIT) - SUM(B.CREDIT) AS BAKIYE FROM LG_" & GFirma & "_" & GDonem & "_EMUHTOT B INNER JOIN LG_001_EMUHACC LG_" & GFirma & "_EMUHACC ON B.ACCOUNTREF = LG_" & GFirma & "_EMUHACC.LOGICALREF Where (B.TOTTYPE = 1) " & OzelsTr & YetkisTr & StoKStr & " GROUP BY LG_" & GFirma & "_EMUHACC.CODE,LG_" & GFirma & "_EMUHACC.DEFINITION_ "
    
Exit Sub
HATA:
MsgBox Err.Number & Err.Description
   Resume Next
   Exit Sub
End Sub
Sub SMahsupFat()
On Error GoTo HATA
If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/10" Else ilktarih = dxDateEdit1
If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "31/12/08" Else sontarih = dxDateEdit2
TarihsTr = " where LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ >= '" & Format(ilktarih, "MM/DD/YY") & "' AND LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ <= '" & Format(sontarih, "MM/DD/YY") & "' "
    
    CnnMlMain.Execute "drop view MenaMahsupFat"
    CnnMlMain.Execute "CREATE VIEW MenaMahsupFat WITH ENCRYPTION AS SELECT LG_" & GFirma & "_" & GDonem & "_EMFICHE.FICHENO, LG_" & GFirma & "_" & GDonem & "_EMFICHE.TOTALACTIVE, LG_" & GFirma & "_" & GDonem & "_EMFICHE.TOTALPASSIVE, SUM(LG_" & GFirma & "_" & GDonem & "_INVOICE.NETTOTAL) AS NET, LG_" & GFirma & "_" & GDonem & "_INVOICE.TRCODE, LG_" & GFirma & "_" & GDonem & "_INVOICE.FICHENO AS INVOICE, LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ " _
    & " FROM LG_" & GFirma & "_" & GDonem & "_INVOICE LEFT OUTER JOIN LG_" & GFirma & "_" & GDonem & "_EMFICHE ON LG_" & GFirma & "_" & GDonem & "_INVOICE.ACCFICHEREF = LG_" & GFirma & "_" & GDonem & "_EMFICHE.LOGICALREF " & TarihsTr & " GROUP BY LG_" & GFirma & "_" & GDonem & "_EMFICHE.FICHENO, LG_" & GFirma & "_" & GDonem & "_EMFICHE.TOTALACTIVE, LG_" & GFirma & "_" & GDonem & "_EMFICHE.TOTALPASSIVE, " _
    & " LG_" & GFirma & "_" & GDonem & "_INVOICE.trcode , LG_" & GFirma & "_" & GDonem & "_INVOICE.FICHENO, LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ "
    
Exit Sub
HATA:
MsgBox Err.Number & Err.Description
   Resume Next
   Exit Sub
End Sub

Sub SGenelOdemeHareket()
On Error GoTo HATA

If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/10" Else ilktarih = dxDateEdit1
If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "31/12/08" Else sontarih = dxDateEdit2
TarihsTr = " and LG_" & GFirma & "_" & GDonem & "_PAYTRANS.DATE_ >= '" & Format(ilktarih, "MM/DD/YY") & "' and LG_" & GFirma & "_" & GDonem & "_PAYTRANS.DATE_ <= '" & Format(sontarih, "MM/DD/YY") & "'"

If Len(dxPickEdit1(4).DisplayText) = 0 Then OzelsTr = "" Else OzelsTr = " AND LG_" & GFirma & "_CLCARD.SPECODE = '" & Trim(dxPickEdit1(4)) & "'"
If Len(dxPickEdit1(6).DisplayText) = 0 Then YetkisTr = "" Else YetkisTr = " and LG_" & GFirma & "_CLCARD.CYPHCODE = '" & Trim(dxPickEdit1(6)) & "'"
If Len(dxPickEdit1(7).DisplayText) = 0 Then GrupsTr = "" Else GrupsTr = " and LG_" & GFirma & "_CLCARD.CITY = '" & Trim(dxPickEdit1(7)) & "'"
If Len(dxPickEdit1(9).DisplayText) = 0 Then IlcesTr = "" Else IlcesTr = " and LG_" & GFirma & "_CLCARD.TOWN = '" & Trim(dxPickEdit1(9)) & "'"
'RAPORA ETKIME BAÞLIYOR
   If Len(dxPickEdit1(8).DisplayText) = 0 Then
      StoKStr = ""
   Else
      If dxTextEdit1(3).Visible = False Then
         If dxPickEdit1(8) = "EÞÝT" Then
         JJ = dxPickEdit1(8)
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " and LG_" & GFirma & "_CLCARD.CODE = '" & dxTextEdit1(2) & "'"
         Else
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " AND LG_" & GFirma & "_CLCARD.CODE LIKE '" & dxTextEdit1(2) & "%" & "'"
         End If
      Else
         If dxPickEdit1(8) = "ARASI" Then
            StoKStr = " AND LG_" & GFirma & "_CLCARD.CODE >= '" & dxTextEdit1(2) & "' and LG_" & GFirma & "_CLCARD.CODE <= '" & dxTextEdit1(3) & "'"
         End If
      End If
   End If
    
    CnnMlMain.Execute "drop view TOPODEME"
  
    CnnMlMain.Execute "CREATE VIEW TOPODEME WITH ENCRYPTION AS SELECT LG_" & GFirma & "_CLCARD.CODE AS [Hesap Kodu], LG_" & GFirma & "_CLCARD.DEFINITION_ AS [Hesap Adi],[TURU] = CASE LG_" & GFirma & "_" & GDonem & "_PAYTRANS.MODULENR WHEN 4 THEN 'FATURA' WHEN 5 THEN 'CARI' WHEN 6 THEN 'CEK' WHEN 7 THEN 'BANKA' WHEN 10 THEN 'KASA' END, [B/A] = CASE LG_" & GFirma & "_" & GDonem & "_PAYTRANS.SIGN WHEN 0 THEN 'TAHSILAT' WHEN 1 THEN 'ODEME' END, " _
    & " (CASE WHEN LG_" & GFirma & "_" & GDonem & "_PAYTRANS.MODULENR = 4 THEN (SELECT FICHENO From LG_" & GFirma & "_" & GDonem & "_INVOICE WHERE LG_" & GFirma & "_" & GDonem & "_INVOICE.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_PAYTRANS.FICHEREF) WHEN LG_" & GFirma & "_" & GDonem & "_PAYTRANS.MODULENR = 7 THEN (SELECT TRANNO From LG_" & GFirma & "_" & GDonem & "_BNFLINE WHERE LG_" & GFirma & "_" & GDonem & "_BNFLINE.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_PAYTRANS.FICHEREF) WHEN LG_" & GFirma & "_" & GDonem & "_PAYTRANS.MODULENR = 10 THEN " _
    & " (SELECT FICHENO From LG_" & GFirma & "_" & GDonem & "_KSLINES WHERE LG_" & GFirma & "_" & GDonem & "_KSLINES.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_PAYTRANS.FICHEREF) WHEN LG_" & GFirma & "_" & GDonem & "_PAYTRANS.MODULENR = 6 THEN (SELECT PORTFOYNO FROM LG_" & GFirma & "_" & GDonem & "_CSTRANS CSTRANS, LG_" & GFirma & "_" & GDonem & "_CSCARD CSCARD WHERE CSTRANS.CSREF = CSCARD.LOGICALREF AND CSTRANS.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_PAYTRANS.FICHELINEREF) " _
    & " WHEN LG_" & GFirma & "_" & GDonem & "_PAYTRANS.MODULENR IN (5, 61, 62) THEN (SELECT TRANNO From LG_" & GFirma & "_" & GDonem & "_CLFLINE WHERE LG_" & GFirma & "_" & GDonem & "_CLFLINE.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_PAYTRANS.FICHEREF) ELSE '0' END) AS [Fis No],LG_" & GFirma & "_" & GDonem & "_PAYTRANS.DATE_ AS [Vade Tarihi], LG_" & GFirma & "_" & GDonem & "_PAYTRANS.PROCDATE AS [Islem Tarihi], TOPLAM = SUM(LG_" & GFirma & "_" & GDonem & "_PAYTRANS.TOTAL), " _
    & " ODENEN = Sum(LG_" & GFirma & "_" & GDonem & "_PAYTRANS.PAID) FROM LG_" & GFirma & "_" & GDonem & "_PAYTRANS LEFT OUTER JOIN LG_" & GFirma & "_CLCARD ON LG_" & GFirma & "_" & GDonem & "_PAYTRANS.CARDREF = LG_" & GFirma & "_CLCARD.LOGICALREF WHERE (LG_" & GFirma & "_" & GDonem & "_PAYTRANS.CARDREF = LG_" & GFirma & "_CLCARD.LOGICALREF) AND LG_" & GFirma & "_" & GDonem & "_PAYTRANS.PAIDINCASH = 0 AND LG_" & GFirma & "_" & GDonem & "_PAYTRANS.SIGN IN (0, 1) " & TarihsTr & OzelsTr & YetkisTr & GrupsTr & IlcesTr & StoKStr & " GROUP BY LG_" & GFirma & "_CLCARD.CODE, " _
    & " LG_" & GFirma & "_CLCARD.DEFINITION_, LG_" & GFirma & "_" & GDonem & "_PAYTRANS.FICHEREF, LG_" & GFirma & "_" & GDonem & "_PAYTRANS.MODULENR,LG_" & GFirma & "_" & GDonem & "_PAYTRANS.FICHELINEREF , LG_" & GFirma & "_" & GDonem & "_PAYTRANS.DATE_, LG_" & GFirma & "_" & GDonem & "_PAYTRANS.SIGN, LG_" & GFirma & "_" & GDonem & "_PAYTRANS.PROCDATE"
    
Exit Sub
HATA:
MsgBox Err.Number & Err.Description
   Resume Next
   Exit Sub
End Sub

Sub SKASA()
On Error GoTo HATA
kASA_Ara
If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/10" Else ilktarih = dxDateEdit1
If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "31/12/08" Else sontarih = dxDateEdit2

If Len(dxPickEdit1(0).DisplayText) = 0 Then OzelsTr = "" Else OzelsTr = " and LG_" & GFirma & "_EMUHACC.speCODE = '" & dxPickEdit1(0) & "'"
If Len(dxPickEdit1(1).DisplayText) = 0 Then YetkisTr = "" Else YetkisTr = " AND LG_" & GFirma & "_EMUHACC.CYPHCODE = '" & dxPickEdit1(1) & "'"
If Len(dxPickEdit1(2).DisplayText) = 0 Then GrupsTr = "" Else GrupsTr = " and LG_" & GFirma & "_EMUHACC.GROUPCODE = '" & dxPickEdit1(2) & "'"


'RAPORA ETKIME BAÞLIYOR
TarihsTr = " where LG_" & GFirma & "_" & GDonem & "_KSLINES.DATE_ >= '" & Format(ilktarih, "MM/DD/YY") & "' AND LG_" & GFirma & "_" & GDonem & "_KSLINES.DATE_ <= '" & Format(sontarih, "MM/DD/YY") & "' "
KASA = " AND LG_" & GFirma & "_KSCARD.CODE IN " & KasaSrg
   If Len(dxPickEdit1(3).DisplayText) = 0 Then
      StoKStr = ""
   Else
      If dxTextEdit1(1).Visible = False Then
         If dxPickEdit1(3) = "EÞÝT" Then
            If Len(dxTextEdit1(0).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " and LG_" & GFirma & "_EMUHACC.CODE = '" & dxTextEdit1(0) & "'"
         Else
            If Len(dxTextEdit1(0).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " AND LG_" & GFirma & "_EMUHACC.CODE LIKE '" & dxTextEdit1(0) & "%" & "'"
         End If
      Else
         If dxPickEdit1(3) = "ARASI" Then
            StoKStr = " AND LG_" & GFirma & "_EMUHACC.CODE >= '" & dxTextEdit1(0) & "' and LG_" & GFirma & "_EMUHACC.CODE <= '" & dxTextEdit1(1) & "'"
         End If
      End If
   End If

   CnnMlMain.Execute "drop view MASRAF"
   
   CnnMlMain.Execute "CREATE VIEW MASRAF WITH ENCRYPTION AS SELECT LG_" & GFirma & "_" & GDonem & "_KSLINES.DATE_ AS TARIH, LG_" & GFirma & "_EMUHACC.CODE AS MUKOD, LG_" & GFirma & "_EMUHACC.DEFINITION_ AS MUAC,LG_" & GFirma & "_EMUHACC_1.CODE AS KASAMUKOD, LG_" & GFirma & "_EMUHACC_1.DEFINITION_ AS KASAMUAC, LG_" & GFirma & "_CRDACREF.TRCODE AS TIPI,LG_" & GFirma & "_" & GDonem & "_KSLINES.AMOUNT AS TUTAT, LG_" & GFirma & "_" & GDonem & "_KSLINES.SIGN AS [B/A], LG_" & GFirma & "_" & GDonem & "_KSLINES.TRCODE,LG_" & GFirma & "_" & GDonem & "_KSLINES.LINEEXP AS ACIKLAMA " _
   & " FROM LG_" & GFirma & "_" & GDonem & "_KSLINES INNER JOIN LG_" & GFirma & "_EMUHACC ON LG_" & GFirma & "_" & GDonem & "_KSLINES.ACCREF = LG_" & GFirma & "_EMUHACC.LOGICALREF INNER JOIN LG_" & GFirma & "_KSCARD ON LG_" & GFirma & "_" & GDonem & "_KSLINES.CARDREF = LG_" & GFirma & "_KSCARD.LOGICALREF INNER JOIN LG_" & GFirma & "_CRDACREF ON LG_" & GFirma & "_KSCARD.LOGICALREF = LG_" & GFirma & "_CRDACREF.CARDREF INNER JOIN LG_" & GFirma & "_EMUHACC LG_" & GFirma & "_EMUHACC_1 ON LG_" & GFirma & "_CRDACREF.ACCOUNTREF = LG_" & GFirma & "_EMUHACC_1.LOGICALREF" _
   & TarihsTr & KASA & OzelsTr & YetkisTr & GrupsTr & StoKStr
   
   Exit Sub
HATA:
'MsgBox Err.Number & Err.Description
   Resume Next
   Exit Sub
End Sub

Sub SCari31()
On Error GoTo HATA
OzelsTr = "": YetkisTr = "": GrupsTr = ""
If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/" & Year(Date) Else ilktarih = dxDateEdit1
If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "31/12/" & Year(Date) Else sontarih = dxDateEdit2

If Len(dxPickEdit1(4).DisplayText) = 0 Then OzelsTr = "" Else OzelsTr = " and LG_" & GFirma & "_CLCARD.SPECODE = '" & Trim(dxPickEdit1(4)) & "'"
If Len(dxPickEdit1(6).DisplayText) = 0 Then YetkisTr = "" Else YetkisTr = " and LG_" & GFirma & "_CLCARD.CYPHCODE = '" & Trim(dxPickEdit1(6)) & "'"
If Len(dxPickEdit1(7).DisplayText) = 0 Then GrupsTr = "" Else GrupsTr = " and LG_" & GFirma & "_CLCARD.CITY = '" & Trim(dxPickEdit1(7)) & "'"
'If Len(dxPickEdit1(9).DisplayText) = 0 Then IlcesTr = "" Else IlcesTr = " and LG_" & GFirma & "_CLCARD.TOWN = '" & Trim(dxPickEdit1(9)) & "'"


'RAPORA ETKIME BAÞLIYOR
TarihsTr = " WHERE LG_" & GFirma & "_" & GDonem & "_CLFLINE.DATE_ >= '" & Format(ilktarih, "MM/DD/YY") & "' AND LG_" & GFirma & "_" & GDonem & "_CLFLINE.DATE_ <= '" & Format(sontarih, "MM/DD/YY") & "' "
   If Len(dxPickEdit1(8).DisplayText) = 0 Then
      StoKStr = ""
   Else
      If dxTextEdit1(3).Visible = False Then
         If dxPickEdit1(8) = "EÞÝT" Then
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " and LG_" & GFirma & "_CLCARD.CODE = '" & dxTextEdit1(2) & "'"
         Else
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " AND LG_" & GFirma & "_CLCARD.CODE LIKE '" & dxTextEdit1(2) & "%" & "'"
         End If
      Else
         If dxPickEdit1(8) = "ARASI" Then
            StoKStr = " AND LG_" & GFirma & "_CLCARD.CODE >= '" & dxTextEdit1(2) & "' and LG_" & GFirma & "_CLCARD.CODE <= '" & dxTextEdit1(3) & "'"
         End If
      End If
   End If
If Len(dxPickEdit1(5).DisplayText) = 0 Then SDuruMu = "" Else SDuruMu = " and LG_" & GFirma & "_CLCARD.ACTIVE = " & Val(dxPickEdit1(5).DisplayText)

CnnMlMain.Execute "drop view CARIHAR"

CnnMlMain.Execute "CREATE VIEW CARIHAR WITH ENCRYPTION AS SELECT LG_" & GFirma & "_" & GDonem & "_CLFLINE.SOURCEFREF AS INVREF,LG_" & GFirma & "_CLCARD.LOGICALREF AS CLREF,LG_" & GFirma & "_CLCARD.CODE, LG_" & GFirma & "_CLCARD.DEFINITION_, LG_" & GFirma & "_CLCARD.SPECODE , LG_" & GFirma & "_CLCARD.CYPHCODE , LG_" & GFirma & "_CLCARD.CITY, LG_" & GFirma & "_" & GDonem & "_CLFLINE.DATE_, LG_" & GFirma & "_" & GDonem & "_CLFLINE.MODULENR,LG_" & GFirma & "_" & GDonem & "_CLFLINE.TRCODE, LG_" & GFirma & "_" & GDonem & "_CLFLINE.TRANNO, LG_" & GFirma & "_" & GDonem & "_CLFLINE.LINEEXP, LG_" & GFirma & "_" & GDonem & "_CLFLINE.SIGN,LG_" & GFirma & "_" & GDonem & "_CLFLINE.AMOUNT " _
& "FROM LG_" & GFirma & "_" & GDonem & "_CLFLINE INNER JOIN LG_" & GFirma & "_CLCARD ON LG_" & GFirma & "_" & GDonem & "_CLFLINE.CLIENTREF = LG_" & GFirma & "_CLCARD.LOGICALREF " & TarihsTr & OzelsTr & YetkisTr & GrupsTr & IlcesTr & StoKStr & SDuruMu

Exit Sub

HATA:
'MsgBox Err.Number & Err.Description
Resume Next

Exit Sub

End Sub
Sub SCariBakiye()
On Error GoTo HATA
OzelsTr = "": YetkisTr = "": GrupsTr = ""
On Error GoTo HATA
TarihsTr = ""

If Len(dxPickEdit1(4).DisplayText) = 0 Then OzelsTr = "" Else OzelsTr = " and LG_" & GFirma & "_CLCARD.SPECODE = '" & Trim(dxPickEdit1(4)) & "'"
If Len(dxPickEdit1(6).DisplayText) = 0 Then YetkisTr = "" Else YetkisTr = " and LG_" & GFirma & "_CLCARD.CYPHCODE = '" & Trim(dxPickEdit1(6)) & "'"
If Len(dxPickEdit1(7).DisplayText) = 0 Then GrupsTr = "" Else GrupsTr = " and LG_" & GFirma & "_CLCARD.CITY = '" & Trim(dxPickEdit1(7)) & "'"
If Len(dxPickEdit1(9).DisplayText) = 0 Then
     IlcesTr = ""
Else
     If Len(dxPickEdit1(11).DisplayText) = 0 Then
          IlcesTr = " and LG_" & GFirma & "_CLCARD.LOWLEVELCODES1 = " & Val(dxPickEdit1(9).DisplayText) & ""
     Else
          IlcesTr = " and LG_" & GFirma & "_CLCARD.LOWLEVELCODES1 = " & Val(dxPickEdit1(9).DisplayText) & " and LG_" & GFirma & "_CLCARD.LOWLEVELCODES2 = " & Val(dxPickEdit1(11).DisplayText) & ""
     End If
End If
  
   If Len(dxPickEdit1(8).DisplayText) = 0 Then
      StoKStr = ""
   Else
      If dxTextEdit1(3).Visible = False Then
         If dxPickEdit1(8) = "EÞÝT" Then
         JJ = dxPickEdit1(8)
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " and LG_" & GFirma & "_CLCARD.CODE = '" & dxTextEdit1(2) & "'"
         Else
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " AND LG_" & GFirma & "_CLCARD.CODE LIKE '" & dxTextEdit1(2) & "%" & "'"
         End If
      Else
         If dxPickEdit1(8) = "ARASI" Then
            StoKStr = " AND LG_" & GFirma & "_CLCARD.CODE >= '" & dxTextEdit1(2) & "' and LG_" & GFirma & "_CLCARD.CODE <= '" & dxTextEdit1(3) & "'"
         End If
      End If
   End If

CnnMlMain.Execute "drop view SRGCariSiNiF"

SQLSTR = "SELECT LG_" & GFirma & "_CLCARD_2.CODE AS Sinif1Kod, LG_" & GFirma & "_CLCARD_2.DEFINITION_ AS Sinif1Aciklama, LG_" & GFirma & "_CLCARD_1.CODE AS Sinif2Kod," _
& "LG_" & GFirma & "_CLCARD_1.DEFINITION_ AS Sinif2Aciklama, LG_" & GFirma & "_CLCARD.LOGICALREF AS CariKey, LG_" & GFirma & "_CLCARD.CODE AS Kodu, LG_" & GFirma & "_CLCARD.DEFINITION_ AS Aciklamasi, LG_" & GFirma & "_CLCARD.SPECODE AS OzelKOd, LG_" & GFirma & "_CLCARD.CYPHCODE AS YetkiKod, " _
& "LG_" & GFirma & "_CLCARD.LOWLEVELCODES1 , LG_" & GFirma & "_CLCARD.LOWLEVELCODES2 FROM LG_" & GFirma & "_CLCARD INNER JOIN LG_" & GFirma & "_CLCARD AS LG_" & GFirma & "_CLCARD_1 ON LG_" & GFirma & "_CLCARD.PARENTCLREF = LG_" & GFirma & "_CLCARD_1.LOGICALREF LEFT OUTER JOIN " _
& "LG_" & GFirma & "_CLCARD AS LG_" & GFirma & "_CLCARD_2 ON LG_" & GFirma & "_CLCARD_1.PARENTCLREF = LG_" & GFirma & "_CLCARD_2.LOGICALREF where  LG_" & GFirma & "_CLCARD.LOGICALREF>0 "


CnnMlMain.Execute "CREATE VIEW SRGCariSiNiF WITH ENCRYPTION AS " & SQLSTR & TarihsTr & OzelsTr & GrupsTr & YetkisTr & IlcesTr

Exit Sub

HATA:
'MsgBox Err.Number & Err.Description
Resume Next

Exit Sub

End Sub

Sub kASA_Ara()
Dim say As Integer
Dim AlpSrg As String
AlpSrg = ""
KasaSrg = ""
   For i = 0 To List1.ListCount - 1
      If List1.Selected(i) = True Then
         ALP = List1.List(i)
         If say = 0 Then AlpSrg = "'" & List1.List(i) & "'" Else AlpSrg = AlpSrg & " ," & "'" & List1.List(i) & "'"
         say = say + 1
      End If
   Next i
If AlpSrg = "" Then KasaSrg = "" Else KasaSrg = "(" & AlpSrg & ")"
End Sub
Sub DuruM_Ara()
Dim say As Integer
Dim AlpSrg As String
AlpSrg = ""
KasaSrg = ""
   For i = 0 To List1.ListCount - 1
      If List1.Selected(i) = True Then
        If List1.List(i) = "Portföyde" Then durumu = 1
        If List1.List(i) = "Ciro Edildi" Then durumu = 2
        If List1.List(i) = "Teminata Verildi" Then durumu = 3
        If List1.List(i) = "Tahsile Verildi" Then durumu = 4
        If List1.List(i) = "Protestolu Tahsile Verildi" Then durumu = 5
        If List1.List(i) = "Ýade Edildi" Then durumu = 6
        If List1.List(i) = "Protesto Edildi" Then durumu = 7
        If List1.List(i) = "Tahsil Edildi" Then durumu = 8
        If List1.List(i) = "Kendi çekimiz" Then durumu = 9
        If List1.List(i) = "Borç senedimiz" Then durumu = 10
        If say = 0 Then AlpSrg = "'" & durumu & "'" Else AlpSrg = AlpSrg & " ," & "'" & durumu & "'"
         say = say + 1
      End If
   Next i
If AlpSrg = "" Then KasaSrg = "" Else KasaSrg = "(" & AlpSrg & ")"
End Sub

Sub Ambar_Ara()
Dim say As Integer
Dim AlpSrg As String
AlpSrg = ""
AmbarSrg = ""
   For i = 0 To List1.ListCount - 1
      If List1.Selected(i) = True Then
         ALP = List1.List(i)
         If say = 0 Then AlpSrg = Val(List1.List(i)) Else AlpSrg = AlpSrg & " ," & Val(List1.List(i))
         say = say + 1
      End If
   Next i
If AlpSrg = "" Then AmbarSrg = "(-1)" Else AmbarSrg = "(" & AlpSrg & ")"
End Sub
Sub Eleman_Ara()
Dim say As Integer
Dim AlpSrg As String
AlpSrg = ""
ElemanSrg = ""
   For i = 0 To List1.ListCount - 1
      If List1.Selected(i) = True Then
         ALP = List1.List(i)
         If say = 0 Then AlpSrg = "'" & List1.List(i) & "'" Else AlpSrg = AlpSrg & " ," & "'" & List1.List(i) & "'"
         say = say + 1
      End If
   Next i
If AlpSrg = "" Then ElemanSrg = "" Else ElemanSrg = "(" & AlpSrg & ")"
End Sub

Sub SRGEnvante()
On Error GoTo HATA

If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/10" Else ilktarih = dxDateEdit1
If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "31/12/08" Else sontarih = dxDateEdit2

DUZENLE:

Set RsEtG = New Recordset
RsEtG.Open "select * from AAW where logicalref=1 ", CnnMlMain, adOpenDynamic, adLockOptimistic
RsEtG.Fields(1) = ilktarih 'Format(ilktarih, "MM/DD/YY")
RsEtG.Fields(2) = sontarih 'Format(sontarih, "MM/DD/YY")
RsEtG.UpdateBatch
RsEtG.Close
Exit Sub
HATA:
  If Err.Number = -2147217865 Then
    CnnMlMain.Execute "create table AAW (Logicalref INTEGER,Tarih1 datetime ,Tarih2 datetime,Tarih3 datetime,Tarih4 datetime)"
    CnnMlMain.Execute "insert into AAW (Logicalref) VALUES (1)"
    GoTo DUZENLE
  End If
End Sub
Sub SRGEnvanter()
On Error GoTo HATA
Dim SDuruMu As String
Ambar_Ara
If Len(dxPickEdit1(0).DisplayText) = 0 Then OzelsTr = "" Else OzelsTr = " and LG_" & GFirma & "_ITEMS.SPECODE = '" & Trim(dxPickEdit1(0)) & "'"
If Len(dxPickEdit1(1).DisplayText) = 0 Then YetkisTr = "" Else YetkisTr = " and LG_" & GFirma & "_ITEMS.CYPHCODE = '" & Trim(dxPickEdit1(1)) & "'"
If Len(dxPickEdit1(2).DisplayText) = 0 Then GrupsTr = "" Else GrupsTr = " and LG_" & GFirma & "_ITEMS.STGRPCODE = '" & Trim(dxPickEdit1(2)) & "'"
If Len(dxPickEdit1(5).DisplayText) = 0 Then UretsTr = "" Else UretsTr = " and LG_" & GFirma & "_ITEMS.PRODCOUNTRY = '" & Trim(dxPickEdit1(5)) & "'"
If Len(dxPickEdit1(10).DisplayText) = 0 Then IsosTr = "" Else IsosTr = " and LG_" & GFirma & "_ITEMS.ISONR = '" & Trim(dxPickEdit1(10)) & "'"

If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/10" Else ilktarih = dxDateEdit1
If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "31/12/08" Else sontarih = dxDateEdit2
TarihsTr = " and LG_" & GFirma & "_" & GDonem & "_STINVTOT.DATE_ <= '" & Format(sontarih, "MM/DD/YY") & "'"
DUZENLE:
If Len(dxPickEdit1(5).DisplayText) = 0 Then SDuruMu = "" Else SDuruMu = " and LG_" & GFirma & "_ITEMS.ACTIVE = " & Val(dxPickEdit1(5).DisplayText)

'RAPORA ETKIME BAÞLIYOR
   If Len(dxPickEdit1(3).DisplayText) = 0 Then
      StoKStr = ""
   Else
      If dxTextEdit1(1).Visible = False Then
         If dxPickEdit1(3) = "EÞÝT" Then
            If Len(dxTextEdit1(0).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " and LG_" & GFirma & "_ITEMS.CODE = '" & dxTextEdit1(0) & "'"
         Else
            If Len(dxTextEdit1(0).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " AND LG_" & GFirma & "_ITEMS.CODE LIKE '" & dxTextEdit1(0) & "%" & "'"
         End If
      Else
         If dxPickEdit1(3) = "ARASI" Then
            StoKStr = " AND LG_" & GFirma & "_ITEMS.CODE >= '" & dxTextEdit1(0) & "' and LG_" & GFirma & "_ITEMS.CODE <= '" & dxTextEdit1(1) & "'"
         End If
      End If
   End If


sqlstr2 = "SELECT LG_" & GFirma & "_ITEMS.CARDTYPE, LG_" & GFirma & "_ITEMS.CODE, LG_" & GFirma & "_ITEMS.NAME, LG_" & GFirma & "_ITEMS.STGRPCODE, LG_" & GFirma & "_ITEMS.PRODUCERCODE, LG_" & GFirma & "_ITEMS.SPECODE, LG_" & GFirma & "_ITEMS.CYPHCODE, LG_" & GFirma & "_" & GDonem & "_STINVTOT.INVENNO, LG_" & GFirma & "_" & GDonem & "_STINVTOT.DATE_, LG_" & GFirma & "_" & GDonem & "_STINVTOT.TRANSFERRED, LG_" & GFirma & "_" & GDonem & "_STINVTOT.PURAMNT, LG_" & GFirma & "_" & GDonem & "_STINVTOT.PURCASH, LG_" & GFirma & "_" & GDonem & "_STINVTOT.SALAMNT, LG_" & GFirma & "_" & GDonem & "_STINVTOT.SALCASH," _
& " LG_" & GFirma & "_" & GDonem & "_STINVTOT.ONHAND, LG_" & GFirma & "_" & GDonem & "_STINVTOT.ACTWHOUSEIN, LG_" & GFirma & "_" & GDonem & "_STINVTOT.ACTWHOUSEOUT, LG_" & GFirma & "_" & GDonem & "_STINVTOT.AVGVALUE, LG_" & GFirma & "_" & GDonem & "_STINVTOT.STOCKREF, AAW.Tarih1, AAW.Tarih2, AAW.Tarih3, AAW.Tarih4, LG_" & GFirma & "_" & GDonem & "_GNTOTST.INVENNO AS Expr1, LG_" & GFirma & "_" & GDonem & "_GNTOTST.AVGVALUE AS GerOrt,LG_" & GFirma & "_ITEMS.PRODCOUNTRY ,LG_" & GFirma & "_ITEMS.ISONR " _
& "FROM LG_" & GFirma & "_ITEMS INNER JOIN LG_" & GFirma & "_" & GDonem & "_STINVTOT ON LG_" & GFirma & "_ITEMS.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_STINVTOT.STOCKREF INNER JOIN LG_" & GFirma & "_" & GDonem & "_GNTOTST ON LG_" & GFirma & "_ITEMS.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_GNTOTST.STOCKREF CROSS JOIN AAW " _
& "WHERE (LG_" & GFirma & "_" & GDonem & "_STINVTOT.INVENNO IN " & AmbarSrg & ") AND (AAW.Logicalref = 1) AND (LG_" & GFirma & "_" & GDonem & "_GNTOTST.INVENNO = - 1)"

devam:
CnnMlMain.Execute "CREATE VIEW ASRGMental_Env WITH ENCRYPTION AS " & sqlstr2 & TarihsTr & SDuruMu & StoKStr & OzelsTr & YetkisTr & GrupsTr & UretsTr & IsosTr

Exit Sub
HATA:
If Err.Number = -2147217900 Then
   CnnMlMain.Execute "drop view ASRGMental_Env"
   GoTo DUZENLE
Else
   MsgBox Err.Number & Err.Description
End If

End Sub
Sub SRGEnvanter2()
On Error GoTo HATA
Dim SDuruMu As String
Ambar_Ara
If Len(dxPickEdit1(0).DisplayText) = 0 Then OzelsTr = "" Else OzelsTr = " and LG_" & GFirma & "_ITEMS.SPECODE = '" & Trim(dxPickEdit1(0)) & "'"
If Len(dxPickEdit1(1).DisplayText) = 0 Then YetkisTr = "" Else YetkisTr = " and LG_" & GFirma & "_ITEMS.CYPHCODE = '" & Trim(dxPickEdit1(1)) & "'"
If Len(dxPickEdit1(2).DisplayText) = 0 Then GrupsTr = "" Else GrupsTr = " and LG_" & GFirma & "_ITEMS.STGRPCODE = '" & Trim(dxPickEdit1(2)) & "'"
If Len(dxPickEdit1(5).DisplayText) = 0 Then UretsTr = "" Else UretsTr = " and LG_" & GFirma & "_ITEMS.PRODCOUNTRY = '" & Trim(dxPickEdit1(5)) & "'"
If Len(dxPickEdit1(10).DisplayText) = 0 Then IsosTr = "" Else IsosTr = " and LG_" & GFirma & "_ITEMS.ISONR = '" & Trim(dxPickEdit1(10)) & "'"

If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/10" Else ilktarih = dxDateEdit1
If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "31/12/08" Else sontarih = dxDateEdit2
TarihsTr = " and LG_" & GFirma & "_" & GDonem & "_STINVTOT.DATE_ >= '" & Format(ilktarih, "MM/DD/YY") & "' and LG_" & GFirma & "_" & GDonem & "_STINVTOT.DATE_ <= '" & Format(sontarih, "MM/DD/YY") & "'"
DUZENLE:
If Len(dxPickEdit1(5).DisplayText) = 0 Then SDuruMu = "" Else SDuruMu = " and LG_" & GFirma & "_ITEMS.ACTIVE = " & Val(dxPickEdit1(5).DisplayText)

'RAPORA ETKIME BAÞLIYOR
   If Len(dxPickEdit1(3).DisplayText) = 0 Then
      StoKStr = ""
   Else
      If dxTextEdit1(1).Visible = False Then
         If dxPickEdit1(3) = "EÞÝT" Then
            If Len(dxTextEdit1(0).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " and LG_" & GFirma & "_ITEMS.CODE = '" & dxTextEdit1(0) & "'"
         Else
            If Len(dxTextEdit1(0).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " AND LG_" & GFirma & "_ITEMS.CODE LIKE '" & dxTextEdit1(0) & "%" & "'"
         End If
      Else
         If dxPickEdit1(3) = "ARASI" Then
            StoKStr = " AND LG_" & GFirma & "_ITEMS.CODE >= '" & dxTextEdit1(0) & "' and LG_" & GFirma & "_ITEMS.CODE <= '" & dxTextEdit1(1) & "'"
         End If
      End If
   End If


sqlstr2 = "SELECT LG_" & GFirma & "_ITEMS.CARDTYPE, LG_" & GFirma & "_ITEMS.CODE, LG_" & GFirma & "_ITEMS.NAME, LG_" & GFirma & "_ITEMS.STGRPCODE, LG_" & GFirma & "_ITEMS.PRODUCERCODE, LG_" & GFirma & "_ITEMS.SPECODE, LG_" & GFirma & "_ITEMS.CYPHCODE, LG_" & GFirma & "_" & GDonem & "_STINVTOT.INVENNO, LG_" & GFirma & "_" & GDonem & "_STINVTOT.DATE_, LG_" & GFirma & "_" & GDonem & "_STINVTOT.TRANSFERRED, LG_" & GFirma & "_" & GDonem & "_STINVTOT.PURAMNT, LG_" & GFirma & "_" & GDonem & "_STINVTOT.PURCASH, LG_" & GFirma & "_" & GDonem & "_STINVTOT.SALAMNT, LG_" & GFirma & "_" & GDonem & "_STINVTOT.SALCASH," _
& " LG_" & GFirma & "_" & GDonem & "_STINVTOT.ONHAND, LG_" & GFirma & "_" & GDonem & "_STINVTOT.ACTWHOUSEIN, LG_" & GFirma & "_" & GDonem & "_STINVTOT.ACTWHOUSEOUT, LG_" & GFirma & "_" & GDonem & "_STINVTOT.AVGVALUE, LG_" & GFirma & "_" & GDonem & "_STINVTOT.STOCKREF,  LG_" & GFirma & "_" & GDonem & "_GNTOTST.INVENNO AS Expr1, LG_" & GFirma & "_" & GDonem & "_GNTOTST.AVGVALUE AS GerOrt " _
& "FROM LG_" & GFirma & "_ITEMS INNER JOIN LG_" & GFirma & "_" & GDonem & "_STINVTOT ON LG_" & GFirma & "_ITEMS.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_STINVTOT.STOCKREF INNER JOIN LG_" & GFirma & "_" & GDonem & "_GNTOTST ON LG_" & GFirma & "_ITEMS.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_GNTOTST.STOCKREF  " _
& "WHERE (LG_" & GFirma & "_" & GDonem & "_STINVTOT.INVENNO IN " & AmbarSrg & ")  AND (LG_" & GFirma & "_" & GDonem & "_GNTOTST.INVENNO = - 1)"

devam:
CnnMlMain.Execute "CREATE VIEW ASRGMental_Env2 WITH ENCRYPTION AS " & sqlstr2 & TarihsTr & SDuruMu & StoKStr & OzelsTr & YetkisTr & GrupsTr & UretsTr & IsosTr

Exit Sub
HATA:
If Err.Number = -2147217900 Then
   CnnMlMain.Execute "drop view ASRGMental_Env2"
   GoTo DUZENLE
Else
   MsgBox Err.Number & Err.Description
End If

End Sub
Sub SRGStok_H()
On Error GoTo HATA
Ambar_Ara
If Len(dxDateEdit1.DisplayText) = 0 Then TarihsTr = "" Else TarihsTr = " and LG_" & GFirma & "_" & GDonem & "_STINVTOT.DATE_ <= '" & Format(dxDateEdit1, "MM/DD/YY") & "'"
If Len(dxPickEdit1(0).DisplayText) = 0 Then OzelsTr = "" Else OzelsTr = " and LG_" & GFirma & "_ITEMS.SPECODE = '" & Trim(dxPickEdit1(0)) & "'"
If Len(dxPickEdit1(1).DisplayText) = 0 Then YetkisTr = "" Else YetkisTr = " and LG_" & GFirma & "_ITEMS.CYPHCODE = '" & Trim(dxPickEdit1(1)) & "'"
If Len(dxPickEdit1(2).DisplayText) = 0 Then GrupsTr = "" Else GrupsTr = " and LG_" & GFirma & "_ITEMS.STGRPCODE = '" & Trim(dxPickEdit1(2)) & "'"
If Len(dxPickEdit1(5).DisplayText) = 0 Then UretsTr = "" Else UretsTr = " and LG_" & GFirma & "_ITEMS.PRODCOUNTRY = '" & Trim(dxPickEdit1(5)) & "'"
If Len(dxPickEdit1(10).DisplayText) = 0 Then IsosTr = "" Else IsosTr = " and LG_" & GFirma & "_ITEMS.ISONR = '" & Trim(dxPickEdit1(10)) & "'"

AmbarsTr = " and LG_" & GFirma & "_" & GDonem & "_STINVTOT.INVENNO IN " & AmbarSrg & ""

'RAPORA ETKIME BAÞLIYOR
   If Len(dxPickEdit1(3).DisplayText) = 0 Then
      StoKStr = ""
   Else
      If dxTextEdit1(1).Visible = False Then
         If dxPickEdit1(3) = "EÞÝT" Then
            If Len(dxTextEdit1(0).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " and LG_" & GFirma & "_ITEMS.CODE = '" & dxTextEdit1(0) & "'"
         Else
            If Len(dxTextEdit1(0).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " AND LG_" & GFirma & "_ITEMS.CODE LIKE '" & dxTextEdit1(0) & "%" & "'"
         End If
      Else
         If dxPickEdit1(3) = "ARASI" Then
            StoKStr = " AND LG_" & GFirma & "_ITEMS.CODE >= '" & dxTextEdit1(0) & "' and LG_" & GFirma & "_ITEMS.CODE <= '" & dxTextEdit1(1) & "'"
         End If
      End If
   End If


DUZENLE:

SQLSTR = "SELECT LG_" & GFirma & "_ITEMS.LOGICALREF AS STOKREF, LG_" & GFirma & "_ITEMS.CODE AS KODU, LG_" & GFirma & "_ITEMS.NAME AS ADI, LG_" & GFirma & "_ITEMS.STGRPCODE AS GRUPKODU, LG_" & GFirma & "_ITEMS.SPECODE AS OZELKODU, LG_" & GFirma & "_ITEMS.CYPHCODE AS YETKIKODU, LG_" & GFirma & "_ITEMS.ISONR AS ISONo, LG_" & GFirma & "_ITEMS.PRODCOUNTRY AS UretimYeri, LG_" & GFirma & "_" & GDonem & "_STINVTOT.INVENNO AS AMBARNO, LG_" & GFirma & "_" & GDonem & "_STINVTOT.DATE_ AS TARIH, LG_" & GFirma & "_" & GDonem & "_STINVTOT.ONHAND AS STOKMIK, LG_" & GFirma & "_" & GDonem & "_STINVTOT.TRANSFERRED AS DEVIRMIK, LG_" & GFirma & "_" & GDonem & "_STINVTOT.AVGVALUE AS DEVIRDEGERI, LG_" & GFirma & "_" & GDonem & "_STINVTOT.PURAMNT AS ALIMMIK, LG_" & GFirma & "_" & GDonem & "_STINVTOT.PURCASH AS ALIMDEGERI, LG_" & GFirma & "_" & GDonem & "_STINVTOT.SALAMNT AS SATISMIK, LG_" & GFirma & "_" & GDonem & "_STINVTOT.SALCASH AS SATISDEGERI," _
& " LG_" & GFirma & "_" & GDonem & "_GNTOTST.ONHAND AS TSONSTOK, LG_" & GFirma & "_" & GDonem & "_GNTOTST.AVGVALUE AS ORTBMALIYET, LG_" & GFirma & "_ITMUNITA.BARCODE AS TBARKODU, LG_" & GFirma & "_UNITSETL.CODE AS TBIRIMKODU, LG_" & GFirma & "_UNITSETL.NAME AS TBIRIMI " _
& "FROM LG_" & GFirma & "_ITEMS LEFT OUTER JOIN LG_" & GFirma & "_UNITSETL INNER JOIN LG_" & GFirma & "_ITMUNITA ON LG_" & GFirma & "_UNITSETL.LOGICALREF = LG_" & GFirma & "_ITMUNITA.UNITLINEREF ON LG_" & GFirma & "_ITEMS.LOGICALREF = LG_" & GFirma & "_ITMUNITA.ITEMREF LEFT OUTER JOIN LG_" & GFirma & "_" & GDonem & "_STINVTOT INNER JOIN LG_" & GFirma & "_" & GDonem & "_GNTOTST ON LG_" & GFirma & "_" & GDonem & "_STINVTOT.STOCKREF = LG_" & GFirma & "_" & GDonem & "_GNTOTST.STOCKREF AND LG_" & GFirma & "_" & GDonem & "_STINVTOT.INVENNO = LG_" & GFirma & "_" & GDonem & "_GNTOTST.INVENNO ON LG_" & GFirma & "_ITEMS.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_STINVTOT.STOCKREF " _
& "Where (LG_" & GFirma & "_ITMUNITA.LINENR = 1) "

CnnMlMain.Execute "CREATE VIEW AMental_Stok  WITH ENCRYPTION AS " & SQLSTR & TarihsTr & AmbarsTr & OzelsTr & GrupsTr & YetkisTr & StoKStr

Exit Sub
HATA:
If Err.Number = -2147217900 Then
   CnnMlMain.Execute "drop view AMental_Stok"
   GoTo DUZENLE
Else
   MsgBox Err.Number
End If
End Sub
Sub SRGStok_EE()
On Error GoTo HATA
If Len(dxDateEdit1.DisplayText) = 0 Then TarihsTr = "" Else TarihsTr = " and LG_" & GFirma & "_" & GDonem & "_STINVTOT.DATE_ <= '" & Format(dxDateEdit1, "MM/DD/YY") & "'"
If Len(dxPickEdit1(0).DisplayText) = 0 Then OzelsTr = "" Else OzelsTr = " and LG_" & GFirma & "_ITEMS.SPECODE = '" & Trim(dxPickEdit1(0)) & "'"
If Len(dxPickEdit1(1).DisplayText) = 0 Then YetkisTr = "" Else YetkisTr = " and LG_" & GFirma & "_ITEMS.CYPHCODE = '" & Trim(dxPickEdit1(1)) & "'"
If Len(dxPickEdit1(2).DisplayText) = 0 Then GrupsTr = "" Else GrupsTr = " and LG_" & GFirma & "_ITEMS.STGRPCODE = '" & Trim(dxPickEdit1(2)) & "'"
If Len(dxPickEdit1(5).DisplayText) = 0 Then UretsTr = "" Else UretsTr = " and LG_" & GFirma & "_ITEMS.PRODCOUNTRY = '" & Trim(dxPickEdit1(5)) & "'"
If Len(dxPickEdit1(10).DisplayText) = 0 Then IsosTr = "" Else IsosTr = " and LG_" & GFirma & "_ITEMS.ISONR = '" & Trim(dxPickEdit1(10)) & "'"

'AmbarsTr = " and LG_" & GFirma & "_" & GDonem & "_STINVTOT.INVENNO IN " & AmbarSrg & ""

'RAPORA ETKIME BAÞLIYOR
   If Len(dxPickEdit1(3).DisplayText) = 0 Then
      StoKStr = ""
   Else
      If dxTextEdit1(1).Visible = False Then
         If dxPickEdit1(3) = "EÞÝT" Then
            If Len(dxTextEdit1(0).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " and LG_" & GFirma & "_ITEMS.CODE = '" & dxTextEdit1(0) & "'"
         Else
            If Len(dxTextEdit1(0).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " AND LG_" & GFirma & "_ITEMS.CODE LIKE '" & dxTextEdit1(0) & "%" & "'"
         End If
      Else
         If dxPickEdit1(3) = "ARASI" Then
            StoKStr = " AND LG_" & GFirma & "_ITEMS.CODE >= '" & dxTextEdit1(0) & "' and LG_" & GFirma & "_ITEMS.CODE <= '" & dxTextEdit1(1) & "'"
         End If
      End If
   End If


DUZENLE:

SQLSTR = "SELECT LG_" & GFirma & "_ITEMS.LOGICALREF AS STOKREF, LG_" & GFirma & "_ITEMS.CODE AS KODU, LG_" & GFirma & "_ITEMS.NAME AS ADI, LG_" & GFirma & "_ITEMS.STGRPCODE AS GRUPKODU, LG_" & GFirma & "_ITEMS.SPECODE AS OZELKODU, LG_" & GFirma & "_ITEMS.CYPHCODE AS YETKIKODU, LG_" & GFirma & "_ITEMS.ISONR AS ISONo, LG_" & GFirma & "_ITEMS.PRODCOUNTRY AS UretimYeri, LG_" & GFirma & "_" & GDonem & "_STINVTOT.INVENNO AS AMBARNO, LG_" & GFirma & "_" & GDonem & "_STINVTOT.DATE_ AS TARIH, LG_" & GFirma & "_" & GDonem & "_STINVTOT.ONHAND AS STOKMIK, LG_" & GFirma & "_" & GDonem & "_STINVTOT.TRANSFERRED AS DEVIRMIK, LG_" & GFirma & "_" & GDonem & "_STINVTOT.AVGVALUE AS DEVIRDEGERI, LG_" & GFirma & "_" & GDonem & "_STINVTOT.PURAMNT AS ALIMMIK, LG_" & GFirma & "_" & GDonem & "_STINVTOT.PURCASH AS ALIMDEGERI, LG_" & GFirma & "_" & GDonem & "_STINVTOT.SALAMNT AS SATISMIK, LG_" & GFirma & "_" & GDonem & "_STINVTOT.SALCASH AS SATISDEGERI," _
& " LG_" & GFirma & "_" & GDonem & "_GNTOTST.ONHAND AS TSONSTOK, LG_" & GFirma & "_" & GDonem & "_GNTOTST.AVGVALUE AS ORTBMALIYET, LG_" & GFirma & "_ITMUNITA.BARCODE AS TBARKODU, LG_" & GFirma & "_UNITSETL.CODE AS TBIRIMKODU, LG_" & GFirma & "_UNITSETL.NAME AS TBIRIMI " _
& "FROM LG_" & GFirma & "_ITEMS LEFT OUTER JOIN LG_" & GFirma & "_UNITSETL INNER JOIN LG_" & GFirma & "_ITMUNITA ON LG_" & GFirma & "_UNITSETL.LOGICALREF = LG_" & GFirma & "_ITMUNITA.UNITLINEREF ON LG_" & GFirma & "_ITEMS.LOGICALREF = LG_" & GFirma & "_ITMUNITA.ITEMREF LEFT OUTER JOIN LG_" & GFirma & "_" & GDonem & "_STINVTOT INNER JOIN LG_" & GFirma & "_" & GDonem & "_GNTOTST ON LG_" & GFirma & "_" & GDonem & "_STINVTOT.STOCKREF = LG_" & GFirma & "_" & GDonem & "_GNTOTST.STOCKREF AND LG_" & GFirma & "_" & GDonem & "_STINVTOT.INVENNO = LG_" & GFirma & "_" & GDonem & "_GNTOTST.INVENNO ON LG_" & GFirma & "_ITEMS.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_STINVTOT.STOCKREF " _
& "Where (LG_" & GFirma & "_ITMUNITA.LINENR = 1) "

CnnMlMain.Execute "CREATE VIEW AMental_Stok WITH ENCRYPTION AS " & SQLSTR & TarihsTr & OzelsTr & GrupsTr & YetkisTr & StoKStr

Exit Sub
HATA:
If Err.Number = -2147217900 Then
   CnnMlMain.Execute "drop view AMental_Stok"
   GoTo DUZENLE
Else
   MsgBox Err.Number
End If
End Sub

Sub STeMizle()
For i = 0 To 9: dxPickEdit1(i) = "": Next
dxPickEdit1(3) = "EÞÝT": dxPickEdit1(4) = "": dxPickEdit1(8) = "EÞÝT"
dxTextEdit1(0) = "": dxTextEdit1(1) = ""
dxTextEdit1(2) = "": dxTextEdit1(3) = ""
dxDateEdit1 = "01/01/10"
dxDateEdit2 = Date
Label1(5).Visible = False: dxTextEdit1(1).Visible = False: Label1(14).Visible = False: dxTextEdit1(3).Visible = False
Command3.Visible = False
Label1(2).Visible = True: Label1(11).Visible = True: Label1(21).Visible = True
dxPickEdit1(2).Visible = True: dxPickEdit1(5).Visible = True: dxPickEdit1(10).Visible = True
ElemanSrg = ""
List1.Clear
End Sub
Sub SStatu_Yukle()
'status
List1.Clear
List1.AddItem "Portföyde"
List1.AddItem "Ciro Edildi"
List1.AddItem "Teminata Verildi"
List1.AddItem "Tahsile Verildi"
List1.AddItem "Protestolu Tahsile Verildi"
List1.AddItem "Ýade Edildi"
List1.AddItem "Protesto Edildi"
List1.AddItem "Tahsil Edildi"
List1.AddItem "Kendi çekimiz"
List1.AddItem "Borç senedimiz"

End Sub
Sub SKasa_Yukle()
List1.Clear
'kasa bilgileri yükleniyor
Set RsEtG = New Recordset
RsEtG.Open "SELECT CODE,NAME FROM LG_" & GFirma & "_KSCARD order by CODE", CnnMlMain, adOpenDynamic, adLockOptimistic
Do While Not RsEtG.EOF
      List1.AddItem RsEtG.Fields(0) ' & vbCrLf & RsEtG.Fields(1)
RsEtG.MoveNext
Loop
RsEtG.Close

End Sub
Sub SMKoD_Yukle()
'özel kodlar yüklenir
dxPickEdit1(0).Items.Clear
Set RsEtG = New Recordset
RsEtG.Open "Select specode from LG_" & GFirma & "_EMUHACC GROUP BY SPECODE ORDER BY specode", CnnMlMain, adOpenDynamic, adLockOptimistic
   Do While Not RsEtG.EOF
         If IsNull(RsEtG.Fields(0)) = False And Len(RsEtG.Fields(0)) > 0 Then dxPickEdit1(0).Items.Add RsEtG.Fields(0)
   RsEtG.MoveNext
   Loop
RsEtG.Close
'yetki kodlar yüklenir
dxPickEdit1(1).Items.Clear
Set RsEtG = New Recordset
RsEtG.Open "Select CYPHcode from LG_" & GFirma & "_EMUHACC GROUP BY CYPHCODE ORDER BY CYPHcode", CnnMlMain, adOpenDynamic, adLockOptimistic
   Do While Not RsEtG.EOF
         If IsNull(RsEtG.Fields(0)) = False And Len(RsEtG.Fields(0)) > 0 Then dxPickEdit1(1).Items.Add RsEtG.Fields(0)
   RsEtG.MoveNext
   Loop
RsEtG.Close
'gRUP KODU
dxPickEdit1(2).Items.Clear
Set RsEtG = New Recordset
RsEtG.Open "Select GROUPCODE from LG_" & GFirma & "_EMUHACC GROUP BY GROUPCODE ORDER BY GROUPCODE", CnnMlMain, adOpenDynamic, adLockOptimistic
   Do While Not RsEtG.EOF
         If IsNull(RsEtG.Fields(0)) = False And Len(RsEtG.Fields(0)) > 0 Then dxPickEdit1(2).Items.Add RsEtG.Fields(0)
   RsEtG.MoveNext
   Loop
RsEtG.Close

End Sub

Sub SStok_Yukle()
'özel kodlar yüklenir
dxPickEdit1(0).Items.Clear
Set RsEtG = New Recordset
RsEtG.Open "Select specode from LG_" & GFirma & "_ITEMS GROUP BY SPECODE ORDER BY specode", CnnMlMain, adOpenDynamic, adLockOptimistic
   Do While Not RsEtG.EOF
         If IsNull(RsEtG.Fields(0)) = False And Len(RsEtG.Fields(0)) > 0 Then dxPickEdit1(0).Items.Add RsEtG.Fields(0)
   RsEtG.MoveNext
   Loop
RsEtG.Close
'yetki kodlar yüklenir
dxPickEdit1(1).Items.Clear
Set RsEtG = New Recordset
RsEtG.Open "Select CYPHcode from LG_" & GFirma & "_ITEMS GROUP BY CYPHCODE ORDER BY CYPHcode", CnnMlMain, adOpenDynamic, adLockOptimistic
   Do While Not RsEtG.EOF
         If IsNull(RsEtG.Fields(0)) = False And Len(RsEtG.Fields(0)) > 0 Then dxPickEdit1(1).Items.Add RsEtG.Fields(0)
   RsEtG.MoveNext
   Loop
RsEtG.Close
'Grup Kodu
dxPickEdit1(2).Items.Clear
Set RsEtG = New Recordset
RsEtG.Open "Select STGRPcode from LG_" & GFirma & "_ITEMS GROUP BY STGRPCODE ORDER BY STGRPcode", CnnMlMain, adOpenDynamic, adLockOptimistic
   Do While Not RsEtG.EOF
         If IsNull(RsEtG.Fields(0)) = False And Len(RsEtG.Fields(0)) > 0 Then dxPickEdit1(2).Items.Add RsEtG.Fields(0)
   RsEtG.MoveNext
   Loop
RsEtG.Close
'Üretim Yeri
dxPickEdit1(5).Items.Clear
Set RsEtG = New Recordset
RsEtG.Open "Select LOGOID from LG_" & GFirma & "_ITEMS GROUP BY LOGOID ORDER BY LOGOID", CnnMlMain, adOpenDynamic, adLockOptimistic
   Do While Not RsEtG.EOF
         If IsNull(RsEtG.Fields(0)) = False And Len(RsEtG.Fields(0)) > 0 Then dxPickEdit1(5).Items.Add RsEtG.Fields(0)
   RsEtG.MoveNext
   Loop
RsEtG.Close
'Üretim Yeri
dxPickEdit1(10).Items.Clear
Set RsEtG = New Recordset
RsEtG.Open "Select GTIPCODE from LG_" & GFirma & "_ITEMS GROUP BY GTIPCODE ORDER BY GTIPCODE", CnnMlMain, adOpenDynamic, adLockOptimistic
   Do While Not RsEtG.EOF
         If IsNull(RsEtG.Fields(0)) = False And Len(RsEtG.Fields(0)) > 0 Then dxPickEdit1(10).Items.Add RsEtG.Fields(0)
   RsEtG.MoveNext
   Loop
RsEtG.Close


End Sub
Sub SAmbar_Yukle()
'AMBAR bilgileri yükleniyor
List1.Clear
Set RsEtG = New Recordset
RsEtG.Open "SELECT NR,NAME FROM L_CAPIWHOUSE where FIRMNR = " & GFirma & " order by nr", CnnMlMain, adOpenDynamic, adLockOptimistic
Do While Not RsEtG.EOF
      List1.AddItem RsEtG.Fields(0) & " - " & RsEtG.Fields(1)
RsEtG.MoveNext
Loop
RsEtG.Close
End Sub
Sub SEleman_Yukle()
'AMBAR bilgileri yükleniyor
List1.Clear
Set RsEtG = New Recordset
RsEtG.Open "SELECT NAME FROM LG_" & GFirma & "_PROJECT order by code ", CnnMlMain, adOpenDynamic, adLockOptimistic
Do While Not RsEtG.EOF
      List1.AddItem RsEtG.Fields(0)
RsEtG.MoveNext
Loop
RsEtG.Close
End Sub

Sub SCari_Yukle()
'özel kodlar yüklenir
dxPickEdit1(4).Items.Clear
Set RsEtG = New Recordset
RsEtG.Open "Select specode from LG_" & GFirma & "_CLCARD GROUP BY SPECODE ORDER BY specode", CnnMlMain, adOpenDynamic, adLockOptimistic
   Do While Not RsEtG.EOF
         If IsNull(RsEtG.Fields(0)) = False And Len(RsEtG.Fields(0)) > 0 Then dxPickEdit1(4).Items.Add RsEtG.Fields(0)
   RsEtG.MoveNext
   Loop
RsEtG.Close
'yetki kodlar yüklenir
dxPickEdit1(6).Items.Clear
Set RsEtG = New Recordset
RsEtG.Open "Select CYPHcode from LG_" & GFirma & "_CLCARD GROUP BY CYPHCODE ORDER BY CYPHcode", CnnMlMain, adOpenDynamic, adLockOptimistic
   Do While Not RsEtG.EOF
         If IsNull(RsEtG.Fields(0)) = False And Len(RsEtG.Fields(0)) > 0 Then dxPickEdit1(6).Items.Add RsEtG.Fields(0)
   RsEtG.MoveNext
   Loop
RsEtG.Close
'ÞEHÝR Kodu
dxPickEdit1(7).Items.Clear
Set RsEtG = New Recordset
RsEtG.Open "Select CITY from LG_" & GFirma & "_CLCARD GROUP BY CITY ORDER BY CITY", CnnMlMain, adOpenDynamic, adLockOptimistic
   Do While Not RsEtG.EOF
         If IsNull(RsEtG.Fields(0)) = False And Len(RsEtG.Fields(0)) > 0 Then dxPickEdit1(7).Items.Add RsEtG.Fields(0)
   RsEtG.MoveNext
   Loop
RsEtG.Close
'iLÇESÝ
dxPickEdit1(9).Items.Clear
Set RsEtG = New Recordset
RsEtG.Open "Select LOWLEVELCODES1,CODE from LG_" & GFirma & "_CLCARD where CARDTYPE=4 AND PARENTCLREF=0 ", CnnMlMain, adOpenDynamic, adLockOptimistic
   Do While Not RsEtG.EOF
         If IsNull(RsEtG.Fields(0)) = False And Len(RsEtG.Fields(0)) > 0 Then dxPickEdit1(9).Items.Add RsEtG.Fields(0) & " - " & RsEtG.Fields(1)
   RsEtG.MoveNext
   Loop
RsEtG.Close
End Sub


Private Sub Command2_Click()
If Frame1.Caption = " Stok Kartlarý " Then
    Button = 2
    If Len(dxTextEdit1(0).DisplayText) <> 0 Then
        süz = dxTextEdit1(0) & "%"
        Set rstgenel = New Recordset
        rstgenel.Open "SELECT LOGICALREF,CODE,NAME fROM LG_" & GFirma & "_ITEMS where CODE like '" & süz & "' order by CODE", CnnMlMain, adOpenDynamic, adLockOptimistic
    End If
    If Len(dxTextEdit1(0).DisplayText) = 0 Then
        Set rstgenel = New Recordset
        rstgenel.Open "SELECT LOGICALREF,CODE,NAME fROM LG_" & GFirma & "_ITEMS order by CODE", CnnMlMain, adOpenDynamic, adLockOptimistic
    End If
    Set Grid1.DataSource = rstgenel
    grid1_label
    Frame6.Top = 930: Frame6.Left = 4980: Frame6.Visible = True
End If
If Frame1.Caption = " Muhasebe Kartlarý " Then
    Button = 6
    If Len(dxTextEdit1(0).DisplayText) <> 0 Then
        süz = dxTextEdit1(0) & "%"
        Set rstgenel = New Recordset
        rstgenel.Open "SELECT LOGICALREF,CODE,DEFINITION_ fROM LG_" & GFirma & "_EMUHACC where CODE like '" & süz & "' order by CODE", CnnMlMain, adOpenDynamic, adLockOptimistic
    End If
    If Len(dxTextEdit1(0).DisplayText) = 0 Then
        Set rstgenel = New Recordset
        rstgenel.Open "SELECT LOGICALREF,CODE,DEFINITION_ fROM LG_" & GFirma & "_EMUHACC order by CODE", CnnMlMain, adOpenDynamic, adLockOptimistic
    End If
    Set Grid1.DataSource = rstgenel
    grid1_label
    Frame6.Top = 930: Frame6.Left = 4980: Frame6.Visible = True
End If
End Sub
Sub grid1_label()
Grid1.Columns(0).Visible = False
Grid1.Columns(1).Width = 2000: Grid1.Columns(2).Width = 4100
Grid1.Columns(1).Caption = "Kodu": Grid1.Columns(2).Caption = "Açýklamasý"
If Grid1.ApproxCount < 25 Then Grid1.Height = 225 * Grid1.ApproxCount + 500 Else Grid1.Height = 6165
End Sub

Private Sub Command3_Click()
If Frame1.Caption = " Stok Kartlarý " Then
    Button = 3
    If Len(dxTextEdit1(1).DisplayText) <> 0 Then
        süz = dxTextEdit1(1) & "%"
        Set rstgenel = New Recordset
        rstgenel.Open "SELECT LOGICALREF,CODE,NAME fROM LG_" & GFirma & "_ITEMS where CODE like '" & süz & "' order by CODE", CnnMlMain, adOpenDynamic, adLockOptimistic
    End If
    If Len(dxTextEdit1(1).DisplayText) = 0 Then
        Set rstgenel = New Recordset
        rstgenel.Open "SELECT LOGICALREF,CODE,NAME fROM LG_" & GFirma & "_ITEMS order by CODE", CnnMlMain, adOpenDynamic, adLockOptimistic
    End If
    Set Grid1.DataSource = rstgenel
    grid1_label
    Frame6.Top = 930: Frame6.Left = 4980: Frame6.Visible = True
End If
If Frame1.Caption = " Muhasebe Kartlarý " Then
    Button = 7
    If Len(dxTextEdit1(1).DisplayText) <> 0 Then
        süz = dxTextEdit1(1) & "%"
        Set rstgenel = New Recordset
        rstgenel.Open "SELECT LOGICALREF,CODE,DEFINITION_ fROM LG_" & GFirma & "_EMUHACC where CODE like '" & süz & "' order by CODE", CnnMlMain, adOpenDynamic, adLockOptimistic
    End If
    If Len(dxTextEdit1(1).DisplayText) = 0 Then
        Set rstgenel = New Recordset
        rstgenel.Open "SELECT LOGICALREF,CODE,DEFINITION_ fROM LG_" & GFirma & "_EMUHACC order by CODE", CnnMlMain, adOpenDynamic, adLockOptimistic
    End If
    Set Grid1.DataSource = rstgenel
    grid1_label
    Frame6.Top = 930: Frame6.Left = 4980: Frame6.Visible = True
End If
End Sub

Private Sub Command4_Click()
Button = 4
If Len(dxTextEdit1(2).DisplayText) <> 0 Then
    süz = dxTextEdit1(2) & "%"
    Set rstgenel = New Recordset
    rstgenel.Open "SELECT LOGICALREF,CODE,DEFINITION_ fROM LG_" & GFirma & "_CLCARD where CODE like '" & süz & "' order by CODE", CnnMlMain, adOpenDynamic, adLockOptimistic
End If
If Len(dxTextEdit1(2).DisplayText) = 0 Then
    Set rstgenel = New Recordset
    rstgenel.Open "SELECT LOGICALREF,CODE,DEFINITION_ fROM LG_" & GFirma & "_CLCARD order by CODE", CnnMlMain, adOpenDynamic, adLockOptimistic
End If
Set Grid1.DataSource = rstgenel
grid1_label
Frame6.Top = 930: Frame6.Left = 2820: Frame6.Visible = True
End Sub

Private Sub Command5_Click()
Button = 5
If Len(dxTextEdit1(3).DisplayText) <> 0 Then
    süz = dxTextEdit1(2) & "%"
    Set rstgenel = New Recordset
    rstgenel.Open "SELECT LOGICALREF,CODE,DEFINITION_ fROM LG_" & GFirma & "_CLCARD where CODE like '" & süz & "' order by CODE", CnnMlMain, adOpenDynamic, adLockOptimistic
End If
If Len(dxTextEdit1(3).DisplayText) = 0 Then
    Set rstgenel = New Recordset
    rstgenel.Open "SELECT LOGICALREF,CODE,DEFINITION_ fROM LG_" & GFirma & "_CLCARD order by CODE", CnnMlMain, adOpenDynamic, adLockOptimistic
End If
Set Grid1.DataSource = rstgenel
grid1_label
Frame6.Top = 930: Frame6.Left = 2820: Frame6.Visible = True
End Sub
                 

Private Sub dxDB_OnDblClick()
If dxDB.Count = 0 Then Exit Sub
dxTextEdit1(Button) = dxDB.Columns(1).Value
dxDB.Visible = False
End Sub

Private Sub dxDB_OnKeyDown(KeyCode As Integer, ByVal Shift As Long)
If KeyCode = vbKeyEscape Then
     dxDB.Visible = False
End If
End Sub

Private Sub dxPickEdit1_CloseUp(Index As Integer, AcceptValue As Boolean, Value As Variant)
If Index = 9 Then
     dxPickEdit1(11) = Empty
     dxPickEdit1(11).Items.Clear
     Set RsEtG = New Recordset
     RsEtG.Open "Select LOWLEVELCODES2,CODE from LG_" & GFirma & "_CLCARD where CARDTYPE=4 AND PARENTCLREF>0 and LOWLEVELCODES1=" & Val(Value) & " ", CnnMlMain, adOpenDynamic, adLockOptimistic
        Do While Not RsEtG.EOF
              If IsNull(RsEtG.Fields(0)) = False And Len(RsEtG.Fields(0)) > 0 Then dxPickEdit1(11).Items.Add RsEtG.Fields(0) & " - " & RsEtG.Fields(1)
        RsEtG.MoveNext
        Loop
     RsEtG.Close
Else
     If Value = "ARASI" Then Label1(5).Visible = True: dxTextEdit1(1).Visible = True: Label1(14).Visible = True: dxTextEdit1(3).Visible = True: Command3.Visible = True Else Label1(5).Visible = False: dxTextEdit1(1).Visible = False: Label1(14).Visible = False: dxTextEdit1(3).Visible = False: Command3.Visible = False
End If
End Sub

Private Sub dxPickEdit2_CloseUp(Index As Integer, AcceptValue As Boolean, Value As Variant)
Select Case Index
Case 0
   GFirma = Value 'dxPickEdit2(0).EditValue
   'DÖNEM bilgileri yükleniyor
   dxPickEdit2(1).Items.Clear
   Set RsEtG = New Recordset
   RsEtG.Open "SELECT NR FROM L_CAPIPERIOD where FIRMNR = " & GFirma & " order by nr", CnnMlMain, adOpenDynamic, adLockOptimistic
   Do While Not RsEtG.EOF
      Select Case Len(RsEtG.Fields(0))
      Case 1
         dxPickEdit2(1).Items.Add "0" & RsEtG.Fields(0) ' & " - " & RsEtG.Fields(1)
      Case 2
         dxPickEdit2(1).Items.Add RsEtG.Fields(0) ' & " - " & RsEtG.Fields(1)
      End Select
   RsEtG.MoveNext
   Loop
   RsEtG.Close
   'AMBAR bilgileri yükleniyor
   List1.Clear
   Set RsEtG = New Recordset
   RsEtG.Open "SELECT NR,NAME FROM L_CAPIWHOUSE where FIRMNR = " & GFirma & " order by nr", CnnMlMain, adOpenDynamic, adLockOptimistic
   Do While Not RsEtG.EOF
         List1.AddItem RsEtG.Fields(0) & " - " & RsEtG.Fields(1)
   RsEtG.MoveNext
   Loop
   RsEtG.Close
Case 1
   GDonem = Value
End Select
End Sub

Private Sub dxSideBar1_OnClickItemLink(ByVal pGroup As DXSIDEBARLibCtl.IdxGroup, ByVal pLink As DXSIDEBARLibCtl.IdxItemLink, ByVal GroupIndex As Integer, ByVal ItemLinkIndex As Integer)
iLkVurus = iLkVurus + 1
STeMizle
GelenId = GroupIndex & ItemLinkIndex
Select Case GroupIndex
Case 0
   Frame1.Caption = " Stok Kartlarý "
   Frame3.Caption = " Ambarlar "
   If iLkVurus = 1 Then SStok_Yukle: SAmbar_Yukle Else If GidenID <> 0 Then SStok_Yukle: SAmbar_Yukle
      Select Case ItemLinkIndex
      Case 0 'Basic Stok Raporu
        Call SUrun_Ac(True, True, True, False, False, False)
        Label3.Caption = "Seçtiðiniz Tarihteki Seçilen Ambara Göre Malzeme Devir ve Stok Miktari Bilgilerini Verir."
      Case 1 'Basic Stok Raporu
        Call SUrun_Ac(True, True, True, False, False, False)
        Label3.Caption = "Seçtiðiniz Tarihteki Seçilen Ambara Göre Malzeme Devir ve Stok Miktari Bilgilerini Grup Kodu, Özel Koda Göre Verir."
      Case 2 'Ürün Durum Raporu
         'üRÜN DETAYI
         Call SUrun_Ac(True, True, True, False, True, True)
         Label3.Caption = "Dönem Aralýðý ve Ürün Aralýðý Seçimi Yapýlarak Dönem Baþý, Dönem Sonu Stok ve Dönem Aralýðýndaki Alýþ, Satýþ Bilgilerini Verir."
      Case 3 'FÝYAT LÝST
        'üRÜN DETAYI
        Call SUrun_Ac(True, False, False, False, True, True)
        Label3.Caption = "Malzeme Alým Fiyat Listesini Verir."
      Case 4 'FÝYAT LÝST
        'üRÜN DETAYI
        Call SUrun_Ac(True, False, False, False, True, True)
        Label3.Caption = "Malzeme Satiþ Fiyat Listesini Verir."
      Case 5 'Ürün Durum Raporu
         'üRÜN DETAYI
        Call SUrun_Ac(True, True, True, False, True, True)
        Label3.Caption = "Dönem Aralýðý ve Ürün Aralýðý Seçimi Yapýlarak Dönem Baþý, Dönem Sonu Stok ve Dönem Aralýðýndaki Alýþ, Satýþ Bilgilerini Verir.(Ambar Toplamlý)"
      Case 6 'Basic Stok Raporu
        Call SUrun_Ac(True, False, True, False, True, True)
        Label3.Caption = "Üretici Alanýna Göre Dönem Aralýðý ve Ürün Aralýðý Seçimi Yapýlarak Dönem Baþý, Dönem Sonu Stok ve Dönem Aralýðýndaki Alýþ, Satýþ Bilgilerini Verir."
      Case 7 'Basic Envanter Stok Raporu
        Call SUrun_Ac(True, True, True, False, False, False)
        Label3.Caption = "Seçtiðiniz Tarihteki Seçilen Ambara Göre Ürün Envanter Bilgilerini Verir."

      End Select

Case 1 'cari raporlarý
   Frame1.Caption = " Cari Kartlarý "
   If GidenID <> 1 Then SCari_Yukle: SStatu_Yukle
      Select Case ItemLinkIndex
      Case 0 'Cari Hareket Raporu
            Call SUrun_Ac(False, False, True, True, True, True)
            Label3.Caption = "Cari Gruplamanýza Göre Seçim Tarihinizdeki Cari Hareket Bilgilerini Verir."
      Case 1 'Ödeme Raporu
            Frame3.Caption = " Ç / S Durumu "
            Call SUrun_Ac(False, True, True, True, True, True)
            Label3.Caption = "Cari Gruplamanýza Göre Seçim Tarihinizdeki Çek Hareketlerini Verir ."
      Case 2 'borç alacak Deðerleme
            Call SUrun_Ac(False, False, True, True, True, True)
            Label3.Caption = "Cari Gruplamanýza Göre Seçim Tarihinizdeki Borç Alacak Toplamýný Verir."
      Case 3 'genel tahsilat
            Call SUrun_Ac(False, False, False, True, True, True)
            Label3.Caption = "Cari Gruplamanýza Göre Tahsilat Bilgilerini Verir."
      Case 4 'genel tahsilat
            Call SUrun_Ac(False, False, True, True, True, True)
            Label3.Caption = "Cari Gruplamanýza Göre Seçim Tarihinizdeki Ödeme Hareketlerini Verir."
      Case 5 'Özel Rapor seyhan daðýtým
            Call SUrun_Ac(False, False, False, True, True, True)
            Label3.Caption = "Cari Gruplamanýza Göre Seçim Tarihinizdeki Ödeme Hareketlerini Verir."
      
      End Select
'Case 2 'kasa raporlarý
'   Frame1.Caption = " Muhasebe Kartlarý "
'   Frame3.Caption = " Kasalar "
'   If GidenID <> 2 Then SMKoD_Yukle: SKasa_Yukle
'      Select Case ItemLinkIndex
'      Case 0 'kasa Hareket Raporu
'        Label1(2).Visible = False: Label1(11).Visible = False: Label1(21).Visible = False
'        dxPickEdit1(2).Visible = False: dxPickEdit1(5).Visible = False: dxPickEdit1(10).Visible = False
'        Call SUrun_Ac(True, True, True, False, True, True)
'         Load FrMRaporAck
'        FrMRaporAck.Show
'        FrMRaporAck.Label1.Caption = "Muhasebe Kartý Gruplamanýza Göre Seçim Tarihinizdeki Kasa Hareket Bilgilerini Verir."
'      End Select
Case 2
   Select Case ItemLinkIndex
   Case 0 'kasa Hareket Raporu
        If GidenID <> 3 Then SStok_Yukle: SCari_Yukle
        Frame1.Caption = " Stok Kartlarý "
        Call SUrun_Ac(True, False, True, True, True, True)
        Label3.Caption = "Cari Gruplamanýza Göre Seçim Tarihinizdeki Alýþ/Satýþ Bilgilerini Verir."

   Case 1 'SATICI Raporu
        If GidenID <> 3 Then SStok_Yukle: SCari_Yukle
        Frame1.Caption = " Stok Kartlarý "
        Call SUrun_Ac(True, False, True, True, True, True)
        Label3.Caption = "Cari Gruplamanýza Göre Seçim Tarihinizdeki Satýþ Bilgilerini Verir."

   Case 2 'son satýþ fiyat
        Call SUrun_Ac(True, False, True, True, True, True)
        If GidenID <> 3 Then SCari_Yukle: SStok_Yukle
        Label3.Caption = "Son Satýþ Fiyat Bilgilerini Verir."
      Frame4.Visible = True
   Case 3 'eleman bazlý satýþ
        'SEleman_Yukle
        List1.Clear
        Set RsEtG = New Recordset
        RsEtG.Open "SELECT NAME FROM LG_" & GFirma & "_PROJECT WHERE SPECODE='PAZ' order by code ", CnnMlMain, adOpenDynamic, adLockOptimistic
        Do While Not RsEtG.EOF
              List1.AddItem RsEtG.Fields(0)
        RsEtG.MoveNext
        Loop
        RsEtG.Close
        Call SUrun_Ac(True, True, True, True, True, True)
        If GidenID <> 3 Then SCari_Yukle: SStok_Yukle
        Frame3.Caption = " Elemanlar "
        Label3.Caption = "Eleman Bazlý Satýþ Bilgilerini Verir."
        Frame4.Visible = True
   Case 4 'Özel Gruplu Satýþ
        If GidenID <> 3 Then SStok_Yukle: SCari_Yukle
        Frame1.Caption = " Stok Kartlarý "
        Call SUrun_Ac(True, False, True, True, True, True)
        Label3.Caption = "Özel Kod Gruplu Cari Gruplamanýza Göre Seçim Tarihinizdeki Alýþ/Satýþ Bilgilerini Verir."
   Case 5 'Özel Gruplu Aylýk Satýþ Karþýlaþtýrmasý
        'If GidenID <> 3 Then SStok_Yukle: SCari_Yukle
        'Frame1.Caption = " Stok Kartlarý "
        Call SUrun_Ac(False, False, True, False, True, True)
        Label3.Caption = "Özel Kod Gruplu Aylýk Seçim Tarihinizdeki Alýþ/Satýþ Bilgilerini Karþýlaþtýrmalý Verir."
   Case 6 'kasa Hareket Raporu
        If GidenID <> 3 Then SStok_Yukle: SCari_Yukle
        Frame1.Caption = " Stok Kartlarý "
        Call SUrun_Ac(True, False, True, True, True, True)
        Label3.Caption = "Seçim Tarihinizdeki Bölgesel Satýþ Bilgilerini Verir."
   Case 7 'kasa Hareket Raporu
        If GidenID <> 3 Then SStok_Yukle: SCari_Yukle
        Frame1.Caption = " Stok Kartlarý "
        Call SUrun_Ac(True, False, True, True, True, True)
        Label3.Caption = "Genel Satýþ Bilgilerini Verir."

    End Select
Case 3
   Select Case ItemLinkIndex 'satýn alma raporlarý __________________________________________________________
   Case 0 'Satýþ Raporu
        If GidenID <> 4 Then SCari_Yukle: SStok_Yukle
        Call SUrun_Ac(True, False, True, True, True, True)
        Label3.Caption = "Cari Gruplamanýza Göre Seçim Tarihinizdeki Satýþ Bilgilerini Verir."
        Frame4.Visible = True
   Case 1 'Satýþ Raporu
        If GidenID <> 4 Then SCari_Yukle: SStok_Yukle
        Call SUrun_Ac(True, False, True, True, True, True)
        Label3.Caption = "Cari Gruplamanýza Göre Seçim Tarihinizdeki Satýþ Bilgilerini Verir."
        Frame4.Visible = True
   Case 2 'Satýþ Raporu
        Call SUrun_Ac(True, False, True, True, True, True)
        If GidenID <> 4 Then SCari_Yukle: SStok_Yukle
        Label3.Caption = "Cari Gruplamanýza Göre Seçim Tarihinizdeki Satýþ Bilgilerini Verir."
        Frame4.Visible = True
   Case 3 'son alýþ fiyat
        Call SUrun_Ac(True, False, True, True, True, True)
        If GidenID <> 4 Then SCari_Yukle: SStok_Yukle
        Label3.Caption = "Son Alýþ Fiyat Bilgilerini Verir."
        Frame4.Visible = True
   Case 4 'Satýþ Raporu
        Call SUrun_Ac(True, False, True, True, True, True)
        If GidenID <> 4 Then SCari_Yukle: SStok_Yukle
        Label3.Caption = "Cari Gruplamanýza Göre Seçim Tarihinizdeki Satýþ Bilgilerini Verir."
        Frame4.Visible = True
   End Select
Case 4
     If GelenId <> 410 Then
          If GidenID <> 5 Then SCari_Yukle: SStok_Yukle: SEleman_Yukle
          Frame3.Caption = " Elemanlar "
     End If
   Select Case ItemLinkIndex
   Case 0 'Satýþ Raporu
        Call SUrun_Ac(True, True, True, True, True, True)
        Label3.Caption = "Cari Gruplamanýza Göre Seçim Tarihinizdeki Satýþ Bilgilerini Verir."
        Frame4.Visible = True
   Case 1 'Satýþ Raporu
        Call SUrun_Ac(True, True, True, True, True, True)
        Label3.Caption = "Cari Gruplamanýza Göre Seçim Tarihinizdeki Satýþ Bilgilerini Verir."
        Frame4.Visible = True
   Case 2 'Satýþ Raporu
        Call SUrun_Ac(True, True, True, True, True, True)
        Label3.Caption = "Cari Gruplamanýza Göre Seçim Tarihinizdeki Satýþ Bilgilerini Verir."
        Frame4.Visible = True
   Case 3 'GÜNLÜK
        Call SUrun_Ac(False, False, False, False, False, False)
        Label3.Caption = "Seçim Tarihinizdeki Hareket Listesini Verir."
        Frame4.Visible = True
   Case 4 'hareketi olmayan cari
        Call SUrun_Ac(False, False, True, True, True, True)
        Label3.Caption = "Cari Gruplamanýza Göre Seçim Tarihinizdeki Hareket Görmeyen Cari Listesini Verir."
        Frame4.Visible = True
   Case 5 'Satýþ Raporu
        Call SUrun_Ac(True, True, True, True, True, True)
        Label3.Caption = "Cari Gruplamanýza Göre Seçim Tarihinizdeki Satýþ Bilgilerini Verir."
        Frame4.Visible = True
   Case 6 'Satýþ Raporu
        Call SUrun_Ac(True, True, True, True, True, True)
        Label3.Caption = "Cari Gruplamanýza Göre Seçim Tarihinizdeki Satýþ Bilgilerini Verir."
        Frame4.Visible = True
   Case 7 'Satýþ Raporu
        Call SUrun_Ac(True, True, True, True, True, True)
        Label3.Caption = "Cari Gruplamanýza Göre Seçim Tarihinizdeki Satýþ Bilgilerini Verir."
        Frame4.Visible = True
   Case 8 'Hareketi olmayan Stok
        Call SUrun_Ac(True, False, True, False, True, False)
        Label3.Caption = "Stok Gruplamanýza Göre Seçim Tarihinizdeki Hareket Görmeyen Stok Listesini Verir."
   Case 9 'masraf raporu
        CrT.Reset
        CrT.ReportFileName = App.Path & "\HizmetRap.rpt"
        CrT.WindowShowGroupTree = False: CrT.WindowAllowDrillDown = False: CrT.WindowShowRefreshBtn = False
        'CrT.ReportTitle = dxDateEdit1 & " Tarihli Stok Raporu"
        CrT.WindowAllowDrillDown = False
        CrT.WindowShowGroupTree = False
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.WindowState = crptMaximized
        'CrT.ReportTitle = dxDateEdit1 & " Tarihli Durum Raporu"
        CrT.RetrieveDataFiles
        CrT.Action = 1
   Case 10 'masraf raporu
        Call SUrun_Ac(False, False, True, False, False, False)
        Label3.Caption = "Seçtiðiniz Tarihteki Günlük Envanter Bilginizi Verir..."
        dxDateEdit1 = Date

''''        CrT.Reset
''''        CrT.ReportFileName = App.Path & "\HizmetRap06.rpt"
''''        CrT.WindowShowGroupTree = False: CrT.WindowAllowDrillDown = False: CrT.WindowShowRefreshBtn = False
''''        'CrT.ReportTitle = dxDateEdit1 & " Tarihli Stok Raporu"
''''        CrT.WindowAllowDrillDown = False
''''        CrT.WindowShowGroupTree = False
''''        CrT.WindowShowPrintSetupBtn = True
''''        CrT.WindowShowRefreshBtn = True
''''        CrT.WindowState = crptMaximized
''''        'CrT.ReportTitle = dxDateEdit1 & " Tarihli Durum Raporu"
''''        CrT.RetrieveDataFiles
''''        CrT.Action = 1
   
   End Select
Case 5 'özel raporlar
     Select Case ItemLinkIndex
     Case 0 'kasa Hareket Raporu
          SCari_Yukle
          Call SUrun_Ac(False, False, False, True, True, True)
          Option1(3).Caption = "DMC": Option1(4).Caption = "DLP": Option1(5).Caption = "Hepsi"
          Option1(5).Value = True
          Label3.Caption = "Cari Gruplamanýza Göre Özel Envanter Raporunuzu Verir."
          
      Case 1 'Cari Hareket Raporu
          SCari_Yukle
          Call SUrun_Ac(False, False, True, True, True, True)
          Label3.Caption = "Cari Gruplamanýza Göre Seçim Tarih Aralýðýnýzdaki Cari Hareket Bilgilerini Verir."
      Case 2 'Cari Bakiye Raporu
          SCari_Yukle
          Call SUrun_Ac(False, False, True, True, True, True)
          Label3.Caption = "Cari Gruplamanýza Göre Seçim Tarih Aralýðýnýzdaki Cari Bakiye Bilgilerini Verir."
          Option1(3).Caption = "Bakiye": Option1(4).Caption = "Borç": Option1(5).Caption = "Alacak"
      Case 3 'Basic Stok Raporu
        Call SUrun_Ac(True, True, True, False, False, False)
        Label3.Caption = "Seçtiðiniz Tarihteki Ýç Ambarlara Göre Güncel Stok Bilgilerini Verir."
      Case 4 'Basic Stok Raporu
        Call SUrun_Ac(True, True, True, False, False, False)
        Label3.Caption = "Seçtiðiniz Tarihteki Dýþ Ambarlara Göre Güncel Stok Bilgilerini Verir."
     End Select
Case 6 'FÝRMA ÖZEL
'    Label1(2).Visible = False: Label1(11).Visible = False: Label1(21).Visible = False
'    dxPickEdit1(2).Visible = False: dxPickEdit1(5).Visible = False: dxPickEdit1(10).Visible = False
'    Frame1.Caption = " Muhasebe Kartlarý "
    Select Case ItemLinkIndex
    Case 0 'Genel TAHSÝLAT
        SEleman_Yukle
        Call SUrun_Ac(False, True, True, True, True, True)
        If GidenID <> 3 Then SCari_Yukle: SStok_Yukle
        Frame3.Caption = " Elemanlar "
        Label3.Caption = "Eleman Bazlý Tahsilat Bilgilerini Verir."
        Frame4.Visible = True
    Case 1 'mahsupla faturanýn karþýlaþtýrmasý
        Call SUrun_Ac(False, False, True, False, True, False)
        'If GidenID <> 3 Then SCari_Yukle: SStok_Yukle
        Frame3.Caption = " Elemanlar "
        Label3.Caption = "Eleman Bazlý Masraf Bilgilerini Verir."
        Frame4.Visible = True
    Case 2 'mahsupla faturanýn karþýlaþtýrmasý
        Call SUrun_Ac(False, False, True, False, True, False)
        'If GidenID <> 3 Then SCari_Yukle: SStok_Yukle
        Frame3.Caption = " Elemanlar "
        Label3.Caption = "Eleman Bazlý Masraf Bilgilerini Verir."
        Frame4.Visible = True
    Case 3 'mahsupla faturanýn karþýlaþtýrmasý
        SEleman_Yukle
        Call SUrun_Ac(False, True, True, False, True, False)
        'If GidenID <> 3 Then SCari_Yukle: SStok_Yukle
        Frame3.Caption = " Elemanlar "
        Label3.Caption = "Eleman Bazlý Masraf Bilgilerini Verir."
        Frame4.Visible = True
   End Select
Case 7
    If GidenID <> 7 Then SCari_Yukle: SStok_Yukle
   Select Case ItemLinkIndex
   Case 0 'Satýþ Raporu
      Call SUrun_Ac(True, False, True, True, True, True)
       Load FrMRaporAck
        FrMRaporAck.Show
        FrMRaporAck.Label1.Caption = "Cari ve Stok Gruplamanýza Göre Seçim Tarihinizdeki Alýnan Sipariþ Bilgilerini Verir."
      Frame4.Visible = True
   Case 1 'Satýþ Raporu
      Call SUrun_Ac(True, False, True, True, True, True)
       Load FrMRaporAck
        FrMRaporAck.Show
        FrMRaporAck.Label1.Caption = "Cari ve Stok Gruplamanýza Göre Seçim Tarihinizdeki Verilen Sipariþ Bilgilerini Verir."
      Frame4.Visible = True
    Case 2 'Satýþ Raporu
      Call SUrun_Ac(True, False, True, True, True, True)
       Load FrMRaporAck
        FrMRaporAck.Show
        FrMRaporAck.Label1.Caption = "Cari ve Stok Gruplamanýza Göre Seçim Tarihinizdeki Alýnan Sipariþ Bilgilerini Verir."
      Frame4.Visible = True
   Case 3 'Satýþ Raporu
      Call SUrun_Ac(True, False, True, True, True, True)
       Load FrMRaporAck
        FrMRaporAck.Show
        FrMRaporAck.Label1.Caption = "Cari ve Stok Gruplamanýza Göre Seçim Tarihinizdeki Verilen Sipariþ Bilgilerini Verir."
      Frame4.Visible = True

    End Select
End Select
GidenID = GroupIndex
End Sub
Sub SUrun_Ac(F1 As Boolean, F3 As Boolean, F4 As Boolean, F5 As Boolean, Labe1 As Boolean, Labe2 As Boolean)
   'üRÜN DETAYI
   Frame1.Top = 1170: Frame1.Left = 3600: Frame1.Height = 495: Frame1.Width = 3795
   Frame1.Visible = F1
   'AMBAR DETAYI
   Frame3.Top = 1170: Frame3.Left = 7395: Frame3.Height = 495: Frame3.Width = 2625
   Frame3.Visible = F3
   If Frame3.Visible = True Then If List1.ListCount > 0 Then List1.Selected(0) = True
   'TARIH DETAYI
   Frame4.Top = 1170: Frame4.Left = 10020: Frame4.Height = 495: Frame4.Width = 1725
   Frame4.Visible = F4
   'carý DETAYI
   Frame5.Top = 1170: Frame5.Left = 11745: Frame5.Height = 495: Frame5.Width = 1925
   Frame5.Visible = F5
   
   Label1(6).Visible = Labe1: dxDateEdit2.Visible = Labe1
End Sub

Private Sub dxTextEdit1_DblClick(Index As Integer)
Button = Index
Select Case Index
Case 2
     If Len(dxTextEdit1(2).DisplayText) <> 0 Then
         süz = dxTextEdit1(2) & "%"
         SQLSTR = "SELECT LOGICALREF,CODE,DEFINITION_ fROM LG_" & GFirma & "_CLCARD where CODE like '" & süz & "' order by CODE"
     Else
          SQLSTR = "SELECT LOGICALREF,CODE,DEFINITION_ fROM LG_" & GFirma & "_CLCARD order by CODE"
     End If
     Set RsetV = New Recordset
     RsetV.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
     'MsgBox SqLStR
     Set dxDB.DataSource = RsetV
     dxDB.Columns.RetrieveFields
     dxDB.Dataset.Active = True
     dxDB.KeyField = "LOGICALREF"
     SGridDuzenle
Case 3
     If Len(dxTextEdit1(2).DisplayText) <> 0 Then
         süz = dxTextEdit1(2) & "%"
         SQLSTR = "SELECT LOGICALREF,CODE,DEFINITION_ fROM LG_" & GFirma & "_CLCARD where DEFINITION_ like '" & süz & "' order by DEFINITION_"
     Else
          SQLSTR = "SELECT LOGICALREF,CODE,DEFINITION_ fROM LG_" & GFirma & "_CLCARD order by DEFINITION_"
     End If
     Set RsetV = New Recordset
     RsetV.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
     'MsgBox SqLStR
     Set dxDB.DataSource = RsetV
     dxDB.Columns.RetrieveFields
     dxDB.Dataset.Active = True
     dxDB.KeyField = "LOGICALREF"
     SGridDuzenle

End Select

End Sub

Private Sub dxTextEdit1_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
If KeyCode <> vbKeyF10 Then Exit Sub
Button = Index
Select Case Index
Case 2
     If Len(dxTextEdit1(2).DisplayText) <> 0 Then
         süz = dxTextEdit1(2) & "%"
         SQLSTR = "SELECT LOGICALREF,CODE,DEFINITION_ fROM LG_" & GFirma & "_CLCARD where CODE like '" & süz & "' order by CODE"
     Else
          SQLSTR = "SELECT LOGICALREF,CODE,DEFINITION_ fROM LG_" & GFirma & "_CLCARD order by CODE"
     End If
     Set RsetV = New Recordset
     RsetV.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
     'MsgBox SqLStR
     Set dxDB.DataSource = RsetV
     dxDB.Columns.RetrieveFields
     dxDB.Dataset.Active = True
     dxDB.KeyField = "LOGICALREF"
     SGridDuzenle
Case 3
     If Len(dxTextEdit1(2).DisplayText) <> 0 Then
         süz = dxTextEdit1(2) & "%"
         SQLSTR = "SELECT LOGICALREF,CODE,DEFINITION_ fROM LG_" & GFirma & "_CLCARD where DEFINITION_ like '" & süz & "' order by DEFINITION_"
     Else
          SQLSTR = "SELECT LOGICALREF,CODE,DEFINITION_ fROM LG_" & GFirma & "_CLCARD order by DEFINITION_"
     End If
     Set RsetV = New Recordset
     RsetV.Open SQLSTR, CnnMlMain, adOpenStatic, adLockReadOnly
     'MsgBox SqLStR
     Set dxDB.DataSource = RsetV
     dxDB.Columns.RetrieveFields
     dxDB.Dataset.Active = True
     dxDB.KeyField = "LOGICALREF"
     SGridDuzenle

End Select
End Sub
Sub SGridDuzenle()
With dxDB
    For i = 0 To .Columns.Count - 1: .Columns(i).Visible = False: Next
     .Columns(1).Visible = True: .Columns(1).Caption = "Kodu": .Columns(2).Width = 140: .Columns(1).DisableFilter = True
     .Columns(2).Visible = True: .Columns(2).Caption = "Açýklamasý": .Columns(2).Width = 280: .Columns(2).DisableFilter = True
     .Height = 6555: .Left = 3600: .Top = 1170: .Width = 8235
     .Visible = True
End With
End Sub

Private Sub Form_Load()
If Year(Date) > 2010 Then End

Unload FrMRaporBegin
MesaJ = "ment@lsoft - For The Orginal Solutions..."
dxDateEdit1 = "01/01/10"
dxDateEdit2 = Date
'datayerini text dosyadan alýyor
F_Konum_Al
'dataya baglanýyor
Set CnnMlMain = New Connection
CnnMlMain.CursorLocation = adUseClient
CnnMlMain.Open "Provider=SQLOLEDB.1;Password='" & GUserPass & "';Persist Security Info=False;User ID='" & GUserName & "';Initial Catalog=" & GKatalog & ";Data Source=" & GipNo & ";Connect Timeout=420"
     
'Set RsEtG = New Recordset
'RsEtG.Open "SELECT * FROM LG_" & GFirma & "_ITEMS WHERE CAPIBLOCK_CREADEDDATE >= '01/01/2006' ", CnnMlMain, adOpenDynamic, adLockOptimistic
'If RsEtG.RecordCount > 0 Then End
'RsEtG.Close

Me.Caption = GName & " - Firma No : " & GFirma & " .Dönemi : " & GDonem
Label2.Caption = GName
'firma bilgileri yükleniyor
Set RsEtG = New Recordset
RsEtG.Open "SELECT NR,NAME FROM L_CAPIFIRM order by nr", CnnMlMain, adOpenDynamic, adLockOptimistic
Do While Not RsEtG.EOF
   Select Case Len(RsEtG.Fields(0))
   Case 1
      dxPickEdit2(0).Items.Add "00" & RsEtG.Fields(0) ' & " - " & RsEtG.Fields(1)
   Case 2
      dxPickEdit2(0).Items.Add "0" & RsEtG.Fields(0) ' & " - " & RsEtG.Fields(1)
   Case 3
      dxPickEdit2(0).Items.Add RsEtG.Fields(0) ' & " - " & RsEtG.Fields(1)
   End Select
RsEtG.MoveNext
Loop
iLkVurus = 0
RsEtG.Close
dxPickEdit2(0).EditValue = GFirma
dxPickEdit2(1).EditValue = GDonem
'DÖNEM bilgileri yükleniyor
Set RsEtG = New Recordset
RsEtG.Open "SELECT NR FROM L_CAPIPERIOD where FIRMNR = " & GFirma & " order by nr", CnnMlMain, adOpenDynamic, adLockOptimistic
Do While Not RsEtG.EOF
   Select Case Len(RsEtG.Fields(0))
   Case 1
      dxPickEdit2(1).Items.Add "0" & RsEtG.Fields(0) ' & " - " & RsEtG.Fields(1)
   Case 2
      dxPickEdit2(1).Items.Add RsEtG.Fields(0) ' & " - " & RsEtG.Fields(1)
   End Select
RsEtG.MoveNext
Loop
RsEtG.Close
dxPickEdit1(5).Items.Add "0" & " - Kullanýmda"
dxPickEdit1(5).Items.Add "1" & " - Kullaným Dýþý"
STeMizle

'Frame1.Height = 495: Frame1.Left = 1770: Frame1.Top = 780: Frame1.Width = 1935
'Frame3.Height = 495: Frame3.Left = 3750: Frame3.Top = 780: Frame3.Width = 2625
'Frame4.Height = 495: Frame4.Left = 6420: Frame4.Top = 780: Frame4.Width = 1725
'Frame5.Height = 495: Frame5.Left = 8190: Frame5.Top = 780: Frame5.Width = 1935


End Sub
Function F_Konum_Al()
Dim isim(14) As String
On Error GoTo HATA
    Open App.Path & "\Mental.ini" For Input As #1
        Do While Not EOF(1)
            say = say + 1
            Line Input #1, isim(say)
        Loop
    Close #1
GKatalog = isim(1)
GipNo = isim(2)
GFirma = isim(3)
GDonem = isim(4)
GName = isim(5)
GUserName = isim(6)
GUserPass = isim(7)

Exit Function
HATA:

If Err = 53 Then
    MsgBox "Açýlýþ Dosyasý Bulunamadýðý için Sistem Giriþiniz Kabul Edilemiyor", vbCritical, GMesaj
    End
End If
MsgBox "Açýlýþ Dosya Hatasý Sisteme Yeniden Baðlanmayý Deneyiniz Hata Açýlýmý : " & Err, vbCritical, GMesaj
End Function

Private Sub Frame1_DblClick()
If Frame1.Height < 500 Then Frame1.Height = 6645 Else Frame1.Height = 495
End Sub

Private Sub Frame3_DblClick()
If Frame3.Height < 500 Then Frame3.Height = 6645 Else Frame3.Height = 495

End Sub

Private Sub Frame4_DblClick()
If Frame4.Height < 500 Then Frame4.Height = 6645 Else Frame4.Height = 495

End Sub

Private Sub Frame5_DblClick()
If Frame5.Height < 500 Then Frame5.Height = 6645 Else Frame5.Height = 495

End Sub

Private Sub Grid1_DblClick()
Select Case Button
Case 2
    dxTextEdit1(0).EditValue = Grid1.Columns(1): Frame6.Visible = False
Case 3
    dxTextEdit1(1).EditValue = Grid1.Columns(1): Frame6.Visible = False
Case 4
    dxTextEdit1(2).EditValue = Grid1.Columns(1): Frame6.Visible = False
Case 5
    dxTextEdit1(3).EditValue = Grid1.Columns(1): Frame6.Visible = False
Case 6
    dxTextEdit1(0).EditValue = Grid1.Columns(1): Frame6.Visible = False
Case 7
    dxTextEdit1(1).EditValue = Grid1.Columns(1): Frame6.Visible = False
End Select
End Sub

Private Sub Grid1_HeadClick(ByVal ColIndex As Integer)
Select Case Button
Case 2, 3
    Frame6.Caption = Empty
    Text4.Text = Empty
    Text4.SetFocus
    Select Case ColIndex
    Case 1
        secim = "KODU"
        tik = tik + 1
        If tik = 1 Then
            Set rstgenel = New Recordset
            rstgenel.Open "SELECT LOGICALREF,CODE,name fROM LG_" & GFirma & "_ITEMS order by CODE ASC", CnnMlMain, adOpenDynamic, adLockOptimistic
            Set Grid1.DataSource = rstgenel
            grid1_label
        Else
            Set rstgenel = New Recordset
            rstgenel.Open "SELECT LOGICALREF,CODE,NAME fROM LG_" & GFirma & "_ITEMS order by CODE desc", CnnMlMain, adOpenDynamic, adLockOptimistic
            Set Grid1.DataSource = rstgenel
            grid1_label
            tik = 0
        End If
    Case 2
        secim = "ACIKLAMA"
        tik = tik + 1
        If tik = 1 Then
            Set rstgenel = New Recordset
            rstgenel.Open "SELECT LOGICALREF,CODE,NAME fROM LG_" & GFirma & "_ITEMS order by NAME ASC", CnnMlMain, adOpenDynamic, adLockOptimistic
            Set Grid1.DataSource = rstgenel
            grid1_label
        Else
            Set rstgenel = New Recordset
            rstgenel.Open "SELECT LOGICALREF,CODE,NAME fROM LG_" & GFirma & "_ITEMS order by NAME desc", CnnMlMain, adOpenDynamic, adLockOptimistic
            Set Grid1.DataSource = rstgenel
            grid1_label
            tik = 0
        End If
    End Select
Case 4, 5
    Frame6.Caption = Empty
    Text4.Text = Empty
    Text4.SetFocus
    Select Case ColIndex
    Case 1
        secim = "KODU"
        tik = tik + 1
        If tik = 1 Then
            Set rstgenel = New Recordset
            rstgenel.Open "SELECT LOGICALREF,CODE,DEFINITION_ fROM LG_" & GFirma & "_CLCARD order by CODE ASC", CnnMlMain, adOpenDynamic, adLockOptimistic
            Set Grid1.DataSource = rstgenel
            grid1_label
        Else
            Set rstgenel = New Recordset
            rstgenel.Open "SELECT LOGICALREF,CODE,DEFINITION_ fROM LG_" & GFirma & "_CLCARD order by CODE desc", CnnMlMain, adOpenDynamic, adLockOptimistic
            Set Grid1.DataSource = rstgenel
            grid1_label
            tik = 0
        End If
    Case 2
        secim = "ACIKLAMA"
        tik = tik + 1
        If tik = 1 Then
            Set rstgenel = New Recordset
            rstgenel.Open "SELECT LOGICALREF,CODE,DEFINITION_ fROM LG_" & GFirma & "_CLCARD order by DEFINITION_ ASC", CnnMlMain, adOpenDynamic, adLockOptimistic
            Set Grid1.DataSource = rstgenel
            grid1_label
        Else
            Set rstgenel = New Recordset
            rstgenel.Open "SELECT LOGICALREF,CODE,DEFINITION_ fROM LG_" & GFirma & "_CLCARD order by DEFINITION_ desc", CnnMlMain, adOpenDynamic, adLockOptimistic
            Set Grid1.DataSource = rstgenel
            grid1_label
            tik = 0
        End If
    End Select
Case 6, 7
    Frame6.Caption = Empty
    Text4.Text = Empty
    Text4.SetFocus
    Select Case ColIndex
    Case 1
        secim = "KODU"
        tik = tik + 1
        If tik = 1 Then
            Set rstgenel = New Recordset
            rstgenel.Open "SELECT LOGICALREF,CODE,DEFINITION_ fROM LG_" & GFirma & "_EMUHACC order by CODE ASC", CnnMlMain, adOpenDynamic, adLockOptimistic
            Set Grid1.DataSource = rstgenel
            grid1_label
        Else
            Set rstgenel = New Recordset
            rstgenel.Open "SELECT LOGICALREF,CODE,DEFINITION_ fROM LG_" & GFirma & "_EMUHACC order by CODE desc", CnnMlMain, adOpenDynamic, adLockOptimistic
            Set Grid1.DataSource = rstgenel
            grid1_label
            tik = 0
        End If
    Case 2
        secim = "ACIKLAMA"
        tik = tik + 1
        If tik = 1 Then
            Set rstgenel = New Recordset
            rstgenel.Open "SELECT LOGICALREF,CODE,DEFINITION_ fROM LG_" & GFirma & "_EMUHACC order by DEFINITION_ ASC", CnnMlMain, adOpenDynamic, adLockOptimistic
            Set Grid1.DataSource = rstgenel
            grid1_label
        Else
            Set rstgenel = New Recordset
            rstgenel.Open "SELECT LOGICALREF,CODE,DEFINITION_ fROM LG_" & GFirma & "_EMUHACC order by DEFINITION_ desc", CnnMlMain, adOpenDynamic, adLockOptimistic
            Set Grid1.DataSource = rstgenel
            grid1_label
            tik = 0
        End If
    End Select
End Select
End Sub

Private Sub Grid1_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyEscape Then
    Frame6.Visible = False
End If
End Sub

Private Sub Label1_DblClick(Index As Integer)
If Index <> 12 Then Exit Sub
For i = 3 To 5
     Option1(i).Value = False
Next
End Sub

Private Sub Label5_Click()
SORU = InputBox("þifre giriniz", "Alpay")
If SORU <> "1679" Then Exit Sub
SSorGuDamacana
'SSorguyaP
'SSorguyaP1
MsgBox "tamamlandý"
End Sub

Private Sub Sink1_BtnClick()
Select Case GelenId
    Case "01" 'basic stok raporu
        SRGStok_H
        CrT.Reset
        CrT.ReportFileName = App.Path & "\BasicStok.rpt"
        CrT.WindowShowGroupTree = False: CrT.WindowAllowDrillDown = False: CrT.WindowShowRefreshBtn = False
        CrT.ReportTitle = dxDateEdit1 & " Tarihli Stok Raporu"
        CrT.WindowAllowDrillDown = False
        CrT.WindowShowGroupTree = False
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.WindowState = crptMaximized
        CrT.ReportTitle = dxDateEdit1 & " Tarihli Durum Raporu"
        CrT.RetrieveDataFiles
        CrT.Action = 1

    Case "00" 'basic stok raporu gruplu
        SRGStok_H
        CrT.Reset
        CrT.ReportFileName = App.Path & "\BasicStokDLI.rpt"
        CrT.WindowShowGroupTree = False: CrT.WindowAllowDrillDown = False: CrT.WindowShowRefreshBtn = False
        CrT.ReportTitle = dxDateEdit1 & " Tarihli Stok Raporu"
        CrT.WindowAllowDrillDown = False
        CrT.WindowShowGroupTree = False
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.WindowState = crptMaximized
        CrT.RetrieveDataFiles
        CrT.ReportTitle = dxDateEdit1 & " Tarihli Durum Raporu"
        CrT.Action = 1

    Case "02" 'TARÝH ARALIKLI ENVANTER
        SRGEnvante
        SRGEnvanter
        
        If Len(dxPickEdit1(0).DisplayText) = 0 Then OzelsTr = "" Else OzelsTr = " and {ASRGMental_Env.SPECODE} = '" & dxPickEdit1(0) & "'"
        If Len(dxPickEdit1(1).DisplayText) = 0 Then YetkisTr = "" Else YetkisTr = " and {ASRGMental_Env.cyphCODE} = '" & dxPickEdit1(1) & "'"
        If Len(dxPickEdit1(2).DisplayText) = 0 Then GrupsTr = "" Else GrupsTr = " and {ASRGMental_Env.StgrpCODE} = '" & dxPickEdit1(2) & "'"
         
        CrT.Reset
        CrT.ReportFileName = App.Path & "\KivancStokEnv2.rpt"
        CrT.WindowState = crptMaximized
        CrT.SelectionFormula = "{ASRGMental_Env.STOCKREF}> 0 " & OzelsTr & YetkisTr & GrupsTr
        CrT.WindowAllowDrillDown = False
        CrT.WindowShowGroupTree = False
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
    Case "03"
        If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
        eksrg = ""
        trcode = 1
        SRGMenaStokFiyat
        CrT.Reset
        CrT.ReportFileName = App.Path & "\MenaStokFiyatList.rpt"
        CrT.WindowState = crptMaximized
        CrT.WindowAllowDrillDown = True
        CrT.SelectionFormula = eksrg
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
    Case "04"
        If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
        eksrg = ""
        trcode = 2
        SRGMenaStokFiyat
        CrT.Reset
        CrT.ReportFileName = App.Path & "\MenaStokFiyatList.rpt"
        CrT.WindowState = crptMaximized
        CrT.WindowAllowDrillDown = True
        CrT.SelectionFormula = eksrg
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
    Case "05" 'TARÝH ARALIKLI ENVANTER
        SRGEnvante
        SRGEnvanter
        
        If Len(dxPickEdit1(0).DisplayText) = 0 Then OzelsTr = "" Else OzelsTr = " and {ASRGMental_Env.SPECODE} = '" & dxPickEdit1(0) & "'"
        If Len(dxPickEdit1(1).DisplayText) = 0 Then YetkisTr = "" Else YetkisTr = " and {ASRGMental_Env.cyphCODE} = '" & dxPickEdit1(1) & "'"
        If Len(dxPickEdit1(2).DisplayText) = 0 Then GrupsTr = "" Else GrupsTr = " and {ASRGMental_Env.StgrpCODE} = '" & dxPickEdit1(2) & "'"
         
        CrT.Reset
        CrT.ReportFileName = App.Path & "\KivancStokEnv3.rpt"
        CrT.WindowState = crptMaximized
        CrT.SelectionFormula = "{ASRGMental_Env.STOCKREF}> 0 " & OzelsTr & YetkisTr & GrupsTr
        CrT.WindowAllowDrillDown = False
        CrT.WindowShowGroupTree = True
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
    Case "06" 'TARÝH ARALIKLI ENVANTER
        SRGMena_ObjeUT
        CrT.Reset
        CrT.ReportFileName = App.Path & "\MenaStokEnvGrupCari1.rpt"
        CrT.WindowState = crptMaximized
        CrT.SelectionFormula = "" '{ASRGMental_Env.STOCKREF}> 0 " & OzelsTr & YetkisTr & GrupsTr
        CrT.WindowAllowDrillDown = True
        CrT.WindowShowGroupTree = False
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
    Case "07" 'basic stok raporu gruplu
        SRGStok_H
        CrT.Reset
        CrT.ReportFileName = App.Path & "\BasicEnvDLI.rpt"
        CrT.WindowShowGroupTree = False: CrT.WindowAllowDrillDown = False: CrT.WindowShowRefreshBtn = False
        CrT.ReportTitle = dxDateEdit1 & " Tarihli Stok Raporu"
        CrT.WindowAllowDrillDown = False
        CrT.WindowShowGroupTree = False
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.WindowState = crptMaximized
        CrT.RetrieveDataFiles
        CrT.ReportTitle = dxDateEdit1 & " Tarihli Envanter Durum Raporu"
        CrT.Action = 1

    'Case "20" 'kasa
    '    SKASA
    '    CrT.Reset
    '    CrT.ReportFileName = App.Path & "\KASAHAR.rpt"
    '    CrT.WindowState = crptMaximized
    '    CrT.WindowShowPrintSetupBtn = True
    '    CrT.WindowShowRefreshBtn = True
    '    CrT.RetrieveDataFiles
    '    CrT.Action = 1

    Case "10"
        SCari31
        CrT.Reset
        CrT.ReportFileName = App.Path & "\CARIHAR.rpt"
        CrT.WindowState = crptMaximized
        CrT.WindowAllowDrillDown = True
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
    Case "11"
        SOdeme
        CrT.Reset
        CrT.ReportFileName = App.Path & "\ODEME.rpt"
        CrT.WindowState = crptMaximized
        'CrT.WindowAllowDrillDown = True
        'CrT.WindowShowGroupTree = True
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
    Case "12"
        SBorcAlacak
        CrT.Reset
        CrT.ReportFileName = App.Path & "\CariBA.rpt"
        CrT.WindowState = crptMaximized
        CrT.WindowAllowDrillDown = True
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
    Case "13"
        SGenelTah
        CrT.Reset
        CrT.ReportFileName = App.Path & "\MenaYaslandirmaTah.rpt"
        CrT.WindowState = crptMaximized
        CrT.WindowAllowDrillDown = True
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
    Case "14"
        SGenelOdemeHareket
        CrT.Reset
        CrT.ReportFileName = App.Path & "\MenaOdeme.rpt"
        CrT.WindowState = crptMaximized
        CrT.WindowAllowDrillDown = True
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
    Case "15"
        If Len(dxPickEdit1(4).DisplayText) = 0 Then OzelsTr = "" Else OzelsTr = " and {LG_004_CLCARD.SPECODE} = '" & Trim(dxPickEdit1(4)) & "'"
        If Len(dxPickEdit1(6).DisplayText) = 0 Then YetkisTr = "" Else YetkisTr = " and {LG_004_CLCARD.CYPHCODE} = '" & Trim(dxPickEdit1(6)) & "'"
        If Len(dxPickEdit1(7).DisplayText) = 0 Then GrupsTr = "" Else GrupsTr = " and {LG_004_CLCARD.CITY} = '" & Trim(dxPickEdit1(7)) & "'"
        If Len(dxPickEdit1(9).DisplayText) = 0 Then IlcesTr = "" Else IlcesTr = " and {LG_004_CLCARD.TOWN} = '" & Trim(dxPickEdit1(9)) & "'"
        If Len(dxPickEdit1(8).DisplayText) = 0 Then
           StoKStr = ""
        Else
           If dxTextEdit1(3).Visible = False Then
              If dxPickEdit1(8) = "EÞÝT" Then
              JJ = dxPickEdit1(8)
                 If Len(dxTextEdit1(2).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " and {LG_004_CLCARD.CODE} = '" & dxTextEdit1(2) & "'"
              Else
                 If Len(dxTextEdit1(2).DisplayText) = 0 Then StoKStr = "" Else StoKStr = " AND {LG_004_CLCARD.CODE} LIKE '" & dxTextEdit1(2) & "*" & "'"
              End If
           Else
              If dxPickEdit1(8) = "ARASI" Then
                 StoKStr = " AND {LG_004_CLCARD.CODE} >= '" & dxTextEdit1(2) & "' and {LG_004_CLCARD.CODE} <= '" & dxTextEdit1(3) & "'"
              End If
           End If
        End If

        CrT.Reset
        SORU = MsgBox("Gruplu Almak Ýçin Hayýr Tuþuna Basýnýz...", vbInformation + vbYesNo, MesaJ)
        If SORU = vbYes Then CrT.ReportFileName = App.Path & "\Cari2.rpt"
        If SORU = vbNo Then CrT.ReportFileName = App.Path & "\Cari2Grp.rpt"
        CrT.WindowState = crptMaximized
        CrT.ReportTitle = "Tarih : " & Date & " Saat : " & Time & " Cari Extresi"
        CrT.SelectionFormula = "{LG_004_CLCARD.ACTIVE}=0 " & OzelsTr & YetkisTr & GrupsTr & IlcesTr & StoKStr
        If Len(dxTextEdit2.DisplayText) > 0 And IsNumeric(dxTextEdit2.DisplayText) = True Then CrT.GroupSelectionFormula = " abs(Sum ({@Genel}, {LG_004_CLCARD.DEFINITION_})) > " & dxTextEdit2
        CrT.WindowAllowDrillDown = True
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1

    Case "20" 'satýcý genel raporu
        If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
        eksrg = ""
        SRGMenaFSC
        CrT.Reset
        CrT.ReportFileName = App.Path & "\MenaFsc.rpt"
        CrT.WindowState = crptMaximized
        CrT.WindowAllowDrillDown = True
        CrT.WindowShowGroupTree = True
        CrT.SelectionFormula = eksrg
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
    Case "21"
        If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
        If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/10" Else ilktarih = dxDateEdit1
        If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "31/12/08" Else sontarih = dxDateEdit2
        SRGMenaFSC
        CrT.Reset
        CrT.ReportFileName = App.Path & "\SaticiSatis2.rpt"
        CrT.WindowState = crptMaximized
        CrT.SelectionFormula = ""
        CrT.WindowAllowDrillDown = True
        CrT.WindowShowGroupTree = True
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
    Case "22" 'son satýþ fiyat
       
    Case "23" 'son satýþ fiyat
        If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
        eksrg = ""
        trcode = 8
        trcode1 = 8
        SMenaElemanSat
        CrT.Reset
        CrT.ReportFileName = App.Path & "\MenaElemanBazliSatis.rpt"
        CrT.WindowState = crptMaximized
        CrT.WindowAllowDrillDown = True
        CrT.SelectionFormula = eksrg
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
    Case "24"
        If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
        eksrg = ""
        SRGMenaFSC
        CrT.Reset
        CrT.ReportFileName = App.Path & "\MenaFscOzelGrup.rpt"
        CrT.WindowState = crptMaximized
        CrT.WindowAllowDrillDown = True
        CrT.WindowShowGroupTree = True
        CrT.SelectionFormula = eksrg
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
    Case "25"
        If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
        eksrg = ""
        SRGMenaFSC
        CrT.Reset
        CrT.ReportFileName = App.Path & "\MenaFscOzelAyl.rpt"
        CrT.WindowState = crptMaximized
        CrT.WindowAllowDrillDown = True
        CrT.WindowShowGroupTree = True
        CrT.SelectionFormula = eksrg
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
    Case "26"
        If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
        eksrg = ""
        SRGMenaFSC
        CrT.Reset
        CrT.ReportFileName = App.Path & "\MenaSatisBolgesel.rpt"
        CrT.WindowState = crptMaximized
        CrT.WindowAllowDrillDown = True
        CrT.WindowShowGroupTree = True
        CrT.SelectionFormula = eksrg
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
    Case "27" 'satýcý genel raporu
        If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
        eksrg = ""
        SRGMenaFSC
        CrT.Reset
        CrT.ReportFileName = App.Path & "\MenaSatisGenel.rpt"
        CrT.WindowState = crptMaximized
        CrT.WindowAllowDrillDown = True
        CrT.WindowShowGroupTree = True
        CrT.SelectionFormula = eksrg
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1

    Case "30"
        eksrg = ""
        SRGCari
        CrT.Reset
        CrT.WindowState = crptMaximized
        CrT.ReportFileName = App.Path & "\CariAlis.rpt"
        CrT.ReportTitle = "Dönem Baþý : " & ilktarih & " Dönem Sonu : " & sontarih
        CrT.SelectionFormula = eksrg
        CrT.WindowAllowDrillDown = True
        CrT.WindowShowGroupTree = False
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
    Case "32" 'satýcý genel raporu
        If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
        eksrg = ""
        SRGMenaFSC
        CrT.Reset
        CrT.ReportFileName = App.Path & "\MenaAlýmGenel.rpt"
        CrT.WindowState = crptMaximized
        CrT.WindowAllowDrillDown = True
        CrT.WindowShowGroupTree = True
        CrT.SelectionFormula = eksrg
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
    Case "31" 'satýcý genel raporu
        If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
        eksrg = ""
        SRGMenaFSC
        CrT.Reset
        CrT.ReportFileName = App.Path & "\MenaAlýmBolgesel.rpt"
        CrT.WindowState = crptMaximized
        CrT.WindowAllowDrillDown = True
        CrT.WindowShowGroupTree = True
        CrT.SelectionFormula = eksrg
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
    Case "33" 'satýcý genel raporu
        If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
        eksrg = ""
        trcode = 1
        trcode1 = 14
        SRGMenaSonAlSat
        CrT.Reset
        CrT.ReportFileName = App.Path & "\MenaSonFiyat.rpt"
        CrT.WindowState = crptMaximized
        CrT.WindowAllowDrillDown = True
        CrT.SelectionFormula = eksrg
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
    Case "34" 'satýcý genel raporu
        If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
        eksrg = ""
        SRGMenaFSC
        CrT.Reset
        CrT.ReportFileName = App.Path & "\MenaCSAylSAT.rpt"
        CrT.WindowState = crptMaximized
        CrT.WindowAllowDrillDown = True
        CrT.WindowShowGroupTree = True
        CrT.SelectionFormula = eksrg
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
    Case 40
        If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
        eksrg = ""
        SRGMenaFSC
        CrT.Reset
        CrT.ReportFileName = App.Path & "\MenaCariTutarILK.rpt"
        CrT.WindowState = crptMaximized
        CrT.WindowAllowDrillDown = True
        CrT.WindowShowGroupTree = True
        CrT.SelectionFormula = eksrg
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
    Case 41
        If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
        eksrg = ""
        SRGMenaFSC
        CrT.Reset
        CrT.ReportFileName = App.Path & "\MenaStokTutarILK.rpt"
        CrT.WindowState = crptMaximized
        CrT.WindowAllowDrillDown = True
        CrT.WindowShowGroupTree = True
        CrT.SelectionFormula = eksrg
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
    Case 42
        If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
        eksrg = ""
        SRGMenaFSC
        CrT.Reset
        CrT.ReportFileName = App.Path & "\MenaStokMiktarILK.rpt"
        CrT.WindowState = crptMaximized
        CrT.WindowAllowDrillDown = True
        CrT.WindowShowGroupTree = True
        CrT.SelectionFormula = eksrg
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
'    Case 43
'        If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
'        eksrg = ""
        SIcmal
'        CrT.Reset
'        CrT.ReportFileName = App.Path & "\MenaIcmal.rpt"
'        CrT.WindowState = crptMaximized
'        CrT.WindowAllowDrillDown = True
'        CrT.SelectionFormula = eksrg
'        CrT.WindowShowPrintSetupBtn = True
'        CrT.WindowShowRefreshBtn = True
'        CrT.RetrieveDataFiles
'        CrT.Action = 1
    Case 43
        If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
        eksrg = ""
        SNotCari
        CrT.Reset
        CrT.ReportFileName = App.Path & "\MenaNotCari.rpt"
        CrT.WindowState = crptMaximized
        CrT.WindowAllowDrillDown = True
        CrT.SelectionFormula = eksrg
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
    Case 44
        If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
        eksrg = ""
        SRGMenaFSC
        CrT.Reset
        CrT.ReportFileName = App.Path & "\MenaCariTutarSON.rpt"
        CrT.WindowState = crptMaximized
        CrT.WindowAllowDrillDown = True
        CrT.WindowShowGroupTree = True
        CrT.SelectionFormula = eksrg
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
    Case 45
        If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
        eksrg = ""
        SRGMenaFSC
        CrT.Reset
        CrT.ReportFileName = App.Path & "\MenaStokTutarSON.rpt"
        CrT.WindowState = crptMaximized
        CrT.WindowAllowDrillDown = True
        CrT.WindowShowGroupTree = True
        CrT.SelectionFormula = eksrg
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
    Case 46
          If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
          eksrg = ""
          SRGMenaFSC
          CrT.Reset
          CrT.ReportFileName = App.Path & "\MenaStokMiktarSON.rpt"
          CrT.WindowState = crptMaximized
          CrT.WindowAllowDrillDown = True
          CrT.WindowShowGroupTree = True
          CrT.SelectionFormula = eksrg
          CrT.WindowShowPrintSetupBtn = True
          CrT.WindowShowRefreshBtn = True
          CrT.RetrieveDataFiles
          CrT.Action = 1
    Case 47
          If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
          eksrg = ""
          SNotStok
          CrT.Reset
          CrT.ReportFileName = App.Path & "\MenaNotStok.rpt"
          CrT.WindowState = crptMaximized
          CrT.WindowAllowDrillDown = True
          CrT.SelectionFormula = eksrg
          CrT.WindowShowPrintSetupBtn = True
          CrT.WindowShowRefreshBtn = True
          CrT.RetrieveDataFiles
          CrT.Action = 1
     Case 410
          If Len(dxDateEdit1.DisplayText) > 0 Then SExCeL
'     Case 50 'envanter raporu
'          SRGMenaDSC
'          CrT.Reset
'          If Month(Date) = 7 Then CrT.ReportFileName = App.Path & "\BahCeMenaCSAyl7.rpt"
'          If Month(Date) = 8 Then CrT.ReportFileName = App.Path & "\BahCeMenaCSAyl8.rpt"
'          If Month(Date) = 9 Then CrT.ReportFileName = App.Path & "\BahCeMenaCSAyl9.rpt"
'          If Month(Date) = 10 Then CrT.ReportFileName = App.Path & "\BahCeMenaCSAyl10.rpt"
'          If Month(Date) = 11 Then CrT.ReportFileName = App.Path & "\BahCeMenaCSAyl11.rpt"
'          If Month(Date) = 12 Then CrT.ReportFileName = App.Path & "\BahCeMenaCSAyl12.rpt"
'          'CrT.ReportFileName = App.Path & "\BahCeMenaCSAyl.rpt"
'          If Len(dxPickEdit1(9).DisplayText) = 0 Then
'               IlcesTr = ""
'          Else
'               If Len(dxPickEdit1(11).DisplayText) = 0 Then
'                    IlcesTr = " and {LG_" & GFirma & "_CLCARD.LOWLEVELCODES1} = " & Val(dxPickEdit1(9).DisplayText) & ""
'               Else
'                    IlcesTr = " and {LG_" & GFirma & "_CLCARD.LOWLEVELCODES1} = " & Val(dxPickEdit1(9).DisplayText) & " and {LG_" & GFirma & "_CLCARD.LOWLEVELCODES2} = " & Val(dxPickEdit1(11).DisplayText) & ""
'               End If
'          End If
'
'          CrT.WindowShowGroupTree = False: CrT.WindowAllowDrillDown = False: CrT.WindowShowRefreshBtn = False
'          CrT.ReportTitle = Now & " Zamanlý Envanter Raporu"
'          CrT.WindowShowPrintSetupBtn = True
'          CrT.WindowShowRefreshBtn = True
'          CrT.WindowState = crptMaximized
'          If Len(dxTextEdit2.DisplayText) > 0 Then Sql = " AND {SrGCariTutaR.KALAN}>" & dxTextEdit2 & ""
'          If Option1(3).Value = True Then CrT.GroupSelectionFormula = "{LG_002_CLCARD.LOGICALREF}>0 and {SrG_EmaNetDam.Kalan} <> 0 " & Sql & IlcesTr
'          If Option1(4).Value = True Then CrT.GroupSelectionFormula = "{LG_002_CLCARD.LOGICALREF}>0 and {SrG_EmaNetDoL.Kalan} <> 0 " & Sql & IlcesTr
'          If Option1(5).Value = True Then CrT.GroupSelectionFormula = "{LG_002_CLCARD.LOGICALREF}>0 " & Sql & IlcesTr
'          'alp = "{MenaFSC.StokReF}=200 and {MenaFSC.FaturaTipi} IN[1,7,8] and LG_" & GFirma & "_CLCARD.SPECODE ='01'" ' & OzelsTr '& StoksTr & OzelsTr & YetkisTr & GrupsTr & IlcesTr
'          'CrT.SelectionFormula = "{MenaFSC.StokReF}=200 and {MenaFSC.FaturaTipi} IN[1,7,8] and LG_" & GFirma & "_CLCARD.SPECODE ='01' "
'
'          'CrT.ReportTitle = dxDateEdit1 & " Tarihli Durum Raporu"
'          CrT.RetrieveDataFiles
'          CrT.Action = 1
     Case 50
          STaHsilat
    
     Case 51 'carihareket raporu
          SCari31
          SRGMenaDSC
          CrT.Reset
          CrT.ReportFileName = App.Path & "\BAHCECARiHAR.rpt"
          CrT.WindowState = crptMaximized
          CrT.WindowAllowDrillDown = True
          CrT.WindowShowPrintSetupBtn = True
          CrT.WindowShowRefreshBtn = True
          CrT.RetrieveDataFiles
          CrT.Action = 1
     Case 52 'carihareket raporu
          SCariBakiye
          'SRGMenaDSC
          sstr = ""
          If Option1(5).Value = True Then sstr = " and {SrGCariTutaR.KALAN}< 0 "
          If Option1(4).Value = True Then sstr = " and {SrGCariTutaR.KALAN}> 0 "
          If Option1(3).Value = True Then sstr = " and {SrGCariTutaR.KALAN}<> 0 "
          CrT.Reset
          CrT.ReportFileName = App.Path & "\BAHCECARiStokA.rpt"
          CrT.WindowState = crptMaximized
          CrT.SelectionFormula = "{SrGCariSiNiF.CariKey}>0 " & sstr
          CrT.WindowShowRefreshBtn = True
          CrT.RetrieveDataFiles
          CrT.Action = 1
    Case 53 'içambar raporu
          SRGStok_EE
          CrT.Reset
          CrT.ReportFileName = App.Path & "\BahceBasicEnvDLI.rpt"
          CrT.WindowShowGroupTree = False: CrT.WindowAllowDrillDown = False: CrT.WindowShowRefreshBtn = False
          CrT.WindowAllowDrillDown = False
          CrT.WindowShowGroupTree = False
          CrT.WindowShowPrintSetupBtn = True
          CrT.WindowShowRefreshBtn = True
          CrT.WindowState = crptMaximized
          CrT.ReportTitle = dxDateEdit1 & " Tarihli Durum Raporu"
          CrT.RetrieveDataFiles
          CrT.Action = 1
    Case 54 'dýþ ambar raporu
          SRGStok_EE
          CrT.Reset
          CrT.ReportFileName = App.Path & "\BahceBasicEnvDLIEE.rpt"
          CrT.WindowShowGroupTree = False: CrT.WindowAllowDrillDown = False: CrT.WindowShowRefreshBtn = False
          CrT.ReportTitle = dxDateEdit1 & " Tarihli Stok Raporu"
          CrT.WindowAllowDrillDown = False
          CrT.WindowShowGroupTree = False
          CrT.WindowShowPrintSetupBtn = True
          CrT.WindowShowRefreshBtn = True
          CrT.WindowState = crptMaximized
          CrT.RetrieveDataFiles
          CrT.Action = 1
    Case 60
          STaHsilat
          CrT.Reset
          CrT.ReportFileName = App.Path & "\MeNAGenelTah.rpt"
          'CrT.WindowShowGroupTree = False: CrT.WindowAllowDrillDown = False: CrT.WindowShowRefreshBtn = False
          CrT.ReportTitle = dxDateEdit1 & " Tarihli Stok Raporu"
          CrT.WindowAllowDrillDown = True
          CrT.WindowShowGroupTree = True
          CrT.WindowShowPrintSetupBtn = True
          CrT.WindowShowRefreshBtn = True
          CrT.WindowState = crptMaximized
          CrT.RetrieveDataFiles
          CrT.Action = 1
    Case 61
          SMaSraF
          CrT.Reset
          CrT.ReportFileName = App.Path & "\MeNAMasrafAyL.rpt"
          'CrT.WindowShowGroupTree = False: CrT.WindowAllowDrillDown = False: CrT.WindowShowRefreshBtn = False
          CrT.ReportTitle = dxDateEdit1 & " Tarihli Stok Raporu"
          CrT.WindowAllowDrillDown = True
          'CrT.WindowShowGroupTree = True
          CrT.WindowShowPrintSetupBtn = True
          CrT.WindowShowRefreshBtn = True
          CrT.WindowState = crptMaximized
          CrT.RetrieveDataFiles
          CrT.Action = 1
    Case 62
          SMaSraF
          CrT.Reset
          CrT.ReportFileName = App.Path & "\MeNAMasraf.rpt"
          'CrT.WindowShowGroupTree = False: CrT.WindowAllowDrillDown = False: CrT.WindowShowRefreshBtn = False
          CrT.ReportTitle = dxDateEdit1 & " Tarihli Stok Raporu"
          CrT.WindowAllowDrillDown = True
          CrT.WindowShowGroupTree = True
          CrT.WindowShowPrintSetupBtn = True
          CrT.WindowShowRefreshBtn = True
          CrT.WindowState = crptMaximized
          CrT.RetrieveDataFiles
          CrT.Action = 1
    Case 63
          SMaSraFElm
          CrT.Reset
          CrT.ReportFileName = App.Path & "\MeNAMasrafElm.rpt"
          'CrT.WindowShowGroupTree = False: CrT.WindowAllowDrillDown = False: CrT.WindowShowRefreshBtn = False
          CrT.ReportTitle = dxDateEdit1 & " Tarihli Stok Raporu"
          CrT.WindowAllowDrillDown = True
          CrT.WindowShowGroupTree = True
          CrT.WindowShowPrintSetupBtn = True
          CrT.WindowShowRefreshBtn = True
          CrT.WindowState = crptMaximized
          CrT.RetrieveDataFiles
          CrT.Action = 1
    Case 70
        trcode = 1
        If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
        eksrg = ""
        SSiparis
        CrT.Reset
        CrT.ReportFileName = App.Path & "\MenaSiparis.rpt"
        CrT.WindowState = crptMaximized
        CrT.WindowAllowDrillDown = True
        CrT.SelectionFormula = eksrg
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
    Case 71
        trcode = 2
        If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
        eksrg = ""
        SSiparis
        CrT.Reset
        CrT.ReportFileName = App.Path & "\MenaSiparis.rpt"
        CrT.WindowState = crptMaximized
        CrT.WindowAllowDrillDown = True
        CrT.SelectionFormula = eksrg
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
    Case 72
        trcode = 1
        If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
        eksrg = ""
        SSiparis
        CrT.Reset
        CrT.ReportFileName = App.Path & "\MenaSiparisCari.rpt"
        CrT.WindowState = crptMaximized
        CrT.WindowAllowDrillDown = True
        CrT.SelectionFormula = eksrg
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
    Case 73
        trcode = 2
        If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
        eksrg = ""
        SSiparis
        CrT.Reset
        CrT.ReportFileName = App.Path & "\MenaSiparisCari.rpt"
        CrT.WindowState = crptMaximized
        CrT.WindowAllowDrillDown = True
        CrT.SelectionFormula = eksrg
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
   End Select
End Sub

Private Sub Sink2_DblClick()
Select Case GelenId
    Case "33" 'son satýþ fiyat
        If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
        eksrg = ""
        trcode = 8
        trcode1 = 8
        SMenaElemanSat
        CrT.Reset
        CrT.ReportFileName = App.Path & "\MenaElemanBazliSatisGrf.rpt"
        CrT.WindowState = crptMaximized
        CrT.WindowAllowDrillDown = True
        CrT.WindowShowGroupTree = True
        CrT.SelectionFormula = eksrg
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
    Case "42" 'basic stok raporu
        If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
        eksrg = ""
        SRGMenaFSC
        CrT.Reset
        CrT.ReportFileName = App.Path & "\MenaCSAyl1SatGrf.rpt"
        CrT.WindowState = crptMaximized
        CrT.WindowAllowDrillDown = True
        CrT.WindowShowGroupTree = True
        CrT.SelectionFormula = eksrg
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
        CrT.Reset
        CrT.ReportFileName = App.Path & "\MenaCSAyl1AlsGrf.rpt"
        CrT.WindowState = crptMaximized
        CrT.WindowAllowDrillDown = True
        CrT.WindowShowGroupTree = True
        CrT.SelectionFormula = eksrg
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
        CrT.Reset
        CrT.ReportFileName = App.Path & "\MenaCSAyl1TdrGrf.rpt"
        CrT.WindowState = crptMaximized
        CrT.WindowAllowDrillDown = True
        CrT.WindowShowGroupTree = True
        CrT.SelectionFormula = eksrg
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
End Select
End Sub

Private Sub text4_Change()
Select Case Button
Case 2, 3
    If Text4.Text = Empty Then Exit Sub
    simdi = Text4.Text & "%"
    If Text4.Text <> Empty Then
        ww = InStr(1, Frame6.Caption, "-")
        If ww = 0 Then
            formadi = Frame6.Caption
        Else
            formadi = Mid(Frame6.Caption, 1, ww - 1)
        End If
        Frame6.Caption = formadi & "-" & "'" & "[" & Text4.Text & "]" & "'"
    End If
    Select Case secim
    Case "KODU"
        Set rstgenel = New Recordset
        rstgenel.Open "SELECT LOGICALREF,CODE,NAME fROM LG_" & GFirma & "_ITEMS where CODE like '" & simdi & "' order by CODE ASC", CnnMlMain, adOpenDynamic, adLockOptimistic
        Set Grid1.DataSource = rstgenel
        grid1_label
        Text4.SetFocus
        Text4.SelStart = Len(Text4.Text)
    Case "ACIKLAMA"
        Set rstgenel = New Recordset
        rstgenel.Open "SELECT LOGICALREF,CODE,NAME fROM LG_" & GFirma & "_ITEMS where NAME like '" & simdi & "' order by NAME ASC", CnnMlMain, adOpenDynamic, adLockOptimistic
        Set Grid1.DataSource = rstgenel
        grid1_label
        Text4.SetFocus
        Text4.SelStart = Len(Text4.Text)
    End Select
Case 4, 5
    If Text4.Text = Empty Then Exit Sub
    simdi = Text4.Text & "%"
    If Text4.Text <> emty Then
        ww = InStr(1, Frame6.Caption, "-")
        If ww = 0 Then
            formadi = Frame6.Caption
        Else
            formadi = Mid(Frame6.Caption, 1, ww - 1)
        End If
        Frame6.Caption = formadi & "-" & "'" & "[" & Text4.Text & "]" & "'"
    End If
    Select Case secim
    Case "KODU"
        Set rstgenel = New Recordset
        rstgenel.Open "SELECT LOGICALREF,CODE,DEFINITION_ fROM LG_" & GFirma & "_CLCARD where CODE like '" & simdi & "' order by CODE ASC", CnnMlMain, adOpenDynamic, adLockOptimistic
        Set Grid1.DataSource = rstgenel
        grid1_label
        Text4.SetFocus
        Text4.SelStart = Len(Text4.Text)
    Case "ACIKLAMA"
        Set rstgenel = New Recordset
        rstgenel.Open "SELECT LOGICALREF,CODE,DEFINITION_ fROM LG_" & GFirma & "_CLCARD where DEFINITION_ like '" & simdi & "' order by DEFINITION_ ASC", CnnMlMain, adOpenDynamic, adLockOptimistic
        Set Grid1.DataSource = rstgenel
        grid1_label
        Text4.SetFocus
        Text4.SelStart = Len(Text4.Text)
    End Select
Case 6, 7
    If Text4.Text = Empty Then Exit Sub
    simdi = Text4.Text & "%"
    If Text4.Text <> Empty Then
        ww = InStr(1, Frame6.Caption, "-")
        If ww = 0 Then
            formadi = Frame6.Caption
        Else
            formadi = Mid(Frame6.Caption, 1, ww - 1)
        End If
        Frame6.Caption = formadi & "-" & "'" & "[" & Text4.Text & "]" & "'"
    End If
    Select Case secim
    Case "KODU"
        Set rstgenel = New Recordset
        rstgenel.Open "SELECT LOGICALREF,CODE,DEFINITION_ fROM LG_" & GFirma & "_EMUHACC where CODE like '" & simdi & "' order by CODE ASC", CnnMlMain, adOpenDynamic, adLockOptimistic
        Set Grid1.DataSource = rstgenel
        grid1_label
        Text4.SetFocus
        Text4.SelStart = Len(Text4.Text)
    Case "ACIKLAMA"
        Set rstgenel = New Recordset
        rstgenel.Open "SELECT LOGICALREF,CODE,DEFINITION_ fROM LG_" & GFirma & "_EMUHACC where DEFINITION_ like '" & simdi & "' order by DEFINITION_ ASC", CnnMlMain, adOpenDynamic, adLockOptimistic
        Set Grid1.DataSource = rstgenel
        grid1_label
        Text4.SetFocus
        Text4.SelStart = Len(Text4.Text)
    End Select
End Select
End Sub




