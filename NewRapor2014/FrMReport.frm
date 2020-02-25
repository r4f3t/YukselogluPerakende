VERSION 5.00
Object = "{5664FAD6-05FD-11D4-AABA-00105A6F87AB}#1.0#0"; "dXEditrs.dll"
Object = "{6A24B331-7634-11D3-A5B0-0050044A7E1A}#1.7#0"; "DXDBGrid.dll"
Object = "{EC799235-EE6A-11D2-AE7E-444553540000}#1.0#0"; "dXCtrls.dll"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form FrMReport 
   Appearance      =   0  'Flat
   BackColor       =   &H00FFFFFF&
   Caption         =   "Men@Rapor"
   ClientHeight    =   10170
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   15120
   Icon            =   "FrMReport.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   10170
   ScaleWidth      =   15120
   StartUpPosition =   1  'CenterOwner
   Begin DXDBGRIDLibCtl.dxDBGrid dxDB 
      Height          =   4935
      Left            =   2940
      OleObjectBlob   =   "FrMReport.frx":0442
      TabIndex        =   93
      Top             =   8640
      Visible         =   0   'False
      Width           =   8325
   End
   Begin VB.Frame Frame6 
      BackColor       =   &H00FFFFFF&
      Caption         =   " Kasa "
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   3765
      Left            =   5790
      TabIndex        =   87
      Top             =   5310
      Width           =   2895
      Begin VB.ListBox List3 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0FF&
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   162
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000080&
         Height          =   3270
         Left            =   120
         Style           =   1  'Checkbox
         TabIndex        =   88
         Top             =   300
         Width           =   2625
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00FFFFFF&
      Caption         =   " Satýþ Elemanlarý "
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   3975
      Left            =   5790
      TabIndex        =   85
      Top             =   1350
      Width           =   2895
      Begin VB.ListBox List2 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0FF&
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   162
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000080&
         Height          =   3270
         Left            =   120
         Style           =   1  'Checkbox
         TabIndex        =   86
         Top             =   570
         Width           =   2625
      End
   End
   Begin VB.OptionButton Option2 
      BackColor       =   &H00C0C0FF&
      Caption         =   "Firma Rap."
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Index           =   5
      Left            =   13320
      Style           =   1  'Graphical
      TabIndex        =   83
      Top             =   3450
      Width           =   1875
   End
   Begin VB.OptionButton Option2 
      BackColor       =   &H00C0C0FF&
      Caption         =   "Satýnalma Yön."
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Index           =   3
      Left            =   13320
      Style           =   1  'Graphical
      TabIndex        =   81
      Top             =   3030
      Width           =   1875
   End
   Begin VB.OptionButton Option2 
      BackColor       =   &H00C0C0FF&
      Caption         =   "Finansman"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Index           =   1
      Left            =   13320
      Style           =   1  'Graphical
      TabIndex        =   79
      Top             =   2610
      Width           =   1875
   End
   Begin VB.FileListBox File1 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   4830
      Left            =   11430
      Pattern         =   "*.RPT"
      TabIndex        =   84
      Top             =   3960
      Width           =   3765
   End
   Begin Crystal.CrystalReport CrT 
      Left            =   9450
      Top             =   8550
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.OptionButton Option2 
      BackColor       =   &H00C0C0FF&
      Caption         =   "Genel Raporlar"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Index           =   4
      Left            =   11430
      Style           =   1  'Graphical
      TabIndex        =   82
      Top             =   3450
      Width           =   1905
   End
   Begin VB.OptionButton Option2 
      BackColor       =   &H00C0C0FF&
      Caption         =   "Satýþ Yön."
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Index           =   2
      Left            =   11430
      Style           =   1  'Graphical
      TabIndex        =   80
      Top             =   3030
      Width           =   1905
   End
   Begin VB.OptionButton Option2 
      BackColor       =   &H00C0C0FF&
      Caption         =   "Malzeme Yön."
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Index           =   0
      Left            =   11430
      Style           =   1  'Graphical
      TabIndex        =   78
      Top             =   2610
      Width           =   1905
   End
   Begin VB.Frame Frame5 
      BackColor       =   &H00FFFFFF&
      Caption         =   " Tarih Seçimi "
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   1275
      Left            =   11400
      TabIndex        =   73
      Top             =   1350
      Width           =   3795
      Begin XpressEditorsLibCtl.dxTextEdit dxP 
         Height          =   315
         Index           =   0
         Left            =   1680
         OleObjectBlob   =   "FrMReport.frx":11FA
         TabIndex        =   95
         Top             =   870
         Width           =   495
      End
      Begin XpressEditorsLibCtl.dxTextEdit PicKlabeL 
         Height          =   315
         Index           =   9
         Left            =   90
         OleObjectBlob   =   "FrMReport.frx":12BC
         TabIndex        =   74
         Top             =   270
         Width           =   1605
      End
      Begin XpressEditorsLibCtl.dxDateEdit dxDateEdit2 
         Height          =   315
         Index           =   0
         Left            =   90
         OleObjectBlob   =   "FrMReport.frx":1490
         TabIndex        =   75
         Top             =   540
         Width           =   1605
      End
      Begin XpressEditorsLibCtl.dxTextEdit PicKlabeL 
         Height          =   315
         Index           =   10
         Left            =   2070
         OleObjectBlob   =   "FrMReport.frx":166D
         TabIndex        =   76
         Top             =   270
         Width           =   1605
      End
      Begin XpressEditorsLibCtl.dxDateEdit dxDateEdit2 
         Height          =   315
         Index           =   1
         Left            =   2070
         OleObjectBlob   =   "FrMReport.frx":1841
         TabIndex        =   77
         Top             =   540
         Width           =   1605
      End
      Begin XpressEditorsLibCtl.dxTextEdit PicKlabeL 
         Height          =   315
         Index           =   25
         Left            =   90
         OleObjectBlob   =   "FrMReport.frx":1A1E
         TabIndex        =   94
         Top             =   870
         Width           =   1605
      End
      Begin XpressEditorsLibCtl.dxTextEdit dxP 
         Height          =   315
         Index           =   1
         Left            =   2190
         OleObjectBlob   =   "FrMReport.frx":1BF4
         TabIndex        =   96
         Top             =   870
         Width           =   495
      End
   End
   Begin VB.Frame Frame4 
      BackColor       =   &H00FFFFFF&
      Caption         =   " Cari Seçimi "
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   7725
      Left            =   8670
      TabIndex        =   43
      Top             =   1350
      Width           =   2715
      Begin VB.TextBox Text2 
         Height          =   315
         Left            =   1140
         TabIndex        =   92
         Top             =   6330
         Visible         =   0   'False
         Width           =   1245
      End
      Begin VB.TextBox Text1 
         Height          =   315
         Left            =   1140
         TabIndex        =   91
         Top             =   6330
         Visible         =   0   'False
         Width           =   1245
      End
      Begin VB.CommandButton Command2 
         BackColor       =   &H008080FF&
         Caption         =   "Fiyat Güncelle"
         Height          =   375
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   90
         Top             =   6480
         Visible         =   0   'False
         Width           =   2445
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H008080FF&
         Caption         =   "Alýþ Fiyat Güncelle"
         Height          =   375
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   89
         Top             =   6000
         Width           =   2445
      End
      Begin VB.OptionButton Option1 
         BackColor       =   &H008080FF&
         Caption         =   "Aktif"
         Height          =   315
         Index           =   5
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   71
         Top             =   7110
         Value           =   -1  'True
         Width           =   825
      End
      Begin VB.OptionButton Option1 
         BackColor       =   &H008080FF&
         Caption         =   "Pasif"
         Height          =   315
         Index           =   4
         Left            =   900
         Style           =   1  'Graphical
         TabIndex        =   70
         Top             =   7110
         Width           =   825
      End
      Begin VB.OptionButton Option1 
         BackColor       =   &H008080FF&
         Caption         =   "Hepsi"
         Height          =   315
         Index           =   3
         Left            =   1710
         Style           =   1  'Graphical
         TabIndex        =   69
         Top             =   7110
         Width           =   855
      End
      Begin XpressEditorsLibCtl.dxTextEdit PicKlabeL 
         Height          =   315
         Index           =   14
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":1CB6
         TabIndex        =   44
         Top             =   1080
         Width           =   1035
      End
      Begin XpressEditorsLibCtl.dxPickEdit dxPickEdit1 
         Height          =   315
         Index           =   6
         Left            =   1110
         OleObjectBlob   =   "FrMReport.frx":1E88
         TabIndex        =   45
         Top             =   1080
         Width           =   1100
      End
      Begin XpressEditorsLibCtl.dxTextEdit PicKlabeL 
         Height          =   315
         Index           =   15
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":216F
         TabIndex        =   46
         Top             =   540
         Width           =   2445
      End
      Begin XpressEditorsLibCtl.dxPickEdit PicKKod1 
         Height          =   315
         Index           =   6
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":234B
         TabIndex        =   47
         Top             =   810
         Width           =   2445
      End
      Begin XpressEditorsLibCtl.dxPickEdit PicKKod2 
         Height          =   315
         Index           =   6
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":25C8
         TabIndex        =   48
         Top             =   1350
         Width           =   2445
      End
      Begin XpressEditorsLibCtl.dxTextEdit PicKlabeL 
         Height          =   315
         Index           =   16
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":2816
         TabIndex        =   49
         Top             =   2160
         Width           =   1035
      End
      Begin XpressEditorsLibCtl.dxTextEdit PicKlabeL 
         Height          =   315
         Index           =   17
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":29E8
         TabIndex        =   50
         Top             =   1620
         Width           =   2445
      End
      Begin XpressEditorsLibCtl.dxPickEdit PicKKod1 
         Height          =   315
         Index           =   7
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":2BBE
         TabIndex        =   51
         Top             =   1890
         Width           =   2445
      End
      Begin XpressEditorsLibCtl.dxPickEdit PicKKod2 
         Height          =   315
         Index           =   7
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":2E3B
         TabIndex        =   52
         Top             =   2430
         Width           =   2445
      End
      Begin XpressEditorsLibCtl.dxPickEdit dxPickEdit1 
         Height          =   315
         Index           =   7
         Left            =   1110
         OleObjectBlob   =   "FrMReport.frx":3089
         TabIndex        =   53
         Top             =   2160
         Width           =   1100
      End
      Begin XpressEditorsLibCtl.dxTextEdit PicKlabeL 
         Height          =   315
         Index           =   18
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":3370
         TabIndex        =   54
         Top             =   3240
         Width           =   1035
      End
      Begin XpressEditorsLibCtl.dxTextEdit PicKlabeL 
         Height          =   315
         Index           =   19
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":3542
         TabIndex        =   55
         Top             =   2700
         Width           =   2445
      End
      Begin XpressEditorsLibCtl.dxPickEdit PicKKod1 
         Height          =   315
         Index           =   8
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":3712
         TabIndex        =   56
         Top             =   2970
         Width           =   2445
      End
      Begin XpressEditorsLibCtl.dxPickEdit PicKKod2 
         Height          =   315
         Index           =   8
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":398F
         TabIndex        =   57
         Top             =   3510
         Width           =   2445
      End
      Begin XpressEditorsLibCtl.dxTextEdit PicKlabeL 
         Height          =   315
         Index           =   20
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":3BDD
         TabIndex        =   58
         Top             =   4320
         Width           =   1035
      End
      Begin XpressEditorsLibCtl.dxTextEdit PicKlabeL 
         Height          =   315
         Index           =   21
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":3DAF
         TabIndex        =   59
         Top             =   3780
         Width           =   2445
      End
      Begin XpressEditorsLibCtl.dxPickEdit PicKKod1 
         Height          =   315
         Index           =   9
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":3F91
         TabIndex        =   60
         Top             =   4050
         Width           =   2445
      End
      Begin XpressEditorsLibCtl.dxPickEdit PicKKod2 
         Height          =   315
         Index           =   9
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":420E
         TabIndex        =   61
         Top             =   4590
         Width           =   2445
      End
      Begin XpressEditorsLibCtl.dxPickEdit dxPickEdit1 
         Height          =   315
         Index           =   8
         Left            =   1110
         OleObjectBlob   =   "FrMReport.frx":445C
         TabIndex        =   62
         Top             =   3240
         Width           =   1100
      End
      Begin XpressEditorsLibCtl.dxPickEdit dxPickEdit1 
         Height          =   315
         Index           =   9
         Left            =   1110
         OleObjectBlob   =   "FrMReport.frx":4743
         TabIndex        =   63
         Top             =   4320
         Width           =   1100
      End
      Begin XpressEditorsLibCtl.dxTextEdit PicKlabeL 
         Height          =   315
         Index           =   22
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":4A2A
         TabIndex        =   64
         Top             =   5400
         Width           =   1035
      End
      Begin XpressEditorsLibCtl.dxTextEdit PicKlabeL 
         Height          =   315
         Index           =   23
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":4BFC
         TabIndex        =   65
         Top             =   4860
         Width           =   2445
      End
      Begin XpressEditorsLibCtl.dxPickEdit PicKKod1 
         Height          =   315
         Index           =   10
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":4DD0
         TabIndex        =   66
         Top             =   5130
         Width           =   2445
      End
      Begin XpressEditorsLibCtl.dxPickEdit PicKKod2 
         Height          =   315
         Index           =   10
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":504D
         TabIndex        =   67
         Top             =   5670
         Width           =   2445
      End
      Begin XpressEditorsLibCtl.dxPickEdit dxPickEdit1 
         Height          =   315
         Index           =   10
         Left            =   1110
         OleObjectBlob   =   "FrMReport.frx":52CA
         TabIndex        =   68
         Top             =   5400
         Width           =   1100
      End
      Begin XpressEditorsLibCtl.dxTextEdit PicKlabeL 
         Height          =   315
         Index           =   24
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":55B1
         TabIndex        =   72
         Top             =   6330
         Visible         =   0   'False
         Width           =   1035
      End
   End
   Begin VB.Frame Frame3 
      BackColor       =   &H00FFFFFF&
      Caption         =   " Ambarlar "
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   7725
      Left            =   2910
      TabIndex        =   41
      Top             =   1350
      Width           =   2925
      Begin VB.ListBox List1 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0FF&
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   162
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000080&
         Height          =   7050
         Left            =   120
         Style           =   1  'Checkbox
         TabIndex        =   42
         Top             =   570
         Width           =   2655
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00FFFFFF&
      Caption         =   " Ürün Kartlarý "
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   7725
      Left            =   30
      TabIndex        =   6
      Top             =   1350
      Width           =   2925
      Begin VB.OptionButton Option1 
         BackColor       =   &H008080FF&
         Caption         =   "Hepsi"
         Height          =   315
         Index           =   2
         Left            =   1890
         Style           =   1  'Graphical
         TabIndex        =   40
         Top             =   7110
         Width           =   855
      End
      Begin VB.OptionButton Option1 
         BackColor       =   &H008080FF&
         Caption         =   "Pasif"
         Height          =   315
         Index           =   1
         Left            =   990
         Style           =   1  'Graphical
         TabIndex        =   39
         Top             =   7110
         Width           =   915
      End
      Begin VB.OptionButton Option1 
         BackColor       =   &H008080FF&
         Caption         =   "Aktif"
         Height          =   315
         Index           =   0
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   38
         Top             =   7110
         Value           =   -1  'True
         Width           =   885
      End
      Begin XpressEditorsLibCtl.dxTextEdit PicKlabeL 
         Height          =   315
         Index           =   11
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":5761
         TabIndex        =   9
         Top             =   1080
         Width           =   1035
      End
      Begin XpressEditorsLibCtl.dxPickEdit dxPickEdit1 
         Height          =   315
         Index           =   0
         Left            =   1110
         OleObjectBlob   =   "FrMReport.frx":5933
         TabIndex        =   7
         Top             =   1080
         Width           =   1200
      End
      Begin XpressEditorsLibCtl.dxTextEdit PicKlabeL 
         Height          =   315
         Index           =   0
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":5C1A
         TabIndex        =   8
         Top             =   540
         Width           =   2655
      End
      Begin XpressEditorsLibCtl.dxPickEdit PicKKod1 
         Height          =   315
         Index           =   0
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":5DF4
         TabIndex        =   10
         Top             =   810
         Width           =   2655
      End
      Begin XpressEditorsLibCtl.dxPickEdit PicKKod2 
         Height          =   315
         Index           =   0
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":6058
         TabIndex        =   11
         Top             =   1350
         Width           =   2655
      End
      Begin XpressEditorsLibCtl.dxTextEdit PicKlabeL 
         Height          =   315
         Index           =   1
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":628D
         TabIndex        =   13
         Top             =   2160
         Width           =   1035
      End
      Begin XpressEditorsLibCtl.dxTextEdit PicKlabeL 
         Height          =   315
         Index           =   2
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":645F
         TabIndex        =   14
         Top             =   1620
         Width           =   2655
      End
      Begin XpressEditorsLibCtl.dxPickEdit PicKKod1 
         Height          =   315
         Index           =   1
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":6635
         TabIndex        =   15
         Top             =   1890
         Width           =   2655
      End
      Begin XpressEditorsLibCtl.dxPickEdit PicKKod2 
         Height          =   315
         Index           =   1
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":68B2
         TabIndex        =   16
         Top             =   2430
         Width           =   2655
      End
      Begin XpressEditorsLibCtl.dxTextEdit PicKlabeL 
         Height          =   315
         Index           =   3
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":6B00
         TabIndex        =   17
         Top             =   3240
         Width           =   1035
      End
      Begin XpressEditorsLibCtl.dxTextEdit PicKlabeL 
         Height          =   315
         Index           =   4
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":6CD2
         TabIndex        =   18
         Top             =   2700
         Width           =   2655
      End
      Begin XpressEditorsLibCtl.dxPickEdit PicKKod1 
         Height          =   315
         Index           =   2
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":6EAC
         TabIndex        =   19
         Top             =   2970
         Width           =   2655
      End
      Begin XpressEditorsLibCtl.dxPickEdit PicKKod2 
         Height          =   315
         Index           =   2
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":7129
         TabIndex        =   20
         Top             =   3510
         Width           =   2655
      End
      Begin XpressEditorsLibCtl.dxTextEdit PicKlabeL 
         Height          =   315
         Index           =   5
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":7377
         TabIndex        =   21
         Top             =   4320
         Width           =   1035
      End
      Begin XpressEditorsLibCtl.dxTextEdit PicKlabeL 
         Height          =   315
         Index           =   6
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":7549
         TabIndex        =   22
         Top             =   3780
         Width           =   2655
      End
      Begin XpressEditorsLibCtl.dxPickEdit PicKKod1 
         Height          =   315
         Index           =   3
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":7721
         TabIndex        =   23
         Top             =   4050
         Width           =   2655
      End
      Begin XpressEditorsLibCtl.dxPickEdit PicKKod2 
         Height          =   315
         Index           =   3
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":799E
         TabIndex        =   24
         Top             =   4590
         Width           =   2655
      End
      Begin XpressEditorsLibCtl.dxTextEdit PicKlabeL 
         Height          =   315
         Index           =   7
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":7BEC
         TabIndex        =   25
         Top             =   5400
         Width           =   1035
      End
      Begin XpressEditorsLibCtl.dxTextEdit PicKlabeL 
         Height          =   315
         Index           =   8
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":7DBE
         TabIndex        =   26
         Top             =   4860
         Width           =   2655
      End
      Begin XpressEditorsLibCtl.dxPickEdit PicKKod1 
         Height          =   315
         Index           =   4
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":7F98
         TabIndex        =   27
         Top             =   5130
         Width           =   2655
      End
      Begin XpressEditorsLibCtl.dxPickEdit PicKKod2 
         Height          =   315
         Index           =   4
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":8215
         TabIndex        =   28
         Top             =   5670
         Width           =   2655
      End
      Begin XpressEditorsLibCtl.dxTextEdit PicKlabeL 
         Height          =   315
         Index           =   12
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":8463
         TabIndex        =   29
         Top             =   6480
         Width           =   1035
      End
      Begin XpressEditorsLibCtl.dxTextEdit PicKlabeL 
         Height          =   315
         Index           =   13
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":8635
         TabIndex        =   30
         Top             =   5940
         Width           =   2655
      End
      Begin XpressEditorsLibCtl.dxPickEdit PicKKod1 
         Height          =   315
         Index           =   5
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":8809
         TabIndex        =   31
         Top             =   6210
         Width           =   2655
      End
      Begin XpressEditorsLibCtl.dxPickEdit PicKKod2 
         Height          =   315
         Index           =   5
         Left            =   120
         OleObjectBlob   =   "FrMReport.frx":8A86
         TabIndex        =   32
         Top             =   6750
         Width           =   2655
      End
      Begin XpressEditorsLibCtl.dxPickEdit dxPickEdit1 
         Height          =   315
         Index           =   1
         Left            =   1110
         OleObjectBlob   =   "FrMReport.frx":8CD4
         TabIndex        =   33
         Top             =   2160
         Width           =   1200
      End
      Begin XpressEditorsLibCtl.dxPickEdit dxPickEdit1 
         Height          =   315
         Index           =   2
         Left            =   1110
         OleObjectBlob   =   "FrMReport.frx":8FBB
         TabIndex        =   34
         Top             =   3240
         Width           =   1200
      End
      Begin XpressEditorsLibCtl.dxPickEdit dxPickEdit1 
         Height          =   315
         Index           =   3
         Left            =   1110
         OleObjectBlob   =   "FrMReport.frx":92A2
         TabIndex        =   35
         Top             =   4320
         Width           =   1200
      End
      Begin XpressEditorsLibCtl.dxPickEdit dxPickEdit1 
         Height          =   315
         Index           =   4
         Left            =   1110
         OleObjectBlob   =   "FrMReport.frx":9589
         TabIndex        =   36
         Top             =   5400
         Width           =   1200
      End
      Begin XpressEditorsLibCtl.dxPickEdit dxPickEdit1 
         Height          =   315
         Index           =   5
         Left            =   1110
         OleObjectBlob   =   "FrMReport.frx":9870
         TabIndex        =   37
         Top             =   6480
         Width           =   1200
      End
   End
   Begin CONTROLSLibCtl.dxColorBtn dxColorBtn1 
      Height          =   705
      Left            =   12090
      TabIndex        =   12
      Top             =   9270
      Width           =   2955
      _Version        =   65536
      _cx             =   5212
      _cy             =   1244
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   162
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      FillColor       =   128
      ForeColor       =   0
      Caption         =   "Raporla"
      Enabled         =   -1  'True
      CaptionStringCount=   1
      GroupIndex      =   -1
      Stuck           =   0   'False
      PictureLayout   =   0
      Pushed          =   0   'False
   End
   Begin VB.PictureBox Picture3 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   1335
      Left            =   60
      Picture         =   "FrMReport.frx":9B57
      ScaleHeight     =   1335
      ScaleWidth      =   1515
      TabIndex        =   0
      Top             =   0
      Width           =   1515
   End
   Begin CONTROLSLibCtl.dxLabel dxLabel3 
      Height          =   1425
      Left            =   3420
      TabIndex        =   5
      Top             =   9030
      Width           =   5805
      _Version        =   0
      _cx             =   10239
      _cy             =   2514
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   26.25
         Charset         =   162
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Caption         =   "0.532.333 99 93"
      BackStyle       =   0
      BackColor       =   13160660
      ForeColor       =   128
      LabelStyle      =   3
      Label3dStyle    =   2
      Label3dOrientation=   4
      Label3dDepth    =   1
      PenWidth        =   1
      Angle           =   0
      ShadowColor     =   12632319
   End
   Begin CONTROLSLibCtl.dxLabel dxLabel2 
      Height          =   1425
      Left            =   -660
      TabIndex        =   3
      Top             =   8910
      Width           =   5805
      _Version        =   0
      _cx             =   10239
      _cy             =   2514
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   39.75
         Charset         =   162
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Caption         =   "mentalsoft"
      BackStyle       =   0
      BackColor       =   13160660
      ForeColor       =   128
      LabelStyle      =   3
      Label3dStyle    =   2
      Label3dOrientation=   4
      Label3dDepth    =   1
      PenWidth        =   1
      Angle           =   0
      ShadowColor     =   12632319
   End
   Begin CONTROLSLibCtl.dxLabel dxLabel1 
      Height          =   1305
      Left            =   1920
      TabIndex        =   2
      Top             =   -90
      Width           =   13155
      _Version        =   0
      _cx             =   23204
      _cy             =   2302
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Verdana"
         Size            =   42
         Charset         =   162
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Caption         =   "SEYHAN DAÐITIM"
      BackStyle       =   0
      BackColor       =   13160660
      ForeColor       =   4210752
      LabelStyle      =   3
      Label3dStyle    =   2
      Label3dOrientation=   4
      Label3dDepth    =   1
      PenWidth        =   1
      Angle           =   0
      ShadowColor     =   16777215
   End
   Begin CONTROLSLibCtl.dxBackground dxBackground2 
      Height          =   1095
      Left            =   -30
      TabIndex        =   4
      Top             =   9090
      Width           =   15315
      _Version        =   65536
      _cx             =   27014
      _cy             =   1931
      StartColor      =   16777215
      EndColor        =   128
      ColorFillStyle  =   0
      BackgroundStyle =   0
      DrawPictureStyle=   1
      AnimationInterval=   1000
   End
   Begin CONTROLSLibCtl.dxBackground dxBackground1 
      Height          =   1395
      Left            =   1740
      TabIndex        =   1
      Top             =   -60
      Width           =   13485
      _Version        =   65536
      _cx             =   23786
      _cy             =   2461
      StartColor      =   128
      EndColor        =   16777215
      ColorFillStyle  =   0
      BackgroundStyle =   0
      DrawPictureStyle=   1
      AnimationInterval=   1000
   End
End
Attribute VB_Name = "FrMReport"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim AmbarsTr As String
Dim AmbarSrg As String
Dim ElemanSrg As String
Dim KasaSrg As String
Dim TiP As Integer
Dim SiNDEx As Integer
Dim DegeR As String * 1
Dim ButoniNdeX As Integer
Dim ButonKeY As Integer
Dim iLkTariH, SonTariH, SQLBilgi As String
Sub SGiderLer()
On Error GoTo HATA
If dxDateEdit2(0) > dxDateEdit2(1) Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit2(0).DisplayText) = 0 Then iLkTariH = "01/01/" & Year(Date) Else iLkTariH = dxDateEdit2(0)
If Len(dxDateEdit2(1).DisplayText) = 0 Then SonTariH = "31/12/" & Year(Date) Else SonTariH = dxDateEdit2(1)

TARIHSTR = " and LG_" & GFirma & "_" & GDonem & "_CLFLINE.DATE_ >= '" & Format(iLkTariH, "MM/DD/YY") & "' AND LG_" & GFirma & "_" & GDonem & "_CLFLINE.DATE_ <= '" & Format(SonTariH, "MM/DD/YY") & "' "
FCari_Kur
CnnMain.Execute "drop view Mena_XX_GenelGider"
SQLSTR = "SELECT LG_" & GFirma & "_CLCARD.LOGICALREF, LG_" & GFirma & "_CLCARD.CODE, LG_" & GFirma & "_CLCARD.DEFINITION_, LG_" & GFirma & "_CLCARD.SPECODE,LG_" & GFirma & "_CLCARD.CYPHCODE, LG_" & GFirma & "_CLCARD.CITY, LG_" & GFirma & "_CLCARD.SPECODE2, LG_" & GFirma & "_CLCARD.SPECODE3,LG_" & GFirma & "_CLCARD.SPECODE4, LG_" & GFirma & "_CLCARD.SPECODE5, LG_" & GFirma & "_" & GDonem & "_CLFLINE.DATE_, LG_" & GFirma & "_" & GDonem & "_CLFLINE.MODULENR, LG_" & GFirma & "_" & GDonem & "_CLFLINE.TRCODE, LG_" & GFirma & "_" & GDonem & "_CLFLINE.TRANNO, LG_" & GFirma & "_" & GDonem & "_CLFLINE.DOCODE, LG_" & GFirma & "_" & GDonem & "_CLFLINE.LINEEXP, LG_" & GFirma & "_" & GDonem & "_CLFLINE.SIGN, LG_" & GFirma & "_" & GDonem & "_CLFLINE.AMOUNT, LG_" & GFirma & "_" & GDonem & "_CLFLINE.CANCELLED, LG_" & GFirma & "_" & GDonem & "_CLFLINE.LINEEXCTYP, LG_" & GFirma & "_" & GDonem & "_CLFLINE.LOGICALREF AS CLFLINEREF " _
& "FROM LG_" & GFirma & "_CLCARD INNER JOIN LG_" & GFirma & "_" & GDonem & "_CLFLINE ON LG_" & GFirma & "_CLCARD.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_CLFLINE.CLIENTREF WHERE LG_" & GFirma & "_CLCARD.LOGICALREF>0 "
'CariStrA
CnnMain.Execute "CREATE VIEW Mena_XX_GenelGider WITH ENCRYPTION AS " & SQLSTR & TARIHSTR & CariStrA
SQLBilgi = Format(iLkTariH, "MM/DD/YY") & " - " & Format(SonTariH, "MM/DD/YY") & " Tarih Aralýðýnda " & Now & " Tarih/Saatinde Alýnmýþtýr."
Exit Sub
HATA:
MsgBox Err.Number & Err.Description
   Resume Next
   Exit Sub

End Sub
Sub SNotStok()
On Error GoTo HATA

If dxDateEdit2(0) > dxDateEdit2(1) Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit2(0).DisplayText) = 0 Then iLkTariH = "01/01/" & Year(Date) Else iLkTariH = dxDateEdit2(0)
If Len(dxDateEdit2(1).DisplayText) = 0 Then SonTariH = "31/12/" & Year(Date) Else SonTariH = dxDateEdit2(1)
TARIHSTR = " where LG_" & GFirma & "_" & GDonem & "_STLINE.DATE_ >= '" & Format(iLkTariH, "MM/DD/YY") & "' AND LG_" & GFirma & "_" & GDonem & "_STLINE.DATE_ <= '" & Format(SonTariH, "MM/DD/YY") & "' "

FStok_Kur

    CnnMain.Execute "drop view MenaNotStok"
    CnnMain.Execute "drop view MenaNotStok1"
    CnnMain.Execute "CREATE VIEW MenaNotStok1 WITH ENCRYPTION AS SELECT LOGICALREF,STOCKREF From LG_" & GFirma & "_" & GDonem & "_STLINE " & TARIHSTR & ""
    CnnMain.Execute "CREATE VIEW MenaNotStok AS SELECT LG_" & GFirma & "_ITEMS.CODE, LG_" & GFirma & "_ITEMS.NAME,LG_" & GFirma & "_ITEMS.SPECODE,LG_" & GFirma & "_ITEMS.CYPHCODE, MenaNotStok1.LOGICALREF,LG_" & GFirma & "_ITEMS.LOGICALREF as STOKREF FROM LG_" & GFirma & "_ITEMS LEFT OUTER JOIN MenaNotStok1 ON " _
    & " LG_" & GFirma & "_ITEMS.LOGICALREF = MenaNotStok1.STOCKREF Where (MenaNotStok1.LOGICALREF Is Null) " & StoKStrA & ""
Exit Sub
HATA:
MsgBox Err.Number & Err.Description
   Resume Next
   Exit Sub
End Sub

Sub SRGMenaStokFiyat()
On Error GoTo HATA

FStok_Kur

DUZENLE:
SQLSTR = "SELECT LG_" & GFirma & "_ITEMS.STGRPCODE,LG_" & GFirma & "_ITEMS.SPECODE,LG_" & GFirma & "_ITEMS.CODE, LG_" & GFirma & "_ITEMS.NAME, LG_" & GFirma & "_PRCLIST.PRICE, LG_" & GFirma & "_UNITSETL.CODE AS Expr1,LG_" & GFirma & "_PRCLIST.INCVAT , LG_" & GFirma & "_PRCLIST.PRIORITY, LG_" & GFirma & "_PRCLIST.PTYPE, CRL.CURCODE " _
& " FROM LG_" & GFirma & "_ITEMS INNER JOIN LG_" & GFirma & "_PRCLIST ON LG_" & GFirma & "_ITEMS.LOGICALREF = LG_" & GFirma & "_PRCLIST.CARDREF INNER JOIN LG_" & GFirma & "_UNITSETL ON LG_" & GFirma & "_PRCLIST.UOMREF = LG_" & GFirma & "_UNITSETL.LOGICALREF INNER JOIN L_CURRENCYLIST AS CRL ON LG_" & GFirma & "_PRCLIST.CURRENCY=CRL.CURTYPE where CRL.FIRMNR=" & GFirma & ""

CnnMain.Execute "CREATE VIEW MENASTOKFIYAT WITH ENCRYPTION AS " & SQLSTR & StoKStrA

Exit Sub
HATA:
If Err.Number = -2147217900 Then
   CnnMain.Execute "drop view MENASTOKFIYAT"
   GoTo DUZENLE
Else
   MsgBox Err.Number
End If

End Sub

Sub SCARI()
On Error GoTo HATA
DUZENLE:
SQLSTR = "SELECT * From LG_" & GFirma & "_CLCARD WHERE LOGICALREF>0 and ACTIVE=0 "
FCari_Kur
CnnMain.Execute "CREATE VIEW ASRG_CARI WITH ENCRYPTION AS " & SQLSTR & CariStrA
Exit Sub
HATA:
If Err.Number = -2147217900 Then
   CnnMain.Execute "drop view ASRG_CARI"
   GoTo DUZENLE
Else
   MsgBox Err.Number & Err.Description
End If

End Sub
Sub SIcmal()
On Error GoTo HATA
If dxDateEdit2(0) > dxDateEdit2(1) Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit2(0).DisplayText) = 0 Then iLkTariH = "01/01/" & Year(Date) Else iLkTariH = dxDateEdit2(0)
If Len(dxDateEdit2(1).DisplayText) = 0 Then SonTariH = "31/12/" & Year(Date) Else SonTariH = dxDateEdit2(1)
TARIHSTR = " and ICMAL1.DATE_ = '" & Format(iLkTariH, "MM/DD/YY") & "'"
DUZENLE:
SQLSTR = "SELECT ISLEM, DATE_, FICHENO, CARI_KODU, CARI, KODU, ADI, TUTAR From ICMAL1 WHERE ISLEM <> ''"
CnnMain.Execute "CREATE VIEW ICMAL1 WITH ENCRYPTION AS select ISLEM, DATE_, FICHENO, CARI_KODU, CARI, KODU, ADI, TUTAR From ICMAL WHERE ISLEM <> ''"
CnnMain.Execute "CREATE VIEW ICMAL2 WITH ENCRYPTION AS " & SQLSTR & TARIHSTR
SIcmalCari
Exit Sub
HATA:
If Err.Number = -2147217900 Then
   CnnMain.Execute "drop view ICMAL1"
   CnnMain.Execute "drop view ICMAL2"
   GoTo DUZENLE
Else
   MsgBox Err.Number & Err.Description
End If
End Sub
Sub SIcmalCari()
On Error GoTo HATA

'If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If dxDateEdit2(0) > dxDateEdit2(1) Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit2(0).DisplayText) = 0 Then iLkTariH = "01/01/" & Year(Date) Else iLkTariH = dxDateEdit2(0)
If Len(dxDateEdit2(1).DisplayText) = 0 Then SonTariH = "31/12/" & Year(Date) Else SonTariH = dxDateEdit2(1)

'RAPORA ETKIME BAÞLIYOR
TARIHSTR = " where LG_" & GFirma & "_" & GDonem & "_CLFLINE.DATE_ >= '" & Format(SonTariH, "MM/DD/YY") & "' AND LG_" & GFirma & "_" & GDonem & "_CLFLINE.DATE_ <= '" & Format(iLkTariH, "MM/DD/YY") & "' "
FCari_Kur
    CnnMain.Execute "drop view BORCALC"
    CnnMain.Execute "drop view BAK"
    CnnMain.Execute "drop view BAK1"
    CnnMain.Execute "CREATE VIEW BORCALC WITH ENCRYPTION AS SELECT LG_" & GFirma & "_CLCARD.CODE, LG_" & GFirma & "_CLCARD.DEFINITION_, LG_" & GFirma & "_" & GDonem & "_CLFLINE.DATE_, LG_" & GFirma & "_" & GDonem & "_CLFLINE.SIGN,SUM(LG_" & GFirma & "_" & GDonem & "_CLFLINE.AMOUNT) As Expr1 FROM LG_" & GFirma & "_" & GDonem & "_CLFLINE INNER JOIN LG_" & GFirma & "_CLCARD ON LG_" & GFirma & "_" & GDonem & "_CLFLINE.CLIENTREF = LG_" & GFirma & "_CLCARD.LOGICALREF  " & TARIHSTR & CariStrA & " GROUP BY LG_" & GFirma & "_CLCARD.CODE, LG_" & GFirma & "_CLCARD.DEFINITION_, LG_" & GFirma & "_" & GDonem & "_CLFLINE.DATE_, LG_" & GFirma & "_" & GDonem & "_CLFLINE.SIGN"
    CnnMain.Execute "CREATE VIEW BAK AS WITH ENCRYPTION SELECT CODE, DEFINITION_,SIGN,  [BORC] =CASE SIGN WHEN 0 THEN SUM(Expr1)ELSE 0 END,[ALACAK] =CASE SIGN WHEN 1 THEN SUM(Expr1) ELSE 0 END From BORCALC GROUP BY CODE, DEFINITION_,SIGN "
    CnnMain.Execute "CREATE VIEW BAK1 AS WITH ENCRYPTION SELECT CODE, DEFINITION_, SUM(BORC) AS Expr1, SUM(ALACAK) AS Expr2 From BAK GROUP BY CODE, DEFINITION_"
Exit Sub
HATA:
   Resume Next
   Exit Sub
End Sub

Sub SAlisFiyat()
SQLSTR = "select T.CARDREF,avg(T.PRICE)as AFiyat from(SELECT CARDREF, PRICE, BEGDATE, ENDDATE From dbo.LG_001_PRCLIST " _
& " WHERE (PTYPE = 2) AND (BEGDATE < GETDATE()) AND (ENDDATE > GETDATE())) as T group by T.CardRef "
End Sub
Sub SMaSraFElm()
On Error GoTo HATA
Eleman_Ara
If dxDateEdit2(0) > dxDateEdit2(1) Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit2(0).DisplayText) = 0 Then iLkTariH = "01/01/" & Year(Date) Else iLkTariH = dxDateEdit2(0)
If Len(dxDateEdit2(1).DisplayText) = 0 Then SonTariH = "31/12/" & Year(Date) Else SonTariH = dxDateEdit2(1)
TARIHSTR = " and LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ >= '" & Format(iLkTariH, "MM/DD/YY") & "' and LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ <= '" & Format(SonTariH, "MM/DD/YY") & "'"

   
If ElemanSrg <> "" Then DURUMTR = " AND LG_" & GFirma & "_PROJECT.NAME IN " & ElemanSrg Else DURUMTR = ""
   
DUZENLE:

SQLSTR = "SELECT LG_" & GFirma & "_SRVCARD.CODE, LG_" & GFirma & "_SRVCARD.DEFINITION_, LG_" & GFirma & "_" & GDonem & "_STLINE.TRCODE, LG_" & GFirma & "_" & GDonem & "_STLINE.DATE_,LG_" & GFirma & "_" & GDonem & "_INVOICE.FICHENO, LG_" & GFirma & "_" & GDonem & "_INVOICE.TRCODE AS Expr1, LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ AS Expr2,LG_" & GFirma & "_" & GDonem & "_STLINE.LINETYPE , LG_" & GFirma & "_" & GDonem & "_STLINE.LINENET, LG_" & GFirma & "_PROJECT.Name, LG_" & GFirma & "_" & GDonem & "_INVOICE.GENEXP1,LG_" & GFirma & "_" & GDonem & "_STLINE.AMOUNT,LG_" & GFirma & "_CLCARD.DEFINITION_ AS Expr4,LG_" & GFirma & "_CLCARD.code AS Expr5,LG_" & GFirma & "_" & GDonem & "_STLINE.LINEEXP  FROM LG_" & GFirma & "_" & GDonem & "_STLINE INNER JOIN " _
& " LG_" & GFirma & "_SRVCARD ON LG_" & GFirma & "_" & GDonem & "_STLINE.STOCKREF = LG_" & GFirma & "_SRVCARD.LOGICALREF INNER JOIN LG_" & GFirma & "_" & GDonem & "_INVOICE ON LG_" & GFirma & "_" & GDonem & "_STLINE.INVOICEREF = LG_" & GFirma & "_" & GDonem & "_INVOICE.LOGICALREF INNER JOIN LG_" & GFirma & "_PROJECT ON LG_" & GFirma & "_" & GDonem & "_STLINE.PROJECTREF = LG_" & GFirma & "_PROJECT.LOGICALREF  LEFT OUTER JOIN  LG_" & GFirma & "_CLCARD ON LG_" & GFirma & "_" & GDonem & "_INVOICE.CLIENTREF = LG_" & GFirma & "_CLCARD.LOGICALREF where (LG_" & GFirma & "_" & GDonem & "_STLINE.LINETYPE = 4) And (LG_" & GFirma & "_" & GDonem & "_STLINE.trcode = 4)"

CnnMain.Execute "CREATE VIEW MASRAF WITH ENCRYPTION AS " & SQLSTR & TARIHSTR & DURUMTR

Exit Sub
HATA:
If Err.Number = -2147217900 Then
   CnnMain.Execute "drop view MASRAF"
   GoTo DUZENLE
Else
   MsgBox Err.Number
End If

End Sub

Sub SMaSraF()
On Error GoTo HATA
If dxDateEdit2(0) > dxDateEdit2(1) Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit2(0).DisplayText) = 0 Then iLkTariH = "01/01/" & Year(Date) Else iLkTariH = dxDateEdit2(0)
If Len(dxDateEdit2(1).DisplayText) = 0 Then SonTariH = "31/12/" & Year(Date) Else SonTariH = dxDateEdit2(1)
TARIHSTR = " and LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ >= '" & Format(iLkTariH, "MM/DD/YY") & "' and LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ <= '" & Format(SonTariH, "MM/DD/YY") & "'"
DUZENLE:

SQLSTR = "SELECT LG_" & GFirma & "_SRVCARD.CODE, LG_" & GFirma & "_SRVCARD.DEFINITION_, LG_" & GFirma & "_" & GDonem & "_STLINE.TRCODE, LG_" & GFirma & "_" & GDonem & "_STLINE.DATE_,LG_" & GFirma & "_" & GDonem & "_INVOICE.FICHENO, LG_" & GFirma & "_" & GDonem & "_INVOICE.TRCODE AS Expr1, LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ AS Expr2,LG_" & GFirma & "_" & GDonem & "_STLINE.LINETYPE , LG_" & GFirma & "_" & GDonem & "_STLINE.LINENET, LG_" & GFirma & "_PROJECT.Name, LG_" & GFirma & "_" & GDonem & "_INVOICE.GENEXP1,LG_" & GFirma & "_" & GDonem & "_STLINE.AMOUNT,LG_" & GFirma & "_CLCARD.DEFINITION_ AS Expr4,LG_" & GFirma & "_CLCARD.code AS Expr5,LG_" & GFirma & "_" & GDonem & "_STLINE.LINEEXP FROM LG_" & GFirma & "_" & GDonem & "_STLINE INNER JOIN " _
& " LG_" & GFirma & "_SRVCARD ON LG_" & GFirma & "_" & GDonem & "_STLINE.STOCKREF = LG_" & GFirma & "_SRVCARD.LOGICALREF INNER JOIN LG_" & GFirma & "_" & GDonem & "_INVOICE ON LG_" & GFirma & "_" & GDonem & "_STLINE.INVOICEREF = LG_" & GFirma & "_" & GDonem & "_INVOICE.LOGICALREF INNER JOIN LG_" & GFirma & "_PROJECT ON LG_" & GFirma & "_" & GDonem & "_STLINE.PROJECTREF = LG_" & GFirma & "_PROJECT.LOGICALREF  LEFT OUTER JOIN  LG_" & GFirma & "_CLCARD ON LG_" & GFirma & "_" & GDonem & "_INVOICE.CLIENTREF = LG_" & GFirma & "_CLCARD.LOGICALREF where (LG_" & GFirma & "_" & GDonem & "_STLINE.LINETYPE = 4) And (LG_" & GFirma & "_" & GDonem & "_STLINE.trcode = 4)"

CnnMain.Execute "CREATE VIEW MASRAF WITH ENCRYPTION AS " & SQLSTR & TARIHSTR

Exit Sub
HATA:
If Err.Number = -2147217900 Then
   CnnMain.Execute "drop view MASRAF"
   GoTo DUZENLE
Else
   MsgBox Err.Number
End If

End Sub

Sub STaHsilat()
On Error GoTo HATA
If DegeR <> "Q" Then
    Eleman_Ara
    If dxDateEdit2(0) > dxDateEdit2(1) Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
    If Len(dxDateEdit2(0).DisplayText) = 0 Then iLkTariH = "01/01/" & Year(Date) Else iLkTariH = dxDateEdit2(0)
    If Len(dxDateEdit2(1).DisplayText) = 0 Then SonTariH = "31/12/" & Year(Date) Else SonTariH = dxDateEdit2(1)
    TARIHSTR = " and TAHSILAR.TARIH >= '" & Format(iLkTariH, "MM/DD/YY") & "' and TAHSILAR.TARIH <= '" & Format(SonTariH, "MM/DD/YY") & "'"
    If ElemanSrg <> "" Then DURUMTR = " AND LG_" & GFirma & "_PROJECT.NAME IN " & ElemanSrg Else DURUMTR = ""
Else
    TARIHSTR = ""
    DURUMTR = ""
End If
FStok_Kur
FCari_Kur

DUZENLE:

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
    
    
    CnnMain.Execute "CREATE VIEW TAHSILAR WITH ENCRYPTION  AS " & SQLSTR
    
    SQLSTR1 = "SELECT TAHSILAR.ISLEM, TAHSILAR.TARIH, TAHSILAR.TURU, TAHSILAR.MODEL, TAHSILAR.[NO], LG_" & GFirma & "_CLCARD.CODE,LG_" & GFirma & "_CLCARD.DEFINITION_ , TAHSILAR.TUTAR, TAHSILAR.TIP, LG_" & GFirma & "_PROJECT.Name " _
    & " FROM TAHSILAR LEFT OUTER JOIN LG_" & GFirma & "_CLCARD ON TAHSILAR.CARI=LG_" & GFirma & "_CLCARD.LOGICALREF LEFT OUTER JOIN  LG_" & GFirma & "_PROJECT ON TAHSILAR.PRO = LG_" & GFirma & "_PROJECT.LOGICALREF"
    
    CnnMain.Execute "CREATE VIEW TAHSILAT WITH ENCRYPTION  AS " & SQLSTR1 & TARIHSTR & DURUMTR & StoKStrA & CariStrA

Exit Sub
HATA:
If Err.Number = -2147217900 Then
   CnnMain.Execute "drop view TAHSILAR"
   CnnMain.Execute "drop view TAHSILAT"
   GoTo DUZENLE
Else
   MsgBox Err.Number
End If

End Sub

Sub SMenaElemanSat()
On Error GoTo HATA
Eleman_Ara
FStok_Kur
FCari_Kur
If dxDateEdit2(0) > dxDateEdit2(1) Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit2(0).DisplayText) = 0 Then iLkTariH = "01/01/" & Year(Date) Else iLkTariH = dxDateEdit2(0)
If Len(dxDateEdit2(1).DisplayText) = 0 Then SonTariH = "31/12/" & Year(Date) Else SonTariH = dxDateEdit2(1)
TARIHSTR = " and LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ >= '" & Format(iLkTariH, "MM/DD/YY") & "' and LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ <= '" & Format(SonTariH, "MM/DD/YY") & "'"
   
If ElemanSrg <> "" Then DURUMTR = "  AND LG_" & GFirma & "_PROJECT.NAME IN " & ElemanSrg Else DURUMTR = ""
DUZENLE:
SQLSTR = "SELECT LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_, LG_" & GFirma & "_" & GDonem & "_INVOICE.FICHENO, LG_" & GFirma & "_" & GDonem & "_INVOICE.TRCODE,LG_" & GFirma & "_" & GDonem & "_STLINE.VATAMNT, LG_" & GFirma & "_CLCARD.CODE,LG_" & GFirma & "_CLCARD.DEFINITION_, LG_" & GFirma & "_ITEMS.CODE AS Expr3, " _
& " LG_" & GFirma & "_ITEMS.NAME, LG_" & GFirma & "_" & GDonem & "_STLINE.AMOUNT, LG_" & GFirma & "_" & GDonem & "_STLINE.PRICE, LG_" & GFirma & "_" & GDonem & "_STLINE.TOTAL, LG_" & GFirma & "_" & GDonem & "_STLINE.DISTDISC , LG_" & GFirma & "_" & GDonem & "_STLINE.LINENET, LG_" & GFirma & "_" & GDonem & "_STLINE.LINETYPE,LG_" & GFirma & "_CLCARD.CYPHCODE,LG_" & GFirma & "_CLCARD.CITY ,LG_" & GFirma & "_PROJECT.NAME AS Expr1,LG_" & GFirma & "_ITEMS.LOGICALREF as STOKREF,LG_" & GFirma & "_CLCARD.SPECODE5 FROM LG_" & GFirma & "_CLCARD INNER JOIN " _
& " LG_" & GFirma & "_" & GDonem & "_INVOICE ON LG_" & GFirma & "_CLCARD.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_INVOICE.CLIENTREF INNER JOIN " _
& " LG_" & GFirma & "_" & GDonem & "_STLINE ON LG_" & GFirma & "_" & GDonem & "_INVOICE.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_STLINE.INVOICEREF INNER JOIN  LG_" & GFirma & "_ITEMS ON LG_" & GFirma & "_" & GDonem & "_STLINE.STOCKREF = LG_" & GFirma & "_ITEMS.LOGICALREF INNER JOIN  LG_" & GFirma & "_PROJECT ON LG_" & GFirma & "_" & GDonem & "_INVOICE.PROJECTREF = LG_" & GFirma & "_PROJECT.LOGICALREF WHERE (LG_" & GFirma & "_" & GDonem & "_INVOICE.TRCODE in(8,3,7,2)) AND (LG_" & GFirma & "_" & GDonem & "_STLINE.LINETYPE = 0) AND LG_" & GFirma & "_" & GDonem & "_INVOICE.CANCELLED=0  "

CnnMain.Execute "CREATE VIEW MENAELEMANBAZLISATIS AS " & SQLSTR & TARIHSTR & DURUMTR & StoKStrA & CariStrA

Exit Sub
HATA:
If Err.Number = -2147217900 Then
   CnnMain.Execute "drop view MENAELEMANBAZLISATIS"
   GoTo DUZENLE
Else
   MsgBox Err.Number & Err.Description
End If

End Sub

Sub SRGMenaFSC()
On Error GoTo HATA

Eleman_Ara

If dxDateEdit2(0) > dxDateEdit2(1) Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit2(0).DisplayText) = 0 Then iLkTariH = "01/01/" & Year(Date) Else iLkTariH = dxDateEdit2(0)
If Len(dxDateEdit2(1).DisplayText) = 0 Then SonTariH = "31/12/" & Year(Date) Else SonTariH = dxDateEdit2(1)

TARIHSTR = " and LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ >= '" & Format(iLkTariH, "MM/DD/YY") & "' and LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ <= '" & Format(SonTariH, "MM/DD/YY") & "'"

If ElemanSrg <> "" Then DURUMTR = " AND LG_" & GFirma & "_PROJECT.NAME IN " & ElemanSrg Else DURUMTR = ""
   
FStok_Kur
FCari_Kur

DUZENLE:
SQLSTR = "SELECT LG_" & GFirma & "_CLCARD.CODE AS CariKod, LG_" & GFirma & "_CLCARD.DEFINITION_ AS CariAdi, LG_" & GFirma & "_CLCARD.SPECODE AS CariOzel, LG_" & GFirma & "_CLCARD.CITY AS CariSehir, LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ AS FaturaTarih, LG_" & GFirma & "_" & GDonem & "_INVOICE.GRPCODE AS FaturaCinsi, LG_" & GFirma & "_" & GDonem & "_INVOICE.TRCODE AS FaturaTipi, LG_" & GFirma & "_" & GDonem & "_STFICHE.IOCODE AS FisCinsi, LG_" & GFirma & "_" & GDonem & "_INVOICE.FICHENO AS FaturaNo, LG_" & GFirma & "_" & GDonem & "_INVOICE.DOCODE AS FaturaXNo, LG_" & GFirma & "_" & GDonem & "_INVOICE.SALESMANREF AS SatýcýKodu, LG_" & GFirma & "_" & GDonem & "_STLINE.SPECODE AS SatirOzel, LG_" & GFirma & "_" & GDonem & "_STLINE.AMOUNT AS Miktar, LG_" & GFirma & "_" & GDonem & "_STLINE.PRICE AS BFiyati," _
& " LG_" & GFirma & "_" & GDonem & "_STLINE.TOTAL AS Tutari, LG_" & GFirma & "_" & GDonem & "_STLINE.VATAMNT AS KDVsi, LG_" & GFirma & "_" & GDonem & "_STLINE.VATMATRAH AS KDVliTutar, LG_" & GFirma & "_" & GDonem & "_STLINE.LINENET AS NetTutar, LG_" & GFirma & "_ITEMS.CODE AS StokKodu, LG_" & GFirma & "_ITEMS.NAME AS StokAdi, LG_" & GFirma & "_ITEMS.STGRPCODE AS StokGrup, LG_" & GFirma & "_ITEMS.PRODUCERCODE AS StokUretici, LG_" & GFirma & "_ITEMS.SPECODE AS StokOzel, LG_" & GFirma & "_ITEMS.CYPHCODE AS StokYetki, LG_" & GFirma & "_ITEMS.VAT AS StokKDV, LG_" & GFirma & "_" & GDonem & "_STLINE.UINFO1 AS Carpan1, LG_" & GFirma & "_" & GDonem & "_STLINE.UINFO2 AS Carpan2, LG_" & GFirma & "_UNITSETL.CODE AS Birimi, LG_" & GFirma & "_" & GDonem & "_STLINE.DISTDISC, LG_" & GFirma & "_" & GDonem & "_STLINE.DISTCOST, LG_" & GFirma & "_" & GDonem & "_STLINE.DISTEXP, LG_" & GFirma & "_" & GDonem & "_INVOICE.TOTALDISCOUNTS," _
& " LG_" & GFirma & "_" & GDonem & "_INVOICE.GROSSTOTAL , LG_" & GFirma & "_" & GDonem & "_INVOICE.LOGICALREF AS INVREF, LG_" & GFirma & "_" & GDonem & "_INVOICE.NETTOTAL ,LG_" & GFirma & "_PAYPLANS.DEFINITION_ ,LG_" & GFirma & "_CLCARD.LOGICALREF AS CariReF, LG_" & GFirma & "_ITEMS.LOGICALREF AS StokReF,LG_" & GFirma & "_PROJECT.NAME AS ProjectAdi, LG_" & GFirma & "_ITEMS.LOGOID, LG_" & GFirma & "_ITEMS.GTIPCODE, LG_" & GFirma & "_CLCARD.SPECODE5 " _
& " FROM LG_" & GFirma & "_" & GDonem & "_STFICHE INNER JOIN LG_" & GFirma & "_CLCARD INNER JOIN LG_" & GFirma & "_" & GDonem & "_INVOICE ON LG_" & GFirma & "_CLCARD.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_INVOICE.CLIENTREF ON LG_" & GFirma & "_" & GDonem & "_STFICHE.INVOICEREF = LG_" & GFirma & "_" & GDonem & "_INVOICE.LOGICALREF INNER JOIN LG_" & GFirma & "_ITEMS INNER JOIN LG_" & GFirma & "_" & GDonem & "_STLINE ON LG_" & GFirma & "_ITEMS.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_STLINE.STOCKREF ON LG_" & GFirma & "_" & GDonem & "_STFICHE.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_STLINE.STFICHEREF INNER JOIN LG_" & GFirma & "_UNITSETL ON LG_" & GFirma & "_" & GDonem & "_STLINE.UOMREF = LG_" & GFirma & "_UNITSETL.LOGICALREF LEFT OUTER JOIN LG_SLSMAN ON LG_" & GFirma & "_" & GDonem & "_INVOICE.SALESMANREF = LG_SLSMAN.LOGICALREF" _
& " LEFT OUTER JOIN LG_" & GFirma & "_PAYPLANS ON LG_" & GFirma & "_" & GDonem & "_INVOICE.PAYDEFREF = LG_" & GFirma & "_PAYPLANS.LOGICALREF LEFT OUTER JOIN  LG_" & GFirma & "_PROJECT ON LG_" & GFirma & "_" & GDonem & "_INVOICE.PROJECTREF = LG_" & GFirma & "_PROJECT.LOGICALREF " _
& " Where (LG_" & GFirma & "_" & GDonem & "_STLINE.LINETYPE = 0) And (LG_" & GFirma & "_" & GDonem & "_STLINE.CANCELLED = 0) "

CnnMain.Execute "CREATE VIEW MenaFSC WITH ENCRYPTION AS " & SQLSTR & TARIHSTR & DURUMTR & StoKStrA & CariStrA
'
Exit Sub
HATA:
If Err.Number = -2147217900 Then
   CnnMain.Execute "drop view MenaFSC"
   GoTo DUZENLE
Else
   MsgBox Err.Number
End If

End Sub
Sub SRGMenaXXFSC()
On Error GoTo HATA

Eleman_Ara

If dxDateEdit2(0) > dxDateEdit2(1) Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit2(0).DisplayText) = 0 Then iLkTariH = "01/01/" & Year(Date) Else iLkTariH = dxDateEdit2(0)
If Len(dxDateEdit2(1).DisplayText) = 0 Then SonTariH = "31/12/" & Year(Date) Else SonTariH = dxDateEdit2(1)

TARIHSTR = " and INV.DATE_ >= '" & Format(iLkTariH, "MM/DD/YY") & "' and INV.DATE_ <= '" & Format(SonTariH, "MM/DD/YY") & "'"

If ElemanSrg <> "" Then DURUMTR = " AND SUBSTRING(CL.CODE,1,6) IN " & ElemanSrg Else DURUMTR = ""
   
FXStok_Kur
FXCari_Kur

DUZENLE:
SQLSTR = "SELECT CL.CODE AS CariKod, CL.DEFINITION_ AS CariAdi,L.IOCODE AS FisCinsi ,CL.SPECODE AS CariOzel,CL.SPECODE2 AS CariOzel2,CL.SPECODE3 AS CariOzel3,CL.SPECODE4 AS CariOzel4, CL.CITY AS CariSehir, INV.DATE_ AS FaturaTarih, INV.GRPCODE AS FaturaCinsi, INV.TRCODE AS FaturaTipi, INV.FICHENO AS FaturaNo, INV.DOCODE AS FaturaXNo, INV.SALESMANREF AS SatýcýKodu, L.SPECODE AS SatirOzel, L.AMOUNT AS Miktar, L.PRICE AS BFiyati,L.TOTAL AS Tutari, L.VATAMNT AS KDVsi, L.VATMATRAH AS KDVliTutar, L.LINENET AS NetTutar, ST.CODE AS StokKodu, ST.NAME AS StokAdi, ST.STGRPCODE AS StokGrup, ST.PRODUCERCODE AS StokUretici, ST.SPECODE AS StokOzel, ST.CYPHCODE AS StokYetki, ST.VAT AS StokKDV,SLS.DEFINITION_ AS FSATICI, " _
& "L.UINFO1 AS Carpan1, L.UINFO2 AS Carpan2, UL.CODE AS Birimi, L.DISTDISC, L.DISTCOST, L.DISTEXP, INV.TOTALDISCOUNTS, INV.GROSSTOTAL , INV.LOGICALREF AS INVREF, INV.NETTOTAL ,PY.DEFINITION_ ,CL.LOGICALREF AS CariReF, ST.LOGICALREF AS StokReF,PR.NAME AS ProjectAdi, ST.LOGOID, ST.GTIPCODE, CL.SPECODE5,ISNULL(STTOT.ORTFIYAT,0) as OrtFiyat,cl.TOWN,L.LINETYPE,month(INV.DATE_) AS AyID,MR.CODE as MarkaAdi " _
& " FROM LG_" & GFirma & "_" & GDonem & "_INVOICE AS INV INNER JOIN LG_" & GFirma & "_" & GDonem & "_STLINE AS L ON INV.LOGICALREF=L.INVOICEREF INNER JOIN LG_" & GFirma & "_CLCARD AS CL ON INV.CLIENTREF=CL.LOGICALREF INNER JOIN LG_" & GFirma & "_ITEMS AS ST ON L.STOCKREF=ST.LOGICALREF INNER JOIN LG_" & GFirma & "_UNITSETL AS UL ON L.UOMREF = UL.LOGICALREF LEFT OUTER JOIN LG_SLSMAN SLS ON INV.SALESMANREF = SLS.LOGICALREF LEFT OUTER JOIN LG_" & GFirma & "_PAYPLANS AS PY ON INV.PAYDEFREF = PY.LOGICALREF LEFT OUTER JOIN  LG_" & GFirma & "_PROJECT AS PR ON INV.PROJECTREF = PR.LOGICALREF left outer join LG_" & GFirma & "_MARK as MR On ST.MARKREF=MR.LOGICALREF LEFT OUTER JOIN " _
& "(SELECT TARIH as SonAlisTarihi, D.STOCKREF as STOCKREF, T.OAT AS ORTFIyat FROM (SELECT STOCKREF, MAX(DATE_) AS TARIH FROM LG_052_01_STLINE WHERE (IOCODE = 1) AND (TRCODE IN (1, 14,50,51)) AND (PRICE>0) AND (AMOUNT > 0) AND (CANCELLED = 0) GROUP BY STOCKREF) AS D INNER JOIN (SELECT STOCKREF, DATE_ AS SAT, ISNULL(ROUND((SUM(LINENET)- (SUM(DISTDISC)- SUM(DISTCOST))) / SUM(AMOUNT), 2), 0) AS OAT FROM LG_052_01_STLINE WHERE (IOCODE = 1) AND (TRCODE IN (1, 14,50,51)) AND (PRICE>0) AND (AMOUNT > 0) AND (CANCELLED = 0) GROUP BY STOCKREF, DATE_) AS T ON D.STOCKREF = T.STOCKREF AND D.TARIH = T.SAT) as STTOT " _
& "ON ST.LOGICALREF=STTOT.STOCKREF Where (L.LIneType = 0) And (L.CANCELLED = 0) "

''SQLSTR = "SELECT CL.CODE AS CariKod, CL.DEFINITION_ AS CariAdi,L.IOCODE AS FisCinsi ,CL.SPECODE AS CariOzel,CL.SPECODE2 AS CariOzel2,CL.SPECODE3 AS CariOzel3,CL.SPECODE4 AS CariOzel4, CL.CITY AS CariSehir, INV.DATE_ AS FaturaTarih, INV.GRPCODE AS FaturaCinsi, INV.TRCODE AS FaturaTipi, INV.FICHENO AS FaturaNo, INV.DOCODE AS FaturaXNo, INV.SALESMANREF AS SatýcýKodu, L.SPECODE AS SatirOzel, L.AMOUNT AS Miktar, L.PRICE AS BFiyati,L.TOTAL AS Tutari, L.VATAMNT AS KDVsi, L.VATMATRAH AS KDVliTutar, L.LINENET AS NetTutar, ST.CODE AS StokKodu, ST.NAME AS StokAdi, ST.STGRPCODE AS StokGrup, ST.PRODUCERCODE AS StokUretici, ST.SPECODE AS StokOzel, ST.CYPHCODE AS StokYetki, ST.VAT AS StokKDV,SLS.DEFINITION_ AS FSATICI, " _
''& "L.UINFO1 AS Carpan1, L.UINFO2 AS Carpan2, UL.CODE AS Birimi, L.DISTDISC, L.DISTCOST, L.DISTEXP, INV.TOTALDISCOUNTS, INV.GROSSTOTAL , INV.LOGICALREF AS INVREF, INV.NETTOTAL ,PY.DEFINITION_ ,CL.LOGICALREF AS CariReF, ST.LOGICALREF AS StokReF,PR.NAME AS ProjectAdi, ST.LOGOID, ST.GTIPCODE, CL.SPECODE5,ISNULL(STTOT.ORTFIYAT,0) as OrtFiyat,cl.TOWN,L.LINETYPE,month(INV.DATE_) AS AyID,MR.CODE as MarkaAdi " _
''& " FROM LG_" & GFirma & "_" & GDonem & "_INVOICE AS INV INNER JOIN LG_" & GFirma & "_" & GDonem & "_STLINE AS L ON INV.LOGICALREF=L.INVOICEREF INNER JOIN LG_" & GFirma & "_CLCARD AS CL ON INV.CLIENTREF=CL.LOGICALREF INNER JOIN LG_" & GFirma & "_ITEMS AS ST ON L.STOCKREF=ST.LOGICALREF INNER JOIN LG_" & GFirma & "_UNITSETL AS UL ON L.UOMREF = UL.LOGICALREF LEFT OUTER JOIN LG_SLSMAN SLS ON INV.SALESMANREF = SLS.LOGICALREF LEFT OUTER JOIN LG_" & GFirma & "_PAYPLANS AS PY ON INV.PAYDEFREF = PY.LOGICALREF LEFT OUTER JOIN  LG_" & GFirma & "_PROJECT AS PR ON INV.PROJECTREF = PR.LOGICALREF left outer join LG_" & GFirma & "_MARK as MR On ST.MARKREF=MR.LOGICALREF LEFT OUTER JOIN " _
''& "(SELECT STOCKREF, CASE WHEN ISNULL(SUM(ortmik), 0) =0 OR ISNULL(SUM(ortmik), 0)=0 THEN 0 ELSE ROUND(ISNULL(SUM(orttutar), 0) / ISNULL(SUM(ortmik), 0), 2) END AS ORTFIyat FROM (SELECT STOCKREF, ISNULL(SUM(LINENET), 0) AS orttutar, ISNULL(SUM(AMOUNT), 0) AS ortmik FROM LG_" & GFirma & "_" & GDonem & "_STLINE WHERE TRCODE IN (1,14,50,51) and (PRICE>0) GROUP BY STOCKREF,UINFO1,UINFO2) AS OT GROUP BY STOCKREF) AS STTOT " _
''& "ON ST.LOGICALREF=STTOT.STOCKREF Where (L.LIneType = 0) And (L.CANCELLED = 0) "
''
'''SQLSTR = "SELECT CL.CODE AS CariKod, CL.DEFINITION_ AS CariAdi,L.IOCODE AS FisCinsi ,CL.SPECODE AS CariOzel, CL.CITY AS CariSehir, INV.DATE_ AS FaturaTarih, INV.GRPCODE AS FaturaCinsi, INV.TRCODE AS FaturaTipi, INV.FICHENO AS FaturaNo, INV.DOCODE AS FaturaXNo, INV.SALESMANREF AS SatýcýKodu, L.SPECODE AS SatirOzel, L.AMOUNT AS Miktar, L.PRICE AS BFiyati,L.TOTAL AS Tutari, L.VATAMNT AS KDVsi, L.VATMATRAH AS KDVliTutar, L.LINENET AS NetTutar, ST.CODE AS StokKodu, ST.NAME AS StokAdi, ST.STGRPCODE AS StokGrup, ST.PRODUCERCODE AS StokUretici, ST.SPECODE AS StokOzel, ST.CYPHCODE AS StokYetki, ST.VAT AS StokKDV, L.UINFO1 AS Carpan1, L.UINFO2 AS Carpan2, UL.CODE AS Birimi, L.DISTDISC, L.DISTCOST, L.DISTEXP, INV.TOTALDISCOUNTS, INV.GROSSTOTAL , INV.LOGICALREF AS INVREF, INV.NETTOTAL ,PY.DEFINITION_ ,CL.LOGICALREF AS CariReF, ST.LOGICALREF AS StokReF,PR.NAME AS ProjectAdi, ST.LOGOID, ST.GTIPCODE, CL.SPECODE5,ISNULL(STTOT.ORTFIYAT,0) as OrtFiyat,cl.TOWN " _
'''& " FROM LG_" & GFirma & "_" & GDonem & "_INVOICE AS INV INNER JOIN LG_" & GFirma & "_" & GDonem & "_STLINE AS L ON INV.LOGICALREF=L.INVOICEREF INNER JOIN LG_" & GFirma & "_CLCARD AS CL ON INV.CLIENTREF=CL.LOGICALREF INNER JOIN LG_" & GFirma & "_ITEMS AS ST ON L.STOCKREF=ST.LOGICALREF INNER JOIN LG_" & GFirma & "_UNITSETL AS UL ON L.UOMREF = UL.LOGICALREF LEFT OUTER JOIN LG_SLSMAN SLS ON INV.SALESMANREF = SLS.LOGICALREF LEFT OUTER JOIN LG_" & GFirma & "_PAYPLANS AS PY ON INV.PAYDEFREF = PY.LOGICALREF LEFT OUTER JOIN  LG_" & GFirma & "_PROJECT AS PR ON INV.PROJECTREF = PR.LOGICALREF LEFT OUTER JOIN (SELECT STOCKREF,AVG(AVGVALUE)AS ORTFIYAT FROM LG_" & GFirma & "_" & GDonem & "_STINVTOT WHERE INVENNO=-1 AND AVGVALUE>0 GROUP BY STOCKREF) AS STTOT ON ST.LOGICALREF=STTOT.STOCKREF Where (L.LIneType = 0) And (L.CANCELLED = 0) "
''
'''sqlstr = "SELECT LG_" & GFirma & "_CLCARD.CODE AS CariKod, LG_" & GFirma & "_CLCARD.DEFINITION_ AS CariAdi, LG_" & GFirma & "_CLCARD.SPECODE AS CariOzel, LG_" & GFirma & "_CLCARD.CITY AS CariSehir, LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ AS FaturaTarih, LG_" & GFirma & "_" & GDonem & "_INVOICE.GRPCODE AS FaturaCinsi, LG_" & GFirma & "_" & GDonem & "_INVOICE.TRCODE AS FaturaTipi, LG_" & GFirma & "_" & GDonem & "_STFICHE.IOCODE AS FisCinsi, LG_" & GFirma & "_" & GDonem & "_INVOICE.FICHENO AS FaturaNo, LG_" & GFirma & "_" & GDonem & "_INVOICE.DOCODE AS FaturaXNo, LG_" & GFirma & "_" & GDonem & "_INVOICE.SALESMANREF AS SatýcýKodu, LG_" & GFirma & "_" & GDonem & "_STLINE.SPECODE AS SatirOzel, LG_" & GFirma & "_" & GDonem & "_STLINE.AMOUNT AS Miktar, LG_" & GFirma & "_" & GDonem & "_STLINE.PRICE AS BFiyati," _
'''& " LG_" & GFirma & "_" & GDonem & "_STLINE.TOTAL AS Tutari, LG_" & GFirma & "_" & GDonem & "_STLINE.VATAMNT AS KDVsi, LG_" & GFirma & "_" & GDonem & "_STLINE.VATMATRAH AS KDVliTutar, LG_" & GFirma & "_" & GDonem & "_STLINE.LINENET AS NetTutar, LG_" & GFirma & "_ITEMS.CODE AS StokKodu, LG_" & GFirma & "_ITEMS.NAME AS StokAdi, LG_" & GFirma & "_ITEMS.STGRPCODE AS StokGrup, LG_" & GFirma & "_ITEMS.PRODUCERCODE AS StokUretici, LG_" & GFirma & "_ITEMS.SPECODE AS StokOzel, LG_" & GFirma & "_ITEMS.CYPHCODE AS StokYetki, LG_" & GFirma & "_ITEMS.VAT AS StokKDV, LG_" & GFirma & "_" & GDonem & "_STLINE.UINFO1 AS Carpan1, LG_" & GFirma & "_" & GDonem & "_STLINE.UINFO2 AS Carpan2, LG_" & GFirma & "_UNITSETL.CODE AS Birimi, LG_" & GFirma & "_" & GDonem & "_STLINE.DISTDISC, LG_" & GFirma & "_" & GDonem & "_STLINE.DISTCOST, LG_" & GFirma & "_" & GDonem & "_STLINE.DISTEXP, LG_" & GFirma & "_" & GDonem & "_INVOICE.TOTALDISCOUNTS," _
'''& " LG_" & GFirma & "_" & GDonem & "_INVOICE.GROSSTOTAL , LG_" & GFirma & "_" & GDonem & "_INVOICE.LOGICALREF AS INVREF, LG_" & GFirma & "_" & GDonem & "_INVOICE.NETTOTAL ,LG_" & GFirma & "_PAYPLANS.DEFINITION_ ,LG_" & GFirma & "_CLCARD.LOGICALREF AS CariReF, LG_" & GFirma & "_ITEMS.LOGICALREF AS StokReF,LG_" & GFirma & "_PROJECT.NAME AS ProjectAdi, LG_" & GFirma & "_ITEMS.LOGOID, LG_" & GFirma & "_ITEMS.GTIPCODE, LG_" & GFirma & "_CLCARD.SPECODE5 " _
'''& " FROM LG_" & GFirma & "_" & GDonem & "_STFICHE INNER JOIN LG_" & GFirma & "_CLCARD INNER JOIN LG_" & GFirma & "_" & GDonem & "_INVOICE ON LG_" & GFirma & "_CLCARD.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_INVOICE.CLIENTREF ON LG_" & GFirma & "_" & GDonem & "_STFICHE.INVOICEREF = LG_" & GFirma & "_" & GDonem & "_INVOICE.LOGICALREF INNER JOIN LG_" & GFirma & "_ITEMS INNER JOIN LG_" & GFirma & "_" & GDonem & "_STLINE ON LG_" & GFirma & "_ITEMS.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_STLINE.STOCKREF ON LG_" & GFirma & "_" & GDonem & "_STFICHE.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_STLINE.STFICHEREF INNER JOIN LG_" & GFirma & "_UNITSETL ON LG_" & GFirma & "_" & GDonem & "_STLINE.UOMREF = LG_" & GFirma & "_UNITSETL.LOGICALREF LEFT OUTER JOIN LG_SLSMAN ON LG_" & GFirma & "_" & GDonem & "_INVOICE.SALESMANREF = LG_SLSMAN.LOGICALREF" _
'''& " LEFT OUTER JOIN LG_" & GFirma & "_PAYPLANS ON LG_" & GFirma & "_" & GDonem & "_INVOICE.PAYDEFREF = LG_" & GFirma & "_PAYPLANS.LOGICALREF LEFT OUTER JOIN  LG_" & GFirma & "_PROJECT ON LG_" & GFirma & "_" & GDonem & "_INVOICE.PROJECTREF = LG_" & GFirma & "_PROJECT.LOGICALREF " _
'''& " Where (LG_" & GFirma & "_" & GDonem & "_STLINE.LINETYPE = 0) And (LG_" & GFirma & "_" & GDonem & "_STLINE.CANCELLED = 0) "

CnnMain.Execute "CREATE VIEW MenaXXFSC AS " & SQLSTR & TARIHSTR & CariStrAX & StoKStrXA & DURUMTR
'
Exit Sub
HATA:
If Err.Number = -2147217900 Then
   CnnMain.Execute "drop view MenaXXFSC"
   GoTo DUZENLE
Else
   MsgBox Err.Number
End If

End Sub

Sub SRGEnvante()
On Error GoTo HATA
If dxDateEdit2(0) > dxDateEdit2(1) Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit2(0).DisplayText) = 0 Then iLkTariH = "01/01/" & Year(Date) Else iLkTariH = dxDateEdit2(0)
If Len(dxDateEdit2(1).DisplayText) = 0 Then SonTariH = "31/12/" & Year(Date) Else SonTariH = dxDateEdit2(1)
DUZENLE:
Set RsEtG = New Recordset
RsEtG.Open "select * from AAW where logicalref=1 ", CnnMain, adOpenDynamic, adLockOptimistic
RsEtG.Fields(1) = iLkTariH
RsEtG.Fields(2) = SonTariH
RsEtG.UpdateBatch
RsEtG.Close
Exit Sub
HATA:
  If Err.Number = -2147217865 Then
    CnnMain.Execute "create table AAW (Logicalref INTEGER,Tarih1 datetime ,Tarih2 datetime,Tarih3 datetime,Tarih4 datetime)"
    CnnMain.Execute "insert into AAW (Logicalref) VALUES (1)"
    GoTo DUZENLE
  End If
End Sub
Sub SRGEnvanterHakaN()
On Error GoTo HATA
Dim SDuruMu As String
'Ambar_Ara
FStok_Kur
If dxDateEdit2(0) > dxDateEdit2(1) Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit2(0).DisplayText) = 0 Then iLkTariH = "01/01/" & Year(Date) Else iLkTariH = dxDateEdit2(0)
If Len(dxDateEdit2(1).DisplayText) = 0 Then SonTariH = "31/12/" & Year(Date) Else SonTariH = dxDateEdit2(1)
TARIHSTR = " and LG_" & GFirma & "_" & GDonem & "_STINVTOT.DATE_ <= '" & Format(SonTariH, "MM/DD/YY") & "'"
SQLBilgi = iLkTariH & " - " & SonTariH & "  Aralýðýnda"
DUZENLE:
  sqlstr2 = "SELECT LG_" & GFirma & "_ITEMS.CARDTYPE, LG_" & GFirma & "_ITEMS.CODE, LG_" & GFirma & "_ITEMS.NAME, LG_" & GFirma & "_ITEMS.STGRPCODE, LG_" & GFirma & "_ITEMS.PRODUCERCODE, LG_" & GFirma & "_ITEMS.SPECODE, LG_" & GFirma & "_ITEMS.CYPHCODE, LG_" & GFirma & "_" & GDonem & "_STINVTOT.INVENNO, LG_" & GFirma & "_" & GDonem & "_STINVTOT.DATE_, LG_" & GFirma & "_" & GDonem & "_STINVTOT.TRANSFERRED, LG_" & GFirma & "_" & GDonem & "_STINVTOT.PURAMNT, LG_" & GFirma & "_" & GDonem & "_STINVTOT.PURCASH, LG_" & GFirma & "_" & GDonem & "_STINVTOT.SALAMNT, LG_" & GFirma & "_" & GDonem & "_STINVTOT.SALCASH," _
  & " LG_" & GFirma & "_" & GDonem & "_STINVTOT.ONHAND, LG_" & GFirma & "_" & GDonem & "_STINVTOT.ACTWHOUSEIN, LG_" & GFirma & "_" & GDonem & "_STINVTOT.ACTWHOUSEOUT, LG_" & GFirma & "_" & GDonem & "_STINVTOT.AVGVALUE, LG_" & GFirma & "_" & GDonem & "_STINVTOT.STOCKREF, SS.STAVG AS GerOrt,LG_" & GFirma & "_ITEMS.PRODCOUNTRY ,LG_" & GFirma & "_ITEMS.ISONR, LG_" & GFirma & "_ITEMS.LOGOID, LG_" & GFirma & "_ITEMS.GTIPCODE,MR.CODE as MarkaAdi " _
  & "FROM LG_" & GFirma & "_ITEMS INNER JOIN LG_" & GFirma & "_" & GDonem & "_STINVTOT ON LG_" & GFirma & "_ITEMS.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_STINVTOT.STOCKREF INNER JOIN " _
  & "(SELECT STOCKREF, CASE WHEN ISNULL(SUM(ortmik), 0) =0 OR ISNULL(SUM(ortmik), 0)=0 THEN 0 ELSE ROUND(ISNULL(SUM(orttutar), 0) / ISNULL(SUM(ortmik), 0), 2) END AS STAVG FROM (SELECT STOCKREF, ISNULL(SUM(LINENET), 0) AS orttutar, ISNULL(SUM(AMOUNT)/UINFO1, 0) AS ortmik FROM LG_" & GFirma & "_" & GDonem & "_STLINE WHERE TRCODE IN (1,14) AND UINFO1>0  GROUP BY STOCKREF,UINFO1) AS OT GROUP BY STOCKREF) AS SS ON LG_" & GFirma & "_ITEMS.LOGICALREF = SS.STOCKREF left outer join LG_" & GFirma & "_MARK as MR On LG_" & GFirma & "_ITEMS.MARKREF=MR.LOGICALREF " _
  & "WHERE (LG_" & GFirma & "_" & GDonem & "_STINVTOT.INVENNO =-1) "
devam:
CnnMain.Execute "CREATE VIEW ASRGMental_EnvHakan AS " & sqlstr2 & TARIHSTR & StoKStrA

Exit Sub
HATA:
If Err.Number = -2147217900 Then
   CnnMain.Execute "drop view ASRGMental_EnvHakan"
   GoTo DUZENLE
Else
   MsgBox Err.Number & Err.Description
End If
End Sub

Sub SRGEnvanter()
On Error GoTo HATA
Dim SDuruMu As String
Ambar_Ara
FStok_Kur
If dxDateEdit2(0) > dxDateEdit2(1) Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit2(0).DisplayText) = 0 Then iLkTariH = "01/01/" & Year(Date) Else iLkTariH = dxDateEdit2(0)
If Len(dxDateEdit2(1).DisplayText) = 0 Then SonTariH = "31/12/" & Year(Date) Else SonTariH = dxDateEdit2(1)
TARIHSTR = " and LG_" & GFirma & "_" & GDonem & "_STINVTOT.DATE_ <= '" & Format(SonTariH, "MM/DD/YY") & "'"
SQLBilgi = iLkTariH & " - " & SonTariH & "  Aralýðýnda"
DUZENLE:
'sqlstr2 = "SELECT LG_" & GFirma & "_ITEMS.CARDTYPE, LG_" & GFirma & "_ITEMS.CODE, LG_" & GFirma & "_ITEMS.NAME, LG_" & GFirma & "_ITEMS.STGRPCODE, LG_" & GFirma & "_ITEMS.PRODUCERCODE, LG_" & GFirma & "_ITEMS.SPECODE, LG_" & GFirma & "_ITEMS.CYPHCODE, LG_" & GFirma & "_" & GDonem & "_STINVTOT.INVENNO, LG_" & GFirma & "_" & GDonem & "_STINVTOT.DATE_, LG_" & GFirma & "_" & GDonem & "_STINVTOT.TRANSFERRED, LG_" & GFirma & "_" & GDonem & "_STINVTOT.PURAMNT, LG_" & GFirma & "_" & GDonem & "_STINVTOT.PURCASH, LG_" & GFirma & "_" & GDonem & "_STINVTOT.SALAMNT, LG_" & GFirma & "_" & GDonem & "_STINVTOT.SALCASH," _
'& " LG_" & GFirma & "_" & GDonem & "_STINVTOT.ONHAND, LG_" & GFirma & "_" & GDonem & "_STINVTOT.ACTWHOUSEIN, LG_" & GFirma & "_" & GDonem & "_STINVTOT.ACTWHOUSEOUT, LG_" & GFirma & "_" & GDonem & "_STINVTOT.AVGVALUE, LG_" & GFirma & "_" & GDonem & "_STINVTOT.STOCKREF, AAW.Tarih1, AAW.Tarih2, AAW.Tarih3, AAW.Tarih4, SS.STAVG AS GerOrt,LG_" & GFirma & "_ITEMS.PRODCOUNTRY ,LG_" & GFirma & "_ITEMS.ISONR, LG_" & GFirma & "_ITEMS.LOGOID, LG_" & GFirma & "_ITEMS.GTIPCODE " _
'& "FROM LG_" & GFirma & "_ITEMS INNER JOIN LG_" & GFirma & "_" & GDonem & "_STINVTOT ON LG_" & GFirma & "_ITEMS.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_STINVTOT.STOCKREF INNER JOIN " _
'& "(Select STOCKREF,AVG(AVGVALUE)AS STAVG FROM LG_" & GFirma & "_" & GDonem & "_STINVTOT WHERE AVGVALUE>0 AND INVENNO=-1 GROUP BY STOCKREF)AS SS ON LG_" & GFirma & "_ITEMS.LOGICALREF = SS.STOCKREF CROSS JOIN AAW " _
'& "WHERE (LG_" & GFirma & "_" & GDonem & "_STINVTOT.INVENNO IN " & AmbarSrg & ") AND (AAW.Logicalref = 1) "


sqlstr2 = "SELECT LG_" & GFirma & "_ITEMS.CARDTYPE, LG_" & GFirma & "_ITEMS.CODE, LG_" & GFirma & "_ITEMS.NAME, LG_" & GFirma & "_ITEMS.STGRPCODE, LG_" & GFirma & "_ITEMS.PRODUCERCODE, LG_" & GFirma & "_ITEMS.SPECODE, LG_" & GFirma & "_ITEMS.CYPHCODE, LG_" & GFirma & "_" & GDonem & "_STINVTOT.INVENNO, LG_" & GFirma & "_" & GDonem & "_STINVTOT.DATE_, LG_" & GFirma & "_" & GDonem & "_STINVTOT.TRANSFERRED, LG_" & GFirma & "_" & GDonem & "_STINVTOT.PURAMNT, LG_" & GFirma & "_" & GDonem & "_STINVTOT.PURCASH, LG_" & GFirma & "_" & GDonem & "_STINVTOT.SALAMNT, LG_" & GFirma & "_" & GDonem & "_STINVTOT.SALCASH," _
& " LG_" & GFirma & "_" & GDonem & "_STINVTOT.ONHAND, LG_" & GFirma & "_" & GDonem & "_STINVTOT.ACTWHOUSEIN, LG_" & GFirma & "_" & GDonem & "_STINVTOT.ACTWHOUSEOUT, LG_" & GFirma & "_" & GDonem & "_STINVTOT.AVGVALUE, LG_" & GFirma & "_" & GDonem & "_STINVTOT.STOCKREF, AAW.Tarih1, AAW.Tarih2, AAW.Tarih3, AAW.Tarih4, SS.STAVG AS GerOrt,LG_" & GFirma & "_ITEMS.PRODCOUNTRY ,LG_" & GFirma & "_ITEMS.ISONR, LG_" & GFirma & "_ITEMS.LOGOID, LG_" & GFirma & "_ITEMS.GTIPCODE " _
& "FROM LG_" & GFirma & "_ITEMS INNER JOIN LG_" & GFirma & "_" & GDonem & "_STINVTOT ON LG_" & GFirma & "_ITEMS.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_STINVTOT.STOCKREF INNER JOIN " _
& "(SELECT STOCKREF, CASE WHEN ISNULL(SUM(STAVG), 0) =0 OR ISNULL(SUM(STAVG), 0)=0 THEN 0 ELSE ROUND(ISNULL(SUM(orttutar), 0) / ISNULL(SUM(STAVG), 0), 2) END AS ORTFIyat FROM (SELECT STOCKREF, ISNULL(SUM(LINENET), 0) AS orttutar, ISNULL(SUM(AMOUNT), 0) AS STAVG FROM LG_" & GFirma & "_" & GDonem & "_STLINE WHERE IOCODE IN (1,14)  GROUP BY STOCKREF) AS OT GROUP BY STOCKREF) AS SS ON LG_" & GFirma & "_ITEMS.LOGICALREF = SS.STOCKREF CROSS JOIN AAW " _
& "WHERE (LG_" & GFirma & "_" & GDonem & "_STINVTOT.INVENNO IN " & AmbarSrg & ") AND (AAW.Logicalref = 1) "


'(SELECT STOCKREF, CASE WHEN ISNULL(SUM(STAVG), 0) =0 OR ISNULL(SUM(STAVG), 0)=0 THEN 0 ELSE ROUND(ISNULL(SUM(orttutar), 0) / ISNULL(SUM(STAVG), 0), 2) END AS ORTFIyat FROM (SELECT STOCKREF, ISNULL(SUM(LINENET), 0) AS orttutar, ISNULL(SUM(AMOUNT), 0) AS STAVG FROM LG_" & GFirma & "_" & GDonem & "_STLINE WHERE IOCODE IN (1,14)  GROUP BY STOCKREF) AS OT GROUP BY STOCKREF) AS STTOT
devam:
CnnMain.Execute "CREATE VIEW ASRGMental_Env AS " & sqlstr2 & TARIHSTR & StoKStrA

Exit Sub
HATA:
If Err.Number = -2147217900 Then
   CnnMain.Execute "drop view ASRGMental_Env"
   GoTo DUZENLE
Else
   MsgBox Err.Number & Err.Description
End If
End Sub
Sub SRGStok_H()
On Error GoTo HATA
Ambar_Ara
AmbarsTr = " and LG_" & GFirma & "_" & GDonem & "_STINVTOT.INVENNO IN " & AmbarSrg & ""

FStok_Kur
If Len(dxDateEdit2(0).DisplayText) = 0 Then TARIHSTR = "" Else TARIHSTR = " and LG_" & GFirma & "_" & GDonem & "_STINVTOT.DATE_ <= '" & Format(dxDateEdit2(0), "MM/DD/YY") & "'"
DUZENLE:

SQLSTR = "SELECT LG_" & GFirma & "_ITEMS.LOGICALREF AS STOKREF, LG_" & GFirma & "_ITEMS.CODE AS KODU, LG_" & GFirma & "_ITEMS.NAME AS ADI, LG_" & GFirma & "_ITEMS.STGRPCODE AS GRUPKODU, LG_" & GFirma & "_ITEMS.SPECODE AS OZELKODU, LG_" & GFirma & "_ITEMS.CYPHCODE AS YETKIKODU, LG_" & GFirma & "_ITEMS.ISONR AS ISONo, LG_" & GFirma & "_ITEMS.PRODCOUNTRY AS UretimYeri, LG_" & GFirma & "_" & GDonem & "_STINVTOT.INVENNO AS AMBARNO, LG_" & GFirma & "_" & GDonem & "_STINVTOT.DATE_ AS TARIH, LG_" & GFirma & "_" & GDonem & "_STINVTOT.ONHAND AS STOKMIK, LG_" & GFirma & "_" & GDonem & "_STINVTOT.TRANSFERRED AS DEVIRMIK, LG_" & GFirma & "_" & GDonem & "_STINVTOT.AVGVALUE AS DEVIRDEGERI, LG_" & GFirma & "_" & GDonem & "_STINVTOT.PURAMNT AS ALIMMIK, LG_" & GFirma & "_" & GDonem & "_STINVTOT.PURCASH AS ALIMDEGERI, LG_" & GFirma & "_" & GDonem & "_STINVTOT.SALAMNT AS SATISMIK, LG_" & GFirma & "_" & GDonem & "_STINVTOT.SALCASH AS SATISDEGERI," _
& " SS.STTOP AS TSONSTOK, SSS.STAVG AS ORTBMALIYET, LG_" & GFirma & "_ITMUNITA.BARCODE AS TBARKODU, LG_" & GFirma & "_UNITSETL.CODE AS TBIRIMKODU, LG_" & GFirma & "_UNITSETL.NAME AS TBIRIMI , LG_" & GFirma & "_ITEMS.LOGOID, LG_" & GFirma & "_ITEMS.GTIPCODE " _
& "FROM LG_" & GFirma & "_ITEMS LEFT OUTER JOIN LG_" & GFirma & "_UNITSETL INNER JOIN LG_" & GFirma & "_ITMUNITA ON LG_" & GFirma & "_UNITSETL.LOGICALREF = LG_" & GFirma & "_ITMUNITA.UNITLINEREF ON LG_" & GFirma & "_ITEMS.LOGICALREF = LG_" & GFirma & "_ITMUNITA.ITEMREF LEFT OUTER JOIN LG_" & GFirma & "_" & GDonem & "_STINVTOT ON LG_" & GFirma & "_ITEMS.LOGICALREF=LG_" & GFirma & "_" & GDonem & "_STINVTOT.STOCKREF " _
& "INNER JOIN (SELECT STOCKREF,SUM(ONHAND)AS STTOP FROM LG_" & GFirma & "_01_STINVTOT  GROUP BY STOCKREF) AS SS ON LG_" & GFirma & "_ITEMS.LOGICALREF=SS.STOCKREF " _
& "INNER JOIN (SELECT STOCKREF,AVG(AVGVALUE)AS STAVG FROM LG_" & GFirma & "_01_STINVTOT WHERE AVGVALUE > 0  GROUP BY STOCKREF) AS SSS ON LG_" & GFirma & "_ITEMS.LOGICALREF=SSS.STOCKREF " _
& " Where (LG_" & GFirma & "_ITMUNITA.LINENR = 1) "

CnnMain.Execute "CREATE VIEW AMental_Stok AS " & SQLSTR & TARIHSTR & AmbarsTr & StoKStrA

Exit Sub
HATA:
'MsgBox Err.Number & Err.Description
If Err.Number = -2147217900 Then
   CnnMain.Execute "drop view AMental_Stok"
   GoTo DUZENLE
Else
   MsgBox Err.Number & Err.Description
End If
End Sub
Sub SKasa_Yukle()
List1.Clear
'kasa bilgileri yükleniyor
Set RsEtG = New Recordset
RsEtG.Open "SELECT CODE,NAME FROM LG_" & GFirma & "_KSCARD order by CODE", CnnMain, adOpenDynamic, adLockOptimistic
Do While Not RsEtG.EOF
      List1.AddItem RsEtG.Fields(0) ' & vbCrLf & RsEtG.Fields(1)
RsEtG.MoveNext
Loop
RsEtG.Close

End Sub

Sub SEleman_Yukle()
'AMBAR bilgileri yükleniyor
List2.Clear
Set RsEtG = New Recordset
RsEtG.Open "SELECT NAME FROM LG_" & GFirma & "_PROJECT order by code ", CnnMain, adOpenDynamic, adLockOptimistic
Do While Not RsEtG.EOF
      List2.AddItem RsEtG.Fields(0)
RsEtG.MoveNext
Loop
RsEtG.Close
End Sub

Sub Eleman_Ara()
Dim say As Integer
Dim AlpSrg As String
AlpSrg = ""
ElemanSrg = ""
   For i = 0 To List2.ListCount - 1
      If List2.Selected(i) = True Then
         ALP = List2.List(i)
         If say = 0 Then AlpSrg = "'" & List2.List(i) & "'" Else AlpSrg = AlpSrg & " ," & "'" & List2.List(i) & "'"
         say = say + 1
      End If
   Next i
If AlpSrg = "" Then ElemanSrg = "" Else ElemanSrg = "(" & AlpSrg & ")"
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
Sub SAmBaR()
List1.Clear
Set RsEtG = New Recordset
RsEtG.Open "SELECT NR,NAME FROM L_CAPIWHOUSE where FIRMNR = " & GFirma & " order by nr", CnnMain, adOpenDynamic, adLockOptimistic
Do While Not RsEtG.EOF
      List1.AddItem RsEtG.Fields(0) & " - " & RsEtG.Fields(1)
RsEtG.MoveNext
Loop
RsEtG.Close
End Sub

Private Sub Command1_Click()
FALISFIYATI
MsgBox "Fiyat Güncellemesi Tamamlandý", vbInformation, MesaJ

End Sub

Private Sub Command2_Click()
Dim ABC As Single
Dim SORGU As String

If Len(Text1.Text) = 0 Then Exit Sub
If Len(Text2.Text) = 0 Then Exit Sub
ABC = CSng(Text2)
SORGU = Text1
SQLSTR = "SELECT STL.* FROM LG_001_01_STLINE AS STL INNER JOIN LG_001_ITEMS AS ITM ON STL.STOCKREF = ITM.LOGICALREF " _
& " WHERE STL.IOCODE = 1 AND STL.TRCODE = 14 AND ITM.SPECODE = '" & SORGU & "'"
Set RsEtG = New Recordset
RsEtG.Open SQLSTR, CnnMain, adOpenDynamic, adLockOptimistic
    SORU = MsgBox(RsEtG.RecordCount & " KAYIT BULUNMUÞTUR...ÝÞLEMÝ YAPALIMMI...", vbQuestion + vbYesNo, MesaJ)
    If SORU = vbNo Then Exit Sub
    
    
    Do While Not RsEtG.EOF
     CnnMain.Execute "UPDATE LG_001_01_STLINE SET " _
     & " PRICE=PRICE * " & ABC & ", TOTAL=TOTAL*" & ABC & ", PRPRICE=PRPRICE*" & ABC & ", VATMATRAH=VATMATRAH*" & ABC & ", LINENET=LINENET*" & ABC & " " _
     & " WHERE LOGICALREF=" & RsEtG.Fields(0) & ""
    RsEtG.MoveNext
    Loop
RsEtG.Close
MsgBox "BITTI"
End Sub

Private Sub dxColorBtn1_Click()
Frame1.Visible = True
File1.Visible = True
End Sub

Private Sub dxColorBtn2_Click()
Frame1.Visible = False
End Sub

Private Sub dxDB_OnDblClick()
If dxDB.Count = 0 Then dxDB.Visible = False: Exit Sub
If ButoniNdeX = 10 Then
  If ButonKeY = 1 Then PicKKod1(ButoniNdeX) = dxDB.Columns(1).Value
  If ButonKeY = 2 Then PicKKod2(ButoniNdeX) = dxDB.Columns(1).Value
End If
If ButoniNdeX = 5 Then
  If ButonKeY = 1 Then PicKKod1(ButoniNdeX) = dxDB.Columns(1).Value
  If ButonKeY = 2 Then PicKKod2(ButoniNdeX) = dxDB.Columns(1).Value
End If

dxDB.Visible = False
End Sub

Private Sub dxDB_OnKeyDown(KeyCode As Integer, ByVal Shift As Long)
If KeyCode = vbKeyEscape Then dxDB.Visible = False
End Sub

Private Sub File1_DblClick()
Dim RStR As String
'If Len(File1.FileName) < 3 Then Exit Sub
CrT.Reset
RaPoRADi = File1.Path & "\" & File1.FileName
If SiNDEx = 0 Then
    DegeR = Left(File1.FileName, 1)
    If DegeR = "Q" Then
        SRGStok_H
        RStR = ""
    End If
    If DegeR = "T" Then
        SNotStok
        RStR = ""
    End If
    If DegeR = "W" Then
        SRGEnvante
        SRGEnvanter
        CrT.ReportFileName = RaPoRADi
        CrT.WindowShowRefreshBtn = True
        CrT.SelectionFormula = "{ASRGMental_Env.STOCKREF}> 0 "
        If Len(dxP(0).DisplayText) > 0 And IsNumeric(dxP(0).DisplayText) = True Then
          ilk = dxP(0).DisplayText
          If Len(dxP(1).DisplayText) > 0 And IsNumeric(dxP(1).DisplayText) = True Then son = dxP(1).DisplayText Else dxP(1) = 100
          CrT.GroupSelectionFormula = "{ASRGMental_Env.STOCKREF}>0 and if Sum ({@AGDBStokDegeri}, {ASRGMental_Env.CODE})>0  and Sum ({@DASatisTutari}, {ASRGMental_Env.CODE})>0 then (Sum ({@DASatisTutari}, {ASRGMental_Env.CODE})/Sum ({@AGDBStokDegeri}, {ASRGMental_Env.CODE}))*100 >= " & ilk & " and (Sum ({@DASatisTutari}, {ASRGMental_Env.CODE})/Sum ({@AGDBStokDegeri}, {ASRGMental_Env.CODE}))*100 <= " & son & " "
          '(Sum ({@DASatisMik}, {ASRGMental_Env.CODE})/Sum ({@DBilkStok}, {ASRGMental_Env.CODE}))*100
        End If
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.WindowState = crptMaximized
        CrT.ReportTitle = SQLBilgi
        CrT.RetrieveDataFiles
        CrT.Action = 1 '
        SQLBilgi = ""
        Exit Sub
    End If
    If DegeR = "H" Then
        SRGEnvanterHakaN
        'CrT.Reset
        CrT.ReportFileName = RaPoRADi
      CrT.UserName = "Alpay"
      CrT.Password = ""
      CrT.Connect = "DSN = MENTAL;UID = Alpay;PWD = ;DSQ = custcare"
        
        CrT.WindowShowRefreshBtn = True
        'CrT.SelectionFormula = "{ASRGMental_Env.STOCKREF}> 0 "
'        If Len(dxP(0).DisplayText) > 0 And IsNumeric(dxP(0).DisplayText) = True Then
'          ilk = dxP(0).DisplayText
'          If Len(dxP(1).DisplayText) > 0 And IsNumeric(dxP(1).DisplayText) = True Then son = dxP(1).DisplayText Else dxP(1) = 100
'          CrT.GroupSelectionFormula = "{ASRGMental_Env.STOCKREF}>0 and if Sum ({@AGDBStokDegeri}, {ASRGMental_Env.CODE})>0  and Sum ({@DASatisTutari}, {ASRGMental_Env.CODE})>0 then (Sum ({@DASatisTutari}, {ASRGMental_Env.CODE})/Sum ({@AGDBStokDegeri}, {ASRGMental_Env.CODE}))*100 >= " & ilk & " and (Sum ({@DASatisTutari}, {ASRGMental_Env.CODE})/Sum ({@AGDBStokDegeri}, {ASRGMental_Env.CODE}))*100 <= " & son & " "
'          '(Sum ({@DASatisMik}, {ASRGMental_Env.CODE})/Sum ({@DBilkStok}, {ASRGMental_Env.CODE}))*100
'        End If
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.WindowState = crptMaximized
        SQLBilgi = Format(dxDateEdit2(0).DisplayText, "DD/MM/YY") & " - " & Format(dxDateEdit2(1).DisplayText, "DD/MM/YY") & " Aralýðýnda..." & StoKStrA
        CrT.ReportTitle = SQLBilgi
        CrT.RetrieveDataFiles
        CrT.Action = 1 '
        SQLBilgi = ""
        Exit Sub
    End If
    
    If DegeR = "E" Then
        SRGMenaStokFiyat
        'RStR = "{ASRGMental_Env.STOCKREF}> 0 "
    End If
   
End If
If SiNDEx = 1 Then 'finansman
    DegeR = Left(File1.FileName, 1)
    CrT.WindowAllowDrillDown = True
    CrT.WindowShowGroupTree = True
    If DegeR = "W" Then
        SIcmal
    End If
    If DegeR = "T" Then
        SCARI
    End If
    If DegeR = "C" Then
        SGiderLer
    End If
    
    If DegeR = "Q" Then
        If dxDateEdit2(0) > dxDateEdit2(1) Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
        If Len(dxDateEdit2(0).DisplayText) = 0 Then iLkTariH = "01/01/" & Year(Date) Else iLkTariH = dxDateEdit2(0)
        If Len(dxDateEdit2(1).DisplayText) = 0 Then SonTariH = "31/12/" & Year(Date) Else SonTariH = dxDateEdit2(1)
        TARIHSTR = " AND {ASRG_GENELDOKUM.TARIH}>= #" & Format(iLkTariH, "MM/DD/YY") & "# AND {ASRG_GENELDOKUM.TARIH} <= #" & Format(SonTariH, "MM/DD/YY") & "# "
        If Len(PicKKod1(10).DisplayText) = 0 Then SQLBilgi = " and {ASRG_GENELDOKUM.CODE} like '*'" Else SQLBilgi = " and {ASRG_GENELDOKUM.CODE} like '" & PicKKod1(10).DisplayText & "*" & "'"
        CrT.UserName = "Alpay"
        CrT.Password = ""
        CrT.Connect = "DSN = MENTAL;UID = Alpay;PWD = ;DSQ = custcare"
        CrT.WindowAllowDrillDown = True
        CrT.ReportFileName = RaPoRADi
        CrT.WindowShowRefreshBtn = True
        CrT.SelectionFormula = "{ASRG_GENELDOKUM.CariREF}>0 " & TARIHSTR & SQLBilgi '"LEN({ASRG_GENELDOKUM.ISLEM})>0 " & TARiHSTR
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.WindowState = crptMaximized
        CrT.RetrieveDataFiles
        CrT.Action = 1 '
        Exit Sub
    End If
    If DegeR = "E" Then
        If dxDateEdit2(0) > dxDateEdit2(1) Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
        If Len(dxDateEdit2(0).DisplayText) = 0 Then iLkTariH = "01/01/" & Year(Date) Else iLkTariH = dxDateEdit2(0)
        If Len(dxDateEdit2(1).DisplayText) = 0 Then SonTariH = "31/12/" & Year(Date) Else SonTariH = dxDateEdit2(1)
        TARIHSTR = " AND {TAHSILAT.TARIH}>= #" & Format(iLkTariH, "MM/DD/YY") & "# AND {TAHSILAT.TARIH} <= #" & Format(SonTariH, "MM/DD/YY") & "# "
        CrT.UserName = "Alpay"
        CrT.Password = ""
        CrT.Connect = "DSN = MENTAL;UID = Alpay;PWD = ;DSQ = custcare"
        CrT.WindowAllowDrillDown = True
        CrT.ReportFileName = RaPoRADi
        CrT.WindowShowRefreshBtn = True
        CrT.SelectionFormula = "len({TAHSILAT.ISLEM})>0 " & TARIHSTR
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.WindowState = crptMaximized
        CrT.RetrieveDataFiles
        CrT.Action = 1 '
        Exit Sub
    End If
End If
If SiNDEx = 2 Then
    DegeR = Left(File1.FileName, 1)
    If DegeR = "E" Then
        'FALISFIYATI
        SMenaElemanSat
        CrT.WindowAllowDrillDown = True
        CrT.WindowShowGroupTree = True
    End If
    If DegeR = "W" Then
        SRGMenaFSC
        CrT.WindowAllowDrillDown = True
        CrT.WindowShowGroupTree = True
    End If
    If DegeR = "T" Then
        SRGMenaXXFSC
        CrT.WindowAllowDrillDown = True
        CrT.WindowShowGroupTree = True
    End If
    
End If
If SiNDEx = 3 Then
    DegeR = Left(File1.FileName, 1)
    If DegeR = "E" Then
        'FALISFIYATI
        SMenaElemanSat
        CrT.WindowAllowDrillDown = True
        CrT.WindowShowGroupTree = True
    End If
    If DegeR = "W" Then
        SRGMenaFSC
        CrT.WindowAllowDrillDown = True
        CrT.WindowShowGroupTree = True
    End If
    
End If

If SiNDEx = 5 Then
    DegeR = Left(File1.FileName, 1)
    If DegeR = "E" Then
        STaHsilat
        CrT.WindowAllowDrillDown = True
        CrT.WindowShowGroupTree = True
    End If
    If DegeR = "Q" Then
        STaHsilat
        CrT.WindowAllowDrillDown = True
        CrT.WindowShowGroupTree = True
    End If

    If DegeR = "W" Then
        SMaSraF
        CrT.WindowAllowDrillDown = True
        CrT.WindowShowGroupTree = True
    End If
    If DegeR = "T" Then
        SMaSraFElm
        CrT.WindowAllowDrillDown = True
        CrT.WindowShowGroupTree = True
    End If

End If

    CrT.ReportFileName = RaPoRADi
    CrT.UserName = "Alpay"
    CrT.Password = ""
    CrT.Connect = "DSN = MENTAL;UID = Alpay;PWD =  ;DSQ = custcare"
    CrT.WindowShowRefreshBtn = True
    If Len(RStR) > 0 Then CrT.SelectionFormula = "{ASRGMental_Env.STOCKREF}> 0 "
    CrT.WindowShowPrintSetupBtn = True
    CrT.WindowShowRefreshBtn = True
    CrT.WindowState = crptMaximized
    If Len(SQLBilgi) > 0 Then CrT.ReportTitle = SQLBilgi Else CrT.ReportTitle = Format(dxDateEdit2(0).DisplayText, "DD/MM/YY") & " - " & Format(dxDateEdit2(1).DisplayText, "DD/MM/YY") & " Aralýðýnda"
    CrT.RetrieveDataFiles
    
    CrT.Action = 1 '
    SQLBilgi = ""
End Sub

Private Sub Form_Load()
'Me.Width = 15360: Me.Height = 11520
dxDateEdit2(0) = Date
dxDateEdit2(1) = Date
dxLabel1.Caption = GName
Call FStok_Yukle
Call FCariYukLe
List2.Clear
Set RsEtG = New Recordset
RsEtG.Open "SELECT SUBSTRING(code,1,6)AS CARIGRUP FROM LG_" & GFirma & "_CLCARD WHERE ACTIVE=0 AND CODE LIKE'120.%' AND LEN(CODE)>8 GROUP BY SUBSTRING(code,1,6) ORDER BY SUBSTRING(code,1,6)", CnnMain, adOpenDynamic, adLockOptimistic
Do While Not RsEtG.EOF
      List2.AddItem RsEtG.Fields(0)
RsEtG.MoveNext
Loop
RsEtG.Close

SAmBaR
End Sub

Private Sub Option2_Click(Index As Integer)
SiNDEx = Index
Select Case Index
Case 0 'STOKLAR
     TiP = 0
     File1.Path = App.Path & "\STOK\"
     Frame1.Visible = True
Case 1
     TiP = 1
     File1.Path = App.Path & "\FINANS\"
     Frame1.Visible = True
Case 2
     TiP = 2
     File1.Path = App.Path & "\SATIS\"
     Frame1.Visible = True
Case 3
     TiP = 3
     File1.Path = App.Path & "\SATINALMA\"
     Frame1.Visible = True
Case 4
     TiP = 4
     File1.Path = App.Path & "\GENEL\"
     Frame1.Visible = True
Case 5
     TiP = 5
     File1.Path = App.Path & "\FIRMA\"
     Frame1.Visible = True

End Select

End Sub

Private Sub PicKKod1_ButtonPressed(Index As Integer, ByVal ButtonIndex As Integer, ByVal ButtonDown As Boolean)
If ButtonIndex = 0 Then Exit Sub
ButonKeY = 1
ButoniNdeX = Index
Select Case Index
Case 5
    SQLSTR = "SELECT LOGICALREF,CODE,NAME fROM LG_" & GFirma & "_ITEMS where ACTIVE=0 order by CODE"
     Set RsetV = New Recordset
     RsetV.Open SQLSTR, CnnMain, adOpenStatic, adLockReadOnly
     'MsgBox SqLStR
    Set dxDB.DataSource = RsetV
    With dxDB
      .Columns.DestroyColumns
      .Columns.RetrieveFields
      .Dataset.Active = True
      .KeyField = "LOGICALREF"
      .Columns(0).Visible = False
      .Columns(1).Caption = "Ürün Kodu": .Columns(2).Caption = "Ürün Adý"
      .Columns(0).Width = 140: .Columns(2).Width = 360
      .Top = 1290: .Width = 8325: .Left = 2880: .Height = 4930
      .Visible = True
    End With

Case 10 ' carikod
    SQLSTR = "SELECT LOGICALREF,CODE,DEFINITION_ fROM LG_" & GFirma & "_CLCARD where ACTIVE=0 order by CODE"
     Set RsetV = New Recordset
     RsetV.Open SQLSTR, CnnMain, adOpenStatic, adLockReadOnly
     'MsgBox SqLStR
    Set dxDB.DataSource = RsetV
    With dxDB
      .Columns.DestroyColumns
      .Columns.RetrieveFields
      .Dataset.Active = True
      .KeyField = "LOGICALREF"
      .Columns(0).Visible = False
      .Columns(1).Caption = "Cari Kodu": .Columns(2).Caption = "Müþteri Adý"
      .Columns(0).Width = 140: .Columns(2).Width = 360
      .Top = 1290: .Width = 8325: .Left = 2880: .Height = 4930
      .Visible = True
    End With
End Select

End Sub

Private Sub PicKKod2_ButtonPressed(Index As Integer, ByVal ButtonIndex As Integer, ByVal ButtonDown As Boolean)
If ButtonIndex = 0 Then Exit Sub
If Index <> 10 Then Exit Sub
ButonKeY = 2
ButoniNdeX = Index
Select Case Index
Case 5
    SQLSTR = "SELECT LOGICALREF,CODE,NAME fROM LG_" & GFirma & "_ITEMS where ACTIVE=0 order by CODE"
     Set RsetV = New Recordset
     RsetV.Open SQLSTR, CnnMain, adOpenStatic, adLockReadOnly
     'MsgBox SqLStR
    Set dxDB.DataSource = RsetV
    With dxDB
      .Columns.DestroyColumns
      .Columns.RetrieveFields
      .Dataset.Active = True
      .KeyField = "LOGICALREF"
      .Columns(0).Visible = False
      .Columns(1).Caption = "Ürün Kodu": .Columns(2).Caption = "Ürün Adý"
      .Columns(0).Width = 140: .Columns(2).Width = 360
      .Top = 1290: .Width = 8325: .Left = 2880: .Height = 4930
      .Visible = True
    End With

Case 10 ' carikod
    SQLSTR = "SELECT LOGICALREF,CODE,DEFINITION_ fROM LG_" & GFirma & "_CLCARD where ACTIVE=0 order by CODE"
     Set RsetV = New Recordset
     RsetV.Open SQLSTR, CnnMain, adOpenStatic, adLockReadOnly
     'MsgBox SqLStR
    Set dxDB.DataSource = RsetV
    With dxDB
      .Columns.DestroyColumns
      .Columns.RetrieveFields
      .Dataset.Active = True
      .KeyField = "LOGICALREF"
      .Columns(0).Visible = False
      .Columns(1).Caption = "Cari Kodu": .Columns(2).Caption = "Müþteri Adý"
      .Columns(0).Width = 140: .Columns(2).Width = 360
      .Top = 2100: .Width = 8325: .Left = 2880: .Height = 4930
      .Visible = True
    End With

End Select


End Sub
