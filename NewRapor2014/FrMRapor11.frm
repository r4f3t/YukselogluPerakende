VERSION 5.00
Object = "{5664FAD6-05FD-11D4-AABA-00105A6F87AB}#1.0#0"; "dXEditrs.dll"
Object = "{BDDD132C-614B-11D3-B85E-85ADB7D07209}#1.0#0"; "dXSBar.dll"
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{6DE12A11-2924-11D2-988A-444553540000}#1.0#0"; "Sinkbutton.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form FrMRapor 
   BackColor       =   &H00C0C0FF&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "men@rapor - ver 1.0 // by ment@lsoft // copyright (c) 2006 "
   ClientHeight    =   8850
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   12060
   Icon            =   "FrMRapor.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8850
   ScaleWidth      =   12060
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin Crystal.CrystalReport CrT 
      Left            =   7380
      Top             =   8640
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      WindowControlBox=   -1  'True
      WindowMaxButton =   -1  'True
      WindowMinButton =   -1  'True
      WindowState     =   2
      PrintFileLinesPerPage=   60
      WindowShowSearchBtn=   -1  'True
      WindowShowPrintSetupBtn=   -1  'True
   End
   Begin VB.Frame Frame6 
      BackColor       =   &H00808080&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   162
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   6495
      Left            =   720
      TabIndex        =   56
      Top             =   8880
      Visible         =   0   'False
      Width           =   6615
      Begin MSDataGridLib.DataGrid Grid1 
         Height          =   6165
         Left            =   90
         TabIndex        =   57
         Top             =   270
         Width           =   6435
         _ExtentX        =   11351
         _ExtentY        =   10874
         _Version        =   393216
         AllowUpdate     =   0   'False
         BackColor       =   8421504
         BorderStyle     =   0
         ForeColor       =   -2147483643
         HeadLines       =   2
         RowHeight       =   15
         RowDividerStyle =   0
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   162
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   162
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
               LCID            =   1055
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
               LCID            =   1055
               SubFormatType   =   0
            EndProperty
         EndProperty
         SplitCount      =   1
         BeginProperty Split0 
            RecordSelectors =   0   'False
            BeginProperty Column00 
            EndProperty
            BeginProperty Column01 
            EndProperty
         EndProperty
      End
   End
   Begin VB.TextBox Text4 
      Height          =   375
      Left            =   4980
      TabIndex        =   55
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
      Height          =   6585
      Left            =   9885
      TabIndex        =   35
      Top             =   1170
      Visible         =   0   'False
      Width           =   1935
      Begin VB.CommandButton Command5 
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
         Left            =   1560
         MaskColor       =   &H00C0FFC0&
         Style           =   1  'Graphical
         TabIndex        =   59
         Top             =   5540
         Visible         =   0   'False
         Width           =   225
      End
      Begin VB.CommandButton Command4 
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
         Left            =   1560
         MaskColor       =   &H00C0FFC0&
         Style           =   1  'Graphical
         TabIndex        =   58
         Top             =   4480
         Width           =   225
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
         Index           =   5
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   38
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
         Index           =   4
         Left            =   690
         Style           =   1  'Graphical
         TabIndex        =   37
         Top             =   5940
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
         Height          =   345
         Index           =   3
         Left            =   1260
         Style           =   1  'Graphical
         TabIndex        =   36
         Top             =   5940
         Width           =   585
      End
      Begin XpressEditorsLibCtl.dxTextEdit dxTextEdit1 
         Height          =   315
         Index           =   2
         Left            =   120
         OleObjectBlob   =   "FrMRapor.frx":030A
         TabIndex        =   39
         Top             =   4440
         Width           =   1695
      End
      Begin XpressEditorsLibCtl.dxTextEdit dxTextEdit1 
         Height          =   315
         Index           =   3
         Left            =   120
         OleObjectBlob   =   "FrMRapor.frx":03E0
         TabIndex        =   40
         Top             =   5520
         Visible         =   0   'False
         Width           =   1695
      End
      Begin XpressEditorsLibCtl.dxPickEdit dxPickEdit1 
         Height          =   330
         Index           =   4
         Left            =   120
         OleObjectBlob   =   "FrMRapor.frx":04B6
         TabIndex        =   41
         Top             =   1020
         Width           =   1695
      End
      Begin XpressEditorsLibCtl.dxPickEdit dxPickEdit1 
         Height          =   330
         Index           =   6
         Left            =   120
         OleObjectBlob   =   "FrMRapor.frx":06AB
         TabIndex        =   42
         Top             =   1710
         Width           =   1695
      End
      Begin XpressEditorsLibCtl.dxPickEdit dxPickEdit1 
         Height          =   330
         Index           =   7
         Left            =   120
         OleObjectBlob   =   "FrMRapor.frx":08A0
         TabIndex        =   43
         Top             =   2400
         Width           =   1695
      End
      Begin XpressEditorsLibCtl.dxPickEdit dxPickEdit1 
         Height          =   330
         Index           =   8
         Left            =   1020
         OleObjectBlob   =   "FrMRapor.frx":0A95
         TabIndex        =   44
         Top             =   4830
         Width           =   795
      End
      Begin XpressEditorsLibCtl.dxPickEdit dxPickEdit1 
         Height          =   330
         Index           =   9
         Left            =   120
         OleObjectBlob   =   "FrMRapor.frx":0D11
         TabIndex        =   45
         Top             =   3090
         Width           =   1695
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
         TabIndex        =   52
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
         TabIndex        =   51
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
         TabIndex        =   50
         Top             =   2070
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
         Height          =   315
         Index           =   16
         Left            =   120
         TabIndex        =   49
         Top             =   4140
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
         Height          =   315
         Index           =   15
         Left            =   120
         TabIndex        =   48
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
         Index           =   14
         Left            =   120
         TabIndex        =   47
         Top             =   5190
         Visible         =   0   'False
         Width           =   1695
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Ýlçesi"
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
         TabIndex        =   46
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
      Height          =   6585
      Left            =   8160
      TabIndex        =   18
      Top             =   1170
      Visible         =   0   'False
      Width           =   1725
      Begin XpressEditorsLibCtl.dxDateEdit dxDateEdit1 
         Height          =   330
         Left            =   120
         OleObjectBlob   =   "FrMRapor.frx":0F06
         TabIndex        =   19
         Top             =   1050
         Width           =   1485
      End
      Begin XpressEditorsLibCtl.dxDateEdit dxDateEdit2 
         Height          =   330
         Left            =   120
         OleObjectBlob   =   "FrMRapor.frx":10BA
         TabIndex        =   20
         Top             =   1770
         Width           =   1485
      End
      Begin XpressEditorsLibCtl.dxDateEdit dxDateEdit4 
         Height          =   330
         Left            =   120
         OleObjectBlob   =   "FrMRapor.frx":1250
         TabIndex        =   21
         Top             =   4080
         Visible         =   0   'False
         Width           =   1485
      End
      Begin XpressEditorsLibCtl.dxDateEdit dxDateEdit3 
         Height          =   330
         Left            =   120
         OleObjectBlob   =   "FrMRapor.frx":13E6
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
      Height          =   6585
      Left            =   5535
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
         Top             =   600
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
      Height          =   6585
      Left            =   3600
      TabIndex        =   3
      Top             =   1170
      Visible         =   0   'False
      Width           =   1935
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
         Left            =   1590
         MaskColor       =   &H00C0FFC0&
         Style           =   1  'Graphical
         TabIndex        =   54
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
         Left            =   1590
         MaskColor       =   &H00C0FFC0&
         Style           =   1  'Graphical
         TabIndex        =   53
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
         OleObjectBlob   =   "FrMRapor.frx":157C
         TabIndex        =   4
         Top             =   4470
         Width           =   1695
      End
      Begin XpressEditorsLibCtl.dxTextEdit dxTextEdit1 
         Height          =   315
         Index           =   1
         Left            =   120
         OleObjectBlob   =   "FrMRapor.frx":1652
         TabIndex        =   5
         Top             =   5520
         Visible         =   0   'False
         Width           =   1695
      End
      Begin XpressEditorsLibCtl.dxPickEdit dxPickEdit1 
         Height          =   330
         Index           =   0
         Left            =   120
         OleObjectBlob   =   "FrMRapor.frx":1728
         TabIndex        =   6
         Top             =   1020
         Width           =   1695
      End
      Begin XpressEditorsLibCtl.dxPickEdit dxPickEdit1 
         Height          =   330
         Index           =   1
         Left            =   120
         OleObjectBlob   =   "FrMRapor.frx":191D
         TabIndex        =   7
         Top             =   1710
         Width           =   1695
      End
      Begin XpressEditorsLibCtl.dxPickEdit dxPickEdit1 
         Height          =   330
         Index           =   2
         Left            =   120
         OleObjectBlob   =   "FrMRapor.frx":1B12
         TabIndex        =   8
         Top             =   2400
         Width           =   1695
      End
      Begin XpressEditorsLibCtl.dxPickEdit dxPickEdit1 
         Height          =   330
         Index           =   3
         Left            =   1020
         OleObjectBlob   =   "FrMRapor.frx":1D07
         TabIndex        =   9
         Top             =   4830
         Width           =   795
      End
      Begin XpressEditorsLibCtl.dxPickEdit dxPickEdit1 
         Height          =   330
         Index           =   5
         Left            =   120
         OleObjectBlob   =   "FrMRapor.frx":1F83
         TabIndex        =   28
         Top             =   3090
         Width           =   1695
      End
      Begin XpressEditorsLibCtl.dxPickEdit dxPickEdit1 
         Height          =   330
         Index           =   10
         Left            =   120
         OleObjectBlob   =   "FrMRapor.frx":2178
         TabIndex        =   30
         Top             =   3780
         Width           =   1695
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
         Width           =   1695
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
         Height          =   315
         Index           =   5
         Left            =   120
         TabIndex        =   15
         Top             =   5190
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
         Width           =   1695
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
         Index           =   1
         Left            =   120
         TabIndex        =   11
         Top             =   1380
         Width           =   1695
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
         Width           =   1695
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
      Width           =   8985
   End
   Begin VB.PictureBox CrTpppp 
      Height          =   480
      Left            =   0
      ScaleHeight     =   420
      ScaleWidth      =   1140
      TabIndex        =   63
      Top             =   8880
      Width           =   1200
   End
   Begin DXSIDEBARLibCtl.dxSideBar dxSideBar1 
      Height          =   8850
      Left            =   -30
      OleObjectBlob   =   "FrMRapor.frx":236D
      TabIndex        =   0
      Top             =   0
      Width           =   3600
   End
   Begin VB.Frame Frame2 
      Appearance      =   0  'Flat
      BackColor       =   &H008080FF&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   720
      Index           =   1
      Left            =   3570
      TabIndex        =   1
      Top             =   7770
      Width           =   8835
      Begin Sinkbutton.Sink Sink2 
         Height          =   495
         Left            =   6315
         TabIndex        =   62
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
         TabIndex        =   61
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
         OleObjectBlob   =   "FrMRapor.frx":D684
         TabIndex        =   66
         Top             =   375
         Width           =   870
      End
      Begin XpressEditorsLibCtl.dxPickEdit dxPickEdit2 
         Height          =   330
         Index           =   0
         Left            =   30
         OleObjectBlob   =   "FrMRapor.frx":D879
         TabIndex        =   67
         Top             =   375
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
         TabIndex        =   69
         Top             =   60
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
         TabIndex        =   68
         Top             =   60
         Width           =   885
      End
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   11.25
         Charset         =   162
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   945
      Left            =   3630
      TabIndex        =   70
      Top             =   60
      Width           =   8385
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
      Left            =   8640
      TabIndex        =   65
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
      Left            =   8400
      TabIndex        =   64
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
      TabIndex        =   60
      Top             =   8550
      Width           =   3765
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
      Left            =   7860
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
Dim StoksTr As String
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
Dim BUTTON As Integer
Sub SRGMena_ObjeUT()
On Error GoTo hata

If Len(dxPickEdit1(0).DisplayText) = 0 Then OzelsTr = "" Else OzelsTr = " and LG_" & GFirma & "_ITEMS.SPECODE = '" & Trim(dxPickEdit1(0)) & "'"
If Len(dxPickEdit1(1).DisplayText) = 0 Then YetkisTr = "" Else YetkisTr = " and LG_" & GFirma & "_ITEMS.CYPHCODE = '" & Trim(dxPickEdit1(1)) & "'"
If Len(dxPickEdit1(2).DisplayText) = 0 Then GrupsTr = "" Else GrupsTr = " and LG_" & GFirma & "_ITEMS.STGRPCODE = '" & Trim(dxPickEdit1(2)) & "'"
If Len(dxPickEdit1(5).DisplayText) = 0 Then UretsTr = "" Else UretsTr = " and LG_" & GFirma & "_ITEMS.PRODCOUNTRY = '" & Trim(dxPickEdit1(5)) & "'"
If Len(dxPickEdit1(10).DisplayText) = 0 Then IsosTr = "" Else IsosTr = " and LG_" & GFirma & "_ITEMS.ISONR = '" & Trim(dxPickEdit1(10)) & "'"

If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/05" Else ilktarih = dxDateEdit1
If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "31/12/05" Else sontarih = dxDateEdit2
TarihsTr = " and LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ >= '" & Format(ilktarih, "MM/DD/YY") & "' and LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ <= '" & Format(sontarih, "MM/DD/YY") & "'"

If Len(dxPickEdit1(5).DisplayText) = 0 Then SDuruMu = "" Else SDuruMu = " and LG_" & GFirma & "_ITEMS.ACTIVE = " & Val(dxPickEdit1(5).DisplayText)

'RAPORA ETKIME BAÞLIYOR
   If Len(dxPickEdit1(3).DisplayText) = 0 Then
      StoksTr = ""
   Else
      If dxTextEdit1(1).Visible = False Then
         If dxPickEdit1(3) = "EÞÝT" Then
            If Len(dxTextEdit1(0).DisplayText) = 0 Then StoksTr = "" Else StoksTr = " and LG_" & GFirma & "_ITEMS.CODE = '" & dxTextEdit1(0) & "'"
         Else
            If Len(dxTextEdit1(0).DisplayText) = 0 Then StoksTr = "" Else StoksTr = " AND LG_" & GFirma & "_ITEMS.CODE LIKE '" & dxTextEdit1(0) & "%" & "'"
         End If
      Else
         If dxPickEdit1(3) = "ARASI" Then
            StoksTr = " AND LG_" & GFirma & "_ITEMS.CODE >= '" & dxTextEdit1(0) & "' and LG_" & GFirma & "_ITEMS.CODE <= '" & dxTextEdit1(1) & "'"
         End If
      End If
   End If
DUZENLE:

sqlstr = "SELECT LG_" & GFirma & "_CLCARD.CODE AS CariKodu, LG_" & GFirma & "_CLCARD.DEFINITION_ AS CariAdi, LG_" & GFirma & "_CLCARD.SPECODE AS CariOzel, LG_" & GFirma & "_CLCARD.CYPHCODE AS CariYetki, LG_" & GFirma & "_CLCARD.CITY AS CariSehir, LG_" & GFirma & "_" & GDonem & "_INVOICE.TRCODE AS FaturaTipi, LG_" & GFirma & "_" & GDonem & "_INVOICE.FICHENO AS FaturaNo, LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ AS FaturaTarihi, LG_" & GFirma & "_" & GDonem & "_STLINE.STOCKREF AS Stokref, LG_" & GFirma & "_" & GDonem & "_STLINE.AMOUNT AS Miktari, LG_" & GFirma & "_" & GDonem & "_STLINE.PRICE AS BFiyati, LG_" & GFirma & "_" & GDonem & "_STLINE.TOTAL AS Toplam, " _
& "LG_" & GFirma & "_" & GDonem & "_STLINE.DISTDISC AS iNdirim, LG_" & GFirma & "_" & GDonem & "_STLINE.LINENET AS NetTutar, LG_" & GFirma & "_ITEMS.CODE, LG_" & GFirma & "_ITEMS.NAME, LG_" & GFirma & "_ITEMS.STGRPCODE, LG_" & GFirma & "_ITEMS.PRODUCERCODE, LG_" & GFirma & "_ITEMS.SPECODE, LG_" & GFirma & "_ITEMS.CYPHCODE, LG_" & GFirma & "_ITEMS.ISONR , LG_" & GFirma & "_ITEMS.GROUPNR, LG_" & GFirma & "_ITEMS.PRODCOUNTRY " _
& "FROM LG_" & GFirma & "_CLCARD INNER JOIN LG_" & GFirma & "_" & GDonem & "_INVOICE ON LG_" & GFirma & "_CLCARD.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_INVOICE.CLIENTREF INNER JOIN LG_" & GFirma & "_" & GDonem & "_STLINE ON LG_" & GFirma & "_" & GDonem & "_INVOICE.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_STLINE.INVOICEREF INNER JOIN LG_" & GFirma & "_ITEMS ON LG_" & GFirma & "_" & GDonem & "_STLINE.STOCKREF = LG_" & GFirma & "_ITEMS.LOGICALREF " _
& "WHERE LG_" & GFirma & "_" & GDonem & "_STLINE.LINETYPE = 0 "

CnnMlMain.Execute "CREATE VIEW ASRGMental_Env_Ek WITH ENCRYPTION AS " & sqlstr & TarihsTr & OzelsTr & GrupsTr & YetkisTr & StoksTr & UretsTr & IsosTr

Exit Sub
hata:
If Err.Number = -2147217900 Then
   CnnMlMain.Execute "drop view ASRGMental_Env_Ek"
   GoTo DUZENLE
Else
   MsgBox Err.Number
End If

End Sub
Sub SRGMenaFSC()
On Error GoTo hata

Eleman_Ara

If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/05" Else ilktarih = dxDateEdit1
If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "31/12/05" Else sontarih = dxDateEdit2
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
   
If ElemanSrg <> "" Then DurumTr = " AND LG_SLSMAN.DEFINITION_ IN " & ElemanSrg Else DurumTr = ""
   
   If Len(dxPickEdit1(8).DisplayText) = 0 Then
      StoksTr = ""
   Else
      If dxTextEdit1(3).Visible = False Then
         If dxPickEdit1(8) = "EÞÝT" Then
         JJ = dxPickEdit1(8)
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoksTr = "" Else StoksTr = " and LG_" & GFirma & "_CLCARD.CODE = '" & dxTextEdit1(2) & "'"
         Else
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoksTr = "" Else StoksTr = " AND LG_" & GFirma & "_CLCARD.CODE LIKE '" & dxTextEdit1(2) & "%" & "'"
         End If
      Else
         If dxPickEdit1(8) = "ARASI" Then
            StoksTr = " AND LG_" & GFirma & "_CLCARD.CODE >= '" & dxTextEdit1(2) & "' and LG_" & GFirma & "_CLCARD.CODE <= '" & dxTextEdit1(3) & "'"
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
sqlstr = "SELECT LG_" & GFirma & "_CLCARD.CODE AS CariKod, LG_" & GFirma & "_CLCARD.DEFINITION_ AS CariAdi, LG_" & GFirma & "_CLCARD.SPECODE AS CariOzel, LG_" & GFirma & "_CLCARD.CITY AS CariSehir, LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ AS FaturaTarih, LG_" & GFirma & "_" & GDonem & "_INVOICE.GRPCODE AS FaturaCinsi, LG_" & GFirma & "_" & GDonem & "_INVOICE.TRCODE AS FaturaTipi, LG_" & GFirma & "_" & GDonem & "_STFICHE.IOCODE AS FisCinsi, LG_" & GFirma & "_" & GDonem & "_INVOICE.FICHENO AS FaturaNo, LG_" & GFirma & "_" & GDonem & "_INVOICE.DOCODE AS FaturaXNo, LG_" & GFirma & "_" & GDonem & "_INVOICE.SALESMANREF AS SatýcýKodu, LG_" & GFirma & "_" & GDonem & "_STLINE.SPECODE AS SatirOzel, LG_" & GFirma & "_" & GDonem & "_STLINE.AMOUNT AS Miktar, LG_" & GFirma & "_" & GDonem & "_STLINE.PRICE AS BFiyati," _
& " LG_" & GFirma & "_" & GDonem & "_STLINE.TOTAL AS Tutari, LG_" & GFirma & "_" & GDonem & "_STLINE.VATAMNT AS KDVsi, LG_" & GFirma & "_" & GDonem & "_STLINE.VATMATRAH AS KDVliTutar, LG_" & GFirma & "_" & GDonem & "_STLINE.LINENET AS NetTutar, LG_" & GFirma & "_ITEMS.CODE AS StokKodu, LG_" & GFirma & "_ITEMS.NAME AS StokAdi, LG_" & GFirma & "_ITEMS.STGRPCODE AS StokGrup, LG_" & GFirma & "_ITEMS.PRODUCERCODE AS StokUretici, LG_" & GFirma & "_ITEMS.SPECODE AS StokOzel, LG_" & GFirma & "_ITEMS.CYPHCODE AS StokYetki, LG_" & GFirma & "_ITEMS.VAT AS StokKDV, LG_" & GFirma & "_" & GDonem & "_STLINE.UINFO1 AS Carpan1, LG_" & GFirma & "_" & GDonem & "_STLINE.UINFO2 AS Carpan2, LG_" & GFirma & "_UNITSETL.CODE AS Birimi, LG_" & GFirma & "_" & GDonem & "_STLINE.DISTDISC, LG_" & GFirma & "_" & GDonem & "_STLINE.DISTCOST, LG_" & GFirma & "_" & GDonem & "_STLINE.DISTEXP, LG_" & GFirma & "_" & GDonem & "_INVOICE.TOTALDISCOUNTS," _
& " LG_" & GFirma & "_" & GDonem & "_INVOICE.GROSSTOTAL , LG_" & GFirma & "_" & GDonem & "_INVOICE.NETTOTAL ,LG_" & GFirma & "_PAYPLANS.DEFINITION_" _
& " FROM LG_" & GFirma & "_" & GDonem & "_STFICHE INNER JOIN LG_" & GFirma & "_CLCARD INNER JOIN LG_" & GFirma & "_" & GDonem & "_INVOICE ON LG_" & GFirma & "_CLCARD.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_INVOICE.CLIENTREF ON LG_" & GFirma & "_" & GDonem & "_STFICHE.INVOICEREF = LG_" & GFirma & "_" & GDonem & "_INVOICE.LOGICALREF INNER JOIN LG_" & GFirma & "_ITEMS INNER JOIN LG_" & GFirma & "_" & GDonem & "_STLINE ON LG_" & GFirma & "_ITEMS.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_STLINE.STOCKREF ON LG_" & GFirma & "_" & GDonem & "_STFICHE.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_STLINE.STFICHEREF INNER JOIN LG_" & GFirma & "_UNITSETL ON LG_" & GFirma & "_" & GDonem & "_STLINE.UOMREF = LG_" & GFirma & "_UNITSETL.LOGICALREF LEFT OUTER JOIN LG_SLSMAN ON LG_" & GFirma & "_" & GDonem & "_INVOICE.SALESMANREF = LG_SLSMAN.LOGICALREF" _
& " LEFT OUTER JOIN LG_" & GFirma & "_PAYPLANS ON dbo.LG_" & GFirma & "_" & GDonem & "_INVOICE.PAYDEFREF = LG_" & GFirma & "_PAYPLANS.LOGICALREF " _
& " Where (LG_" & GFirma & "_" & GDonem & "_STLINE.LINETYPE = 0) And (LG_" & GFirma & "_" & GDonem & "_STLINE.CANCELLED = 0) "

CnnMlMain.Execute "CREATE VIEW MenaFSC WITH ENCRYPTION AS " & sqlstr & TarihsTr & OzelsTr & GrupsTr & YetkisTr & StoksTr & SOzelsTr & SGrupsTr & SYetkisTr & SUretsTr & SIsosTr & SStoksTr & DurumTr
'CnnMlMain.Execute "CREATE VIEW MenaFSC AS " & sqlstr & TarihsTr & OzelsTr & GrupsTr & YetkisTr & StoksTr & SOzelsTr & SGrupsTr & SYetkisTr & SUretsTr & SIsosTr & SStoksTr & DurumTr

Exit Sub
hata:
If Err.Number = -2147217900 Then
   CnnMlMain.Execute "drop view MenaFSC"
   GoTo DUZENLE
Else
   MsgBox Err.Number
End If

End Sub
Sub SIcmal()
On Error GoTo hata

If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/05" Else ilktarih = dxDateEdit1
If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "31/12/05" Else sontarih = dxDateEdit2
TarihsTr = " and ICMAL1.DATE_ = '" & Format(ilktarih, "MM/DD/YY") & "'"

'SELECT "ALIMFAT" AS ISLEM, LG_" & GFirma & "_01_STLINE.DATE_, LG_014_01_INVOICE.FICHENO, LG_014_CLCARD.CODE AS CARI_KODU,LG_014_CLCARD.DEFINITION_ AS CARI, LG_014_ITEMS.CODE AS KODU, LG_014_ITEMS.NAME AS ADI,CASE LG_014_01_STLINE.TRCODE WHEN 1 THEN LG_014_01_STLINE.LINENET WHEN 6 THEN LG_014_01_STLINE.LINENET * - 1 ELSE 0 END AS TUTAR FROM LG_014_ITEMS INNER JOIN LG_014_01_STLINE ON LG_014_01_STLINE.STOCKREF = LG_014_ITEMS.LOGICALREF INNER JOIN LG_014_01_INVOICE ON LG_014_01_STLINE.INVOICEREF = LG_014_01_INVOICE.LOGICALREF INNER JOIN LG_014_CLCARD ON LG_014_01_STLINE.CLIENTREF = LG_014_CLCARD.LOGICALREF WHERE (LG_014_01_STLINE.CANCELLED = 0) AND (LG_014_01_STLINE.LINETYPE IN (0, 5, 6, 8, 9, 10)) AND ((LG_014_01_STLINE.TRCODE = 1) OR " (LG_014_01_STLINE.TRCODE = 6)) GROUP BY LG_014_01_STLINE.DATE_, LG_014_CLCARD.DEFINITION_, LG_014_ITEMS.NAME, LG_014_01_STLINE.AMOUNT, LG_014_01_STLINE.LINENET,LG_014_01_STLINE.trcode , LG_014_CLCARD.CODE, LG_014_ITEMS.CODE, LG_014_01_INVOICE.FICHENO Union All " _
'& " SELECT "ALIMFAT" AS ISLEM, LG_014_01_STLINE.DATE_, LG_014_01_INVOICE.FICHENO, LG_014_CLCARD.CODE AS CARI_KODU,LG_014_CLCARD.DEFINITION_ AS CARI, LG_014_SRVCARD.CODE AS KODU, LG_014_SRVCARD.DEFINITION_ AS ADI,CASE LG_014_01_STLINE.TRCODE WHEN 1 THEN LG_014_01_STLINE.LINENET WHEN 6 THEN LG_014_01_STLINE.LINENET * - 1 ELSE 0 END AS TUTAR FROM LG_014_SRVCARD INNER JOIN LG_014_01_STLINE ON LG_014_01_STLINE.STOCKREF = LG_014_SRVCARD.LOGICALREF INNER JOIN LG_014_01_INVOICE ON LG_014_01_STLINE.INVOICEREF = LG_014_01_INVOICE.LOGICALREF INNER JOIN LG_014_CLCARD ON LG_014_01_STLINE.CLIENTREF = LG_014_CLCARD.LOGICALREF WHERE (LG_014_01_STLINE.CANCELLED = 0) AND (LG_014_01_STLINE.LINETYPE IN (4, 11)) AND ((LG_014_01_STLINE.TRCODE = 1) OR (LG_014_01_STLINE.TRCODE = 6)) GROUP BY LG_014_01_STLINE.DATE_, LG_014_CLCARD.DEFINITION_, LG_014_SRVCARD.DEFINITION_, LG_014_01_STLINE.AMOUNT,LG_014_01_STLINE.LINENET ,LG_014_01_STLINE.trcode, LG_014_CLCARD.CODE, LG_014_SRVCARD.CODE, LG_014_01_INVOICE.FICHENO Union All " _
'& " SELECT "SATISFAT" AS ISLEM, LG_014_01_STLINE.DATE_, LG_014_01_INVOICE.FICHENO, LG_014_CLCARD.CODE AS CARI_KODU,LG_014_CLCARD.DEFINITION_ AS CARI, LG_014_ITEMS.CODE AS KODU, LG_014_ITEMS.NAME AS ADI,CASE LG_014_01_STLINE.TRCODE WHEN 8 THEN LG_014_01_STLINE.LINENET WHEN 3 THEN LG_014_01_STLINE.LINENET * - 1 ELSE 0 END AS TUTAR FROM LG_014_ITEMS INNER JOIN LG_014_01_STLINE ON LG_014_01_STLINE.STOCKREF = LG_014_ITEMS.LOGICALREF INNER JOIN LG_014_01_INVOICE ON LG_014_01_STLINE.INVOICEREF = LG_014_01_INVOICE.LOGICALREF INNER JOIN LG_014_CLCARD ON LG_014_01_STLINE.CLIENTREF = LG_014_CLCARD.LOGICALREF WHERE(LG_014_01_STLINE.CANCELLED = 0) AND (LG_014_01_STLINE.LINETYPE IN (0, 5, 6, 8, 9, 10)) AND ((LG_014_01_STLINE.TRCODE = 8) OR (LG_014_01_STLINE.TRCODE = 3)) GROUP BY LG_014_01_STLINE.DATE_, LG_014_CLCARD.DEFINITION_, LG_014_ITEMS.NAME, LG_014_01_STLINE.AMOUNT, LG_014_01_STLINE.LINENET, LG_014_01_STLINE.trcode , LG_014_CLCARD.CODE, LG_014_ITEMS.CODE, LG_014_01_INVOICE.FICHENO Union All " _
'& " SELECT "SATISFAT" AS ISLEM, LG_014_01_STLINE.DATE_, LG_014_01_INVOICE.FICHENO, LG_014_CLCARD.CODE AS CARI_KODU,LG_014_CLCARD.DEFINITION_ AS CARI, LG_014_SRVCARD.CODE AS KODU, LG_014_SRVCARD.DEFINITION_ AS ADI,CASE LG_014_01_STLINE.TRCODE WHEN 8 THEN LG_014_01_STLINE.LINENET WHEN 3 THEN LG_014_01_STLINE.LINENET * - 1 ELSE 0 END AS TUTAR FROM LG_014_SRVCARD INNER JOIN LG_014_01_STLINE ON LG_014_01_STLINE.STOCKREF = LG_014_SRVCARD.LOGICALREF INNER JOIN LG_014_01_INVOICE ON LG_014_01_STLINE.INVOICEREF = LG_014_01_INVOICE.LOGICALREF INNER JOIN LG_014_CLCARD ON LG_014_01_STLINE.CLIENTREF = LG_014_CLCARD.LOGICALREF WHERE (LG_014_01_STLINE.CANCELLED = 0) AND (LG_014_01_STLINE.LINETYPE IN (4, 11)) AND ((LG_014_01_STLINE.TRCODE = 8) OR (LG_014_01_STLINE.TRCODE = 3)) GROUP BY LG_014_01_STLINE.DATE_, LG_014_CLCARD.DEFINITION_, LG_014_SRVCARD.DEFINITION_, LG_014_01_STLINE.AMOUNT, LG_014_01_STLINE.LINENET , LG_014_01_STLINE.trcode,LG_014_CLCARD.CODE , LG_014_SRVCARD.CODE, LG_014_01_INVOICE.FICHENO"
'Union All " _
& " SELECT "KTASÝLAT" AS ISLEM, LG_014_01_KSLINES.DATE_, LG_014_01_KSLINES.FICHENO, LG_014_CLCARD.CODE AS CARI_KODU,LG_014_CLCARD.DEFINITION_ AS CARI, LG_014_KSCARD.CODE AS KODU, LG_014_KSCARD.NAME AS ADI,CASE LG_014_01_KSLINES.TRCODE WHEN 11 THEN LG_014_01_KSLINES.AMOUNT ELSE 0 END AS TUTAR FROM LG_014_KSCARD INNER JOIN LG_014_01_KSLINES ON LG_014_01_KSLINES.CARDREF = LG_014_KSCARD.LOGICALREF INNER JOIN LG_014_01_CLFLINE ON LG_014_01_CLFLINE.LOGICALREF = LG_014_01_KSLINES.TRANSREF INNER JOIN LG_014_CLCARD ON LG_014_CLCARD.LOGICALREF = LG_014_01_CLFLINE.CLIENTREF Where (LG_014_01_KSLINES.CANCELLED = 0) And (LG_014_01_KSLINES.trcode = 11) GROUP BY LG_014_01_KSLINES.DATE_, LG_014_01_KSLINES.FICHENO, LG_014_CLCARD.DEFINITION_, LG_014_KSCARD.NAME,LG_014_01_KSLINES.AMOUNT , LG_014_01_KSLINES.trcode, LG_014_CLCARD.CODE, LG_014_KSCARD.CODE Union All SELECT "KODEME" AS ISLEM, LG_014_01_KSLINES.DATE_, LG_014_01_KSLINES.FICHENO, LG_014_CLCARD.CODE AS CARI_KODU,LG_014_CLCARD.DEFINITION_ AS CARI, " _
& " LG_014_KSCARD.CODE AS KODU, LG_014_KSCARD.NAME AS ADI,CASE LG_014_01_KSLINES.TRCODE WHEN 12 THEN LG_014_01_KSLINES.AMOUNT ELSE 0 END AS TUTAR FROM LG_014_KSCARD INNER JOIN LG_014_01_KSLINES ON LG_014_01_KSLINES.CARDREF = LG_014_KSCARD.LOGICALREF INNER JOIN LG_014_01_CLFLINE ON LG_014_01_CLFLINE.LOGICALREF = LG_014_01_KSLINES.TRANSREF INNER JOIN LG_014_CLCARD ON LG_014_CLCARD.LOGICALREF = LG_014_01_CLFLINE.CLIENTREF Where (LG_014_01_KSLINES.CANCELLED = 0) And (LG_014_01_KSLINES.trcode = 12) GROUP BY LG_014_01_KSLINES.DATE_, LG_014_01_KSLINES.FICHENO, LG_014_CLCARD.DEFINITION_, LG_014_KSCARD.NAME, LG_014_01_KSLINES.AMOUNT , LG_014_01_KSLINES.trcode, LG_014_CLCARD.CODE, LG_014_KSCARD.CODE Union All SELECT "KMASRAF" AS ISLEM, LG_014_01_KSLINES.DATE_, LG_014_01_KSLINES.FICHENO, LG_014_EMUHACC.CODE AS MUH_KODU, LG_014_EMUHACC.DEFINITION_ AS CARI, LG_014_KSCARD.CODE AS KODU, LG_014_KSCARD.NAME AS ADI,CASE LG_014_01_KSLINES.TRCODE WHEN 42 THEN LG_014_01_KSLINES.AMOUNT ELSE 0 END AS TUTAR FROM " _
& " LG_014_KSCARD INNER JOIN LG_014_01_KSLINES ON LG_014_01_KSLINES.CARDREF = LG_014_KSCARD.LOGICALREF INNER JOIN LG_014_EMUHACC ON LG_014_01_KSLINES.ACCREF = LG_014_EMUHACC.LOGICALREF Where (LG_014_01_KSLINES.CANCELLED = 0) And (LG_014_01_KSLINES.trcode = 42) GROUP BY LG_014_01_KSLINES.DATE_, LG_014_01_KSLINES.FICHENO, LG_014_EMUHACC.DEFINITION_, LG_014_KSCARD.NAME, LG_014_01_KSLINES.AMOUNT ,LG_014_01_KSLINES.trcode, LG_014_EMUHACC.CODE, LG_014_KSCARD.CODE Union All SELECT "KSATFAT" AS ISLEM, LG_014_01_KSLINES.DATE_, LG_014_01_KSLINES.FICHENO, LG_014_CLCARD.CODE AS KODU, LG_014_CLCARD.DEFINITION_ AS CARI, LG_014_KSCARD.CODE AS KODU, LG_014_KSCARD.NAME AS ADI, CASE LG_014_01_KSLINES.TRCODE WHEN 37 THEN LG_014_01_KSLINES.AMOUNT WHEN 33 THEN LG_014_01_KSLINES.AMOUNT * - 1 WHEN 36 THEN LG_014_01_KSLINES.AMOUNT WHEN 32 THEN LG_014_01_KSLINES.AMOUNT * - 1 WHEN 38 THEN LG_014_01_KSLINES.AMOUNT ELSE 0 END AS TUTAR FROM LG_014_CLCARD INNER JOIN LG_014_01_INVOICE ON LG_014_CLCARD.LOGICALREF = " _
& " LG_014_01_INVOICE.CLIENTREF Inner Join LG_014_01_KSLINES ON LG_014_01_INVOICE.LOGICALREF = LG_014_01_KSLINES.TRANSREF INNER JOIN LG_014_KSCARD ON LG_014_01_KSLINES.CARDREF = LG_014_KSCARD.LOGICALREF WHERE     (LG_014_01_KSLINES.CANCELLED = 0) AND (LG_014_01_KSLINES.TRCODE = 37 OR LG_014_01_KSLINES.TRCODE = 33 OR LG_014_01_KSLINES.TRCODE = 36 OR LG_014_01_KSLINES.TRCODE = 32 OR LG_014_01_KSLINES.TRCODE = 38)GROUP BY LG_014_01_KSLINES.DATE_, LG_014_01_KSLINES.FICHENO, LG_014_CLCARD.DEFINITION_, LG_014_KSCARD.NAME, LG_014_01_KSLINES.AMOUNT , LG_014_01_KSLINES.trcode, LG_014_CLCARD.CODE, LG_014_KSCARD.CODE Union All SELECT     'KALFAT' AS ISLEM, LG_014_01_KSLINES.DATE_, LG_014_01_KSLINES.FICHENO, LG_014_CLCARD.CODE AS KODU, LG_014_CLCARD.DEFINITION_ AS CARI, LG_014_KSCARD.CODE AS KODU, LG_014_KSCARD.NAME AS ADI, CASE LG_014_01_KSLINES.TRCODE WHEN 31 THEN LG_014_01_KSLINES.AMOUNT WHEN 35 THEN LG_014_01_KSLINES.AMOUNT * - 1 WHEN 34 THEN LG_014_01_KSLINES.AMOUNT ELSE 0 END AS TUTAR " _
& " FROM LG_014_CLCARD INNER JOIN LG_014_01_INVOICE ON LG_014_CLCARD.LOGICALREF = LG_014_01_INVOICE.CLIENTREF INNER JOIN LG_014_01_KSLINES ON LG_014_01_INVOICE.LOGICALREF = LG_014_01_KSLINES.TRANSREF INNER JOIN LG_014_KSCARD ON LG_014_01_KSLINES.CARDREF = LG_014_KSCARD.LOGICALREF WHERE (LG_014_01_KSLINES.CANCELLED = 0) AND (LG_014_01_KSLINES.TRCODE = 31 OR LG_014_01_KSLINES.TRCODE = 35 OR LG_014_01_KSLINES.TRCODE = 34)GROUP BY LG_014_01_KSLINES.DATE_, LG_014_01_KSLINES.FICHENO, LG_014_CLCARD.DEFINITION_, LG_014_KSCARD.NAME,LG_014_01_KSLINES.AMOUNT , LG_014_01_KSLINES.trcode, LG_014_CLCARD.CODE, LG_014_KSCARD.CODE Union All SELECT "KBANKYAT" AS ISLEM, LG_014_01_KSLINES.DATE_, LG_014_01_KSLINES.FICHENO, LG_014_BANKACC.CODE AS BANKA_KODU,LG_014_BANKACC.DEFINITION_ AS CARI, LG_014_KSCARD.CODE AS KODU, LG_014_KSCARD.NAME AS ADI,CASE LG_014_01_KSLINES.TRCODE WHEN 21 THEN LG_014_01_KSLINES.AMOUNT ELSE 0 END AS TUTAR FROM LG_014_KSCARD INNER JOIN LG_014_01_KSLINES ON LG_014_01_KSLINES.CARDREF = " _
& " LG_014_KSCARD.LOGICALREF INNER JOIN LG_014_01_BNFLINE ON LG_014_01_KSLINES.TRANSREF = LG_014_01_BNFLINE.LOGICALREF INNER JOIN LG_014_BANKACC ON LG_014_01_BNFLINE.BNACCREF = LG_014_BANKACC.LOGICALREF Where (LG_014_01_KSLINES.CANCELLED = 0) And LG_014_01_KSLINES.trcode = 21 GROUP BY LG_014_01_KSLINES.DATE_, LG_014_01_KSLINES.FICHENO, LG_014_BANKACC.DEFINITION_, LG_014_KSCARD.NAME, LG_014_01_KSLINES.AMOUNT , LG_014_01_KSLINES.trcode, LG_014_BANKACC.CODE, LG_014_KSCARD.CODE Union All SELECT "KBANKCEK" AS ISLEM, LG_014_01_KSLINES.DATE_, LG_014_01_KSLINES.FICHENO, LG_014_BANKACC.CODE AS BANKA_KODU,LG_014_BANKACC.DEFINITION_ AS CARI, LG_014_KSCARD.CODE AS KODU, LG_014_KSCARD.NAME AS ADI, CASE LG_014_01_KSLINES.TRCODE WHEN 22 THEN LG_014_01_KSLINES.AMOUNT ELSE 0 END AS TUTAR FROM  LG_014_KSCARD INNER JOIN LG_014_01_KSLINES ON LG_014_01_KSLINES.CARDREF = LG_014_KSCARD.LOGICALREF INNER JOIN LG_014_01_BNFLINE ON LG_014_01_KSLINES.TRANSREF = LG_014_01_BNFLINE.LOGICALREF INNER JOIN " _
& " LG_014_BANKACC ON LG_014_01_BNFLINE.BNACCREF = LG_014_BANKACC.LOGICALREF Where (LG_014_01_KSLINES.CANCELLED = 0) And LG_014_01_KSLINES.trcode = 22 GROUP BY LG_014_01_KSLINES.DATE_, LG_014_01_KSLINES.FICHENO, LG_014_BANKACC.DEFINITION_, LG_014_KSCARD.NAME,LG_014_01_KSLINES.AMOUNT , LG_014_01_KSLINES.trcode, LG_014_BANKACC.CODE, LG_014_KSCARD.CODE Union All SELECT     'KCEKTAH' AS ISLEM, LG_014_01_KSLINES.DATE_, LG_014_01_KSLINES.FICHENO, KODUC = '0', LG_014_01_CSCARD.OWING AS CARI,LG_014_KSCARD.CODE AS KODU,CASE LG_014_01_CSCARD.DOC WHEN 1 THEN 'MUSTERI CEKI' WHEN 2 THEN 'MUSTERI SENEDI' WHEN 3 THEN 'KENDI CEKIMIZ' WHEN 4 THEN 'BORC SENEDIMIZ' END AS ADI, CASE LG_014_01_KSLINES.TRCODE WHEN 61 THEN LG_014_01_CSCARD.AMOUNT ELSE 0 END AS TUTAR FROM LG_014_KSCARD INNER JOIN LG_014_01_KSLINES ON LG_014_01_KSLINES.CARDREF = LG_014_KSCARD.LOGICALREF INNER JOIN LG_014_01_CSROLL ON LG_014_01_CSROLL.CASHTRANSREF = LG_014_01_KSLINES.LOGICALREF INNER JOIN LG_014_01_CSTRANS ON LG_014_01_CSTRANS.ROLLREF = " _
& " LG_014_01_CSROLL.LOGICALREF INNER JOIN LG_014_01_CSCARD ON LG_014_01_CSCARD.LOGICALREF = LG_014_01_CSTRANS.CSREF Where (LG_014_01_KSLINES.CANCELLED = 0) And LG_014_01_KSLINES.trcode = 61 GROUP BY LG_014_01_KSLINES.DATE_, LG_014_01_KSLINES.FICHENO, LG_014_01_CSCARD.OWING, LG_014_01_CSCARD.DOC,LG_014_01_CSCARD.AMOUNT , LG_014_01_KSLINES.trcode, LG_014_KSCARD.CODE Union All SELECT     'KSENETAH' AS ISLEM, LG_014_01_KSLINES.DATE_, LG_014_01_KSLINES.FICHENO, KODUC = '0', LG_014_01_CSCARD.OWING AS CARI, LG_014_KSCARD.CODE AS KODU, CASE LG_014_01_CSCARD.DOC WHEN 1 THEN 'MUSTERI CEKI' WHEN 2 THEN 'MUSTERI SENEDI' WHEN 3 THEN 'KENDI CEKIMIZ' WHEN 4 THEN 'BORC SENEDIMIZ' END AS ADI, CASE LG_014_01_KSLINES.TRCODE WHEN 62 THEN LG_014_01_CSCARD.AMOUNT ELSE 0 END AS TUTAR FROM  LG_014_KSCARD INNER JOIN  LG_014_01_KSLINES ON LG_014_01_KSLINES.CARDREF = LG_014_KSCARD.LOGICALREF INNER JOIN LG_014_01_CSROLL ON LG_014_01_CSROLL.CASHTRANSREF = LG_014_01_KSLINES.LOGICALREF INNER JOIN " _
& " LG_014_01_CSTRANS ON LG_014_01_CSTRANS.ROLLREF = LG_014_01_CSROLL.LOGICALREF INNER JOIN LG_014_01_CSCARD ON LG_014_01_CSCARD.LOGICALREF = LG_014_01_CSTRANS.CSREF Where (LG_014_01_KSLINES.CANCELLED = 0) And LG_014_01_KSLINES.trcode = 62 GROUP BY LG_014_01_KSLINES.DATE_, LG_014_01_KSLINES.FICHENO, LG_014_01_CSCARD.OWING, LG_014_01_CSCARD.DOC, LG_014_01_CSCARD.AMOUNT , LG_014_01_KSLINES.trcode, LG_014_KSCARD.CODE Union All SELECT "KCEKODE" AS ISLEM, LG_014_01_KSLINES.DATE_, LG_014_01_KSLINES.FICHENO, KODUC = '0', LG_014_01_CSCARD.OWING AS CARI,LG_014_KSCARD.CODE AS KODU,CASE LG_014_01_CSCARD.DOC WHEN 1 THEN 'MUSTERI CEKI' WHEN 2 THEN 'MUSTERI SENEDI' WHEN 3 THEN 'KENDI CEKIMIZ' WHEN 4 THEN 'BORC SENEDIMIZ' END AS ADI, CASE LG_014_01_KSLINES.TRCODE WHEN 63 THEN LG_014_01_CSCARD.AMOUNT ELSE 0 END AS TUTAR FROM LG_014_KSCARD INNER JOIN LG_014_01_KSLINES ON LG_014_01_KSLINES.CARDREF = LG_014_KSCARD.LOGICALREF INNER JOIN LG_014_01_CSROLL ON LG_014_01_CSROLL.CASHTRANSREF = " _
& " LG_014_01_KSLINES.LOGICALREF INNER JOIN LG_014_01_CSTRANS ON LG_014_01_CSTRANS.ROLLREF = LG_014_01_CSROLL.LOGICALREF INNER JOIN LG_014_01_CSCARD ON LG_014_01_CSCARD.LOGICALREF = LG_014_01_CSTRANS.CSREF Where (LG_014_01_KSLINES.CANCELLED = 0) And LG_014_01_KSLINES.trcode = 63 GROUP BY LG_014_01_KSLINES.DATE_, LG_014_01_KSLINES.FICHENO, LG_014_01_CSCARD.OWING, LG_014_01_CSCARD.DOC, LG_014_01_CSCARD.AMOUNT , LG_014_01_KSLINES.trcode, LG_014_KSCARD.CODE
'Union All SELECT     'KSENETOD' AS ISLEM, LG_014_01_KSLINES.DATE_, LG_014_01_KSLINES.FICHENO, KODUC = '0', LG_014_01_CSCARD.OWING AS CARI, LG_014_KSCARD.CODE AS KODU, CASE LG_014_01_CSCARD.DOC WHEN 1 THEN 'MUSTERI CEKI' WHEN 2 THEN 'MUSTERI SENEDI' WHEN 3 THEN 'KENDI CEKIMIZ' WHEN 4 THEN 'BORC SENEDIMIZ' END AS ADI, CASE LG_014_01_KSLINES.TRCODE WHEN 64 THEN LG_014_01_CSCARD.AMOUNT ELSE 0 END AS TUTAR FROM LG_014_KSCARD INNER JOIN LG_014_01_KSLINES ON LG_014_01_KSLINES.CARDREF = LG_014_KSCARD.LOGICALREF INNER JOIN " _
'& " LG_014_01_CSROLL ON LG_014_01_CSROLL.CASHTRANSREF = LG_014_01_KSLINES.LOGICALREF INNER JOIN LG_014_01_CSTRANS ON LG_014_01_CSTRANS.ROLLREF = LG_014_01_CSROLL.LOGICALREF INNER JOIN LG_014_01_CSCARD ON LG_014_01_CSCARD.LOGICALREF = LG_014_01_CSTRANS.CSREF Where (LG_014_01_KSLINES.CANCELLED = 0) And LG_014_01_KSLINES.trcode = 64 GROUP BY LG_014_01_KSLINES.DATE_, LG_014_01_KSLINES.FICHENO, LG_014_01_CSCARD.OWING, LG_014_01_CSCARD.DOC, LG_014_01_CSCARD.AMOUNT , LG_014_01_KSLINES.trcode, LG_014_KSCARD.CODE Union All SELECT     'KVIRBORC' AS ISLEM, LG_014_01_KSLINES.DATE_, LG_014_01_KSLINES.FICHENO, KODUC = '0', LG_014_01_KSLINES.LINEEXP AS CARI, LG_014_KSCARD.CODE AS KODU, LG_014_KSCARD.NAME AS ADI, LG_014_01_KSLINES.AMOUNT AS TUTAR FROM LG_014_KSCARD INNER JOIN  LG_014_01_KSLINES ON LG_014_01_KSLINES.CARDREF = LG_014_KSCARD.LOGICALREF Where (LG_014_01_KSLINES.CANCELLED = 0) And LG_014_01_KSLINES.trcode = 73 GROUP BY LG_014_01_KSLINES.DATE_, LG_014_01_KSLINES.FICHENO, LG_014_01_KSLINES.LINEEXP, " _
'& " LG_014_01_KSLINES.AMOUNT,LG_014_01_KSLINES.trcode , LG_014_KSCARD.CODE, LG_014_KSCARD.Name Union All SELECT     'KVIRALCK' AS ISLEM, LG_014_01_KSLINES.DATE_, LG_014_01_KSLINES.FICHENO, KODUC = '0', LG_014_01_KSLINES.LINEEXP AS CARI,FROM LG_014_KSCARD INNER JOIN Union All Union All Where (LG_014_01_CSCARD.DOC = 2) And LG_014_01_CSCARD.CURRSTAT = 1
'GROUP BY LG_014_01_CSCARD.SETDATE, LG_014_01_CSCARD.PORTFOYNO, LG_014_01_CSCARD.OWING, LG_014_01_CSCARD.AMOUNT,LG_014_01_CSROLL.ROLLNO"
'Union All
'SELECT     'CEKCIKIS' AS ISLEM, LG_014_01_CSCARD.SETDATE, LG_014_01_CSCARD.PORTFOYNO, KODUC = '0', LG_014_01_CSCARD.OWING AS CARI,
'                      KODU = '0', LG_014_01_CSROLL.ROLLNO AS ADI, LG_014_01_CSCARD.AMOUNT AS TUTAR
'FROM         LG_014_01_CSCARD INNER JOIN
'                      LG_014_01_CSTRANS ON LG_014_01_CSCARD.LOGICALREF = LG_014_01_CSTRANS.CSREF INNER JOIN
'                      LG_014_01_CSROLL ON LG_014_01_CSTRANS.ROLLREF = LG_014_01_CSROLL.LOGICALREF
'Where (LG_014_01_CSCARD.DOC = 3) And LG_014_01_CSCARD.CURRSTAT = 1
'GROUP BY LG_014_01_CSCARD.SETDATE, LG_014_01_CSCARD.PORTFOYNO, LG_014_01_CSCARD.OWING, LG_014_01_CSCARD.AMOUNT,
'                      LG_014_01_CSROLL.ROLLNO
'Union All
'SELECT     'SENTCIK' AS ISLEM, LG_014_01_CSCARD.SETDATE, LG_014_01_CSCARD.PORTFOYNO, KODUC = '0', LG_014_01_CSCARD.OWING AS CARI,
'                      KODU = '0', LG_014_01_CSROLL.ROLLNO AS ADI, LG_014_01_CSCARD.AMOUNT AS TUTAR
'FROM         LG_014_01_CSCARD INNER JOIN
'                      LG_014_01_CSTRANS ON LG_014_01_CSCARD.LOGICALREF = LG_014_01_CSTRANS.CSREF INNER JOIN
'                      LG_014_01_CSROLL ON LG_014_01_CSTRANS.ROLLREF = LG_014_01_CSROLL.LOGICALREF
'Where (LG_014_01_CSCARD.DOC = 4) And LG_014_01_CSCARD.CURRSTAT = 1
'GROUP BY LG_014_01_CSCARD.SETDATE, LG_014_01_CSCARD.PORTFOYNO, LG_014_01_CSCARD.OWING, LG_014_01_CSCARD.AMOUNT,
'                      LG_014_01_CSROLL.ROLLNO
'Union All
'SELECT     'GELENHAV' AS ISLEM, LG_014_01_BNFICHE.DATE_, LG_014_01_BNFICHE.FICHENO, LG_014_BNCARD.CODE AS BANKA_KODU,
'                      LG_014_BNCARD.DEFINITION_ AS CARI, LG_014_BANKACC.CODE AS KODU, LG_014_BANKACC.DEFINITION_ AS ADI,
'                      LG_014_01_BNFLINE.AMOUNT AS TUTAR
'FROM         LG_014_01_BNFICHE INNER JOIN
'                      LG_014_01_BNFLINE ON LG_014_01_BNFICHE.LOGICALREF = LG_014_01_BNFLINE.SOURCEFREF INNER JOIN
'                      LG_014_BANKACC INNER JOIN
'                      LG_014_BNCARD ON LG_014_BANKACC.BANKREF = LG_014_BNCARD.LOGICALREF ON
'                      LG_014_01_BNFLINE.BNACCREF = LG_014_BANKACC.LOGICALREF
'Where (LG_014_01_BNFLINE.MODULENR = 7) And LG_014_01_BNFLINE.trcode = 3
'GROUP BY LG_014_01_BNFICHE.DATE_, LG_014_01_BNFICHE.FICHENO, LG_014_BNCARD.CODE, LG_014_BNCARD.DEFINITION_, LG_014_BANKACC.CODE,
'                      LG_014_BANKACC.DEFINITION_ , LG_014_01_BNFLINE.AMOUNT
'Union All
'SELECT     'GONDHAV' AS ISLEM, LG_014_01_BNFICHE.DATE_, LG_014_01_BNFICHE.FICHENO, LG_014_BNCARD.CODE AS BANKA_KODU,
'                      LG_014_BNCARD.DEFINITION_ AS CARI, LG_014_BANKACC.CODE AS KODU, LG_014_BANKACC.DEFINITION_ AS ADI,
'                      LG_014_01_BNFLINE.AMOUNT AS TUTAR
'FROM         LG_014_01_BNFICHE INNER JOIN
'                      LG_014_01_BNFLINE ON LG_014_01_BNFICHE.LOGICALREF = LG_014_01_BNFLINE.SOURCEFREF INNER JOIN
'                      LG_014_BANKACC INNER JOIN
'                      LG_014_BNCARD ON LG_014_BANKACC.BANKREF = LG_014_BNCARD.LOGICALREF ON
'                      LG_014_01_BNFLINE.BNACCREF = LG_014_BANKACC.LOGICALREF
'Where (LG_014_01_BNFLINE.MODULENR = 7) And LG_014_01_BNFLINE.trcode = 4
'GROUP BY LG_014_01_BNFICHE.DATE_, LG_014_01_BNFICHE.FICHENO, LG_014_BNCARD.CODE, LG_014_BNCARD.DEFINITION_, LG_014_BANKACC.CODE,
'                      LG_014_BANKACC.DEFINITION_ , LG_014_01_BNFLINE.AMOUNT'

DUZENLE:
sqlstr = "SELECT ISLEM, DATE_, FICHENO, CARI_KODU, CARI, KODU, ADI, TUTAR From ICMAL1 WHERE ISLEM <> ''"

CnnMlMain.Execute "CREATE VIEW ICMAL1 WITH ENCRYPTION AS select ISLEM, DATE_, FICHENO, CARI_KODU, CARI, KODU, ADI, TUTAR From ICMAL WHERE ISLEM <> ''"
CnnMlMain.Execute "CREATE VIEW ICMAL2 WITH ENCRYPTION AS " & sqlstr & TarihsTr

SIcmalCari
Exit Sub
hata:
If Err.Number = -2147217900 Then
   CnnMlMain.Execute "drop view ICMAL1"
   CnnMlMain.Execute "drop view ICMAL2"
   GoTo DUZENLE
Else
   MsgBox Err.Number
End If

End Sub
Sub SIcmalCari()
On Error GoTo hata

'If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/05" Else ilktarih = dxDateEdit1
If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "01/01/05"

If Len(dxPickEdit1(4).DisplayText) = 0 Then OzelsTr = "" Else OzelsTr = " and LG_" & GFirma & "_CLCARD.SPECODE = '" & Trim(dxPickEdit1(4)) & "'"
If Len(dxPickEdit1(6).DisplayText) = 0 Then YetkisTr = "" Else YetkisTr = " and LG_" & GFirma & "_CLCARD.CYPHCODE = '" & Trim(dxPickEdit1(6)) & "'"
If Len(dxPickEdit1(7).DisplayText) = 0 Then GrupsTr = "" Else GrupsTr = " and LG_" & GFirma & "_CLCARD.CITY = '" & Trim(dxPickEdit1(7)) & "'"
If Len(dxPickEdit1(9).DisplayText) = 0 Then IlcesTr = "" Else IlcesTr = " and LG_" & GFirma & "_CLCARD.TOWN = '" & Trim(dxPickEdit1(9)) & "'"
'RAPORA ETKIME BAÞLIYOR
TarihsTr = " where LG_" & GFirma & "_" & GDonem & "_CLFLINE.DATE_ >= '" & Format(sontarih, "MM/DD/YY") & "' AND LG_" & GFirma & "_" & GDonem & "_CLFLINE.DATE_ <= '" & Format(ilktarih, "MM/DD/YY") & "' "
   If Len(dxPickEdit1(8).DisplayText) = 0 Then
      StoksTr = ""
   Else
      If dxTextEdit1(3).Visible = False Then
         If dxPickEdit1(8) = "EÞÝT" Then
         JJ = dxPickEdit1(8)
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoksTr = "" Else StoksTr = " and LG_" & GFirma & "_CLCARD.CODE = '" & dxTextEdit1(2) & "'"
         Else
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoksTr = "" Else StoksTr = " AND LG_" & GFirma & "_CLCARD.CODE LIKE '" & dxTextEdit1(2) & "%" & "'"
         End If
      Else
         If dxPickEdit1(8) = "ARASI" Then
            StoksTr = " AND LG_" & GFirma & "_CLCARD.CODE >= '" & dxTextEdit1(2) & "' and LG_" & GFirma & "_CLCARD.CODE <= '" & dxTextEdit1(3) & "'"
         End If
      End If
   End If

    CnnMlMain.Execute "drop view BORCALC"
    CnnMlMain.Execute "drop view BAK"
    CnnMlMain.Execute "drop view BAK1"
    CnnMlMain.Execute "CREATE VIEW BORCALC WITH ENCRYPTION AS SELECT LG_" & GFirma & "_CLCARD.CODE, LG_" & GFirma & "_CLCARD.DEFINITION_, LG_" & GFirma & "_" & GDonem & "_CLFLINE.DATE_, LG_" & GFirma & "_" & GDonem & "_CLFLINE.SIGN,SUM(LG_" & GFirma & "_" & GDonem & "_CLFLINE.AMOUNT) As Expr1 FROM LG_" & GFirma & "_" & GDonem & "_CLFLINE INNER JOIN LG_" & GFirma & "_CLCARD ON LG_" & GFirma & "_" & GDonem & "_CLFLINE.CLIENTREF = LG_" & GFirma & "_CLCARD.LOGICALREF  " & TarihsTr & OzelsTr & YetkisTr & GrupsTr & IlcesTr & StoksTr & " GROUP BY LG_" & GFirma & "_CLCARD.CODE, LG_" & GFirma & "_CLCARD.DEFINITION_, LG_" & GFirma & "_" & GDonem & "_CLFLINE.DATE_, LG_" & GFirma & "_" & GDonem & "_CLFLINE.SIGN"
    CnnMlMain.Execute "CREATE VIEW BAK WITH ENCRYPTION AS SELECT CODE, DEFINITION_,SIGN,  [BORC] =CASE SIGN WHEN 0 THEN SUM(Expr1)ELSE 0 END,[ALACAK] =CASE SIGN WHEN 1 THEN SUM(Expr1) ELSE 0 END From BORCALC GROUP BY CODE, DEFINITION_,SIGN "
    CnnMlMain.Execute "CREATE VIEW BAK1 WITH ENCRYPTION AS SELECT CODE, DEFINITION_, SUM(BORC) AS Expr1, SUM(ALACAK) AS Expr2 From BAK GROUP BY CODE, DEFINITION_"
Exit Sub
hata:
'MsgBox Err.Number & Err.Description
   Resume Next
   Exit Sub
End Sub
Sub SRGMenaSonAlSat()
On Error GoTo hata

If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/05" Else ilktarih = dxDateEdit1
If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "31/12/05" Else sontarih = dxDateEdit2
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
      StoksTr = ""
   Else
      If dxTextEdit1(3).Visible = False Then
         If dxPickEdit1(8) = "EÞÝT" Then
         JJ = dxPickEdit1(8)
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoksTr = "" Else StoksTr = " and LG_" & GFirma & "_CLCARD.CODE = '" & dxTextEdit1(2) & "'"
         Else
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoksTr = "" Else StoksTr = " AND LG_" & GFirma & "_CLCARD.CODE LIKE '" & dxTextEdit1(2) & "%" & "'"
         End If
      Else
         If dxPickEdit1(8) = "ARASI" Then
            StoksTr = " AND LG_" & GFirma & "_CLCARD.CODE >= '" & dxTextEdit1(2) & "' and LG_" & GFirma & "_CLCARD.CODE <= '" & dxTextEdit1(3) & "'"
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
sqlstr = "SELECT LG_" & GFirma & "_" & GDonem & "_STLINE.STOCKREF, LG_" & GFirma & "_" & GDonem & "_STLINE.TRCODE, LG_" & GFirma & "_" & GDonem & "_STLINE.DATE_, LG_" & GFirma & "_" & GDonem & "_STLINE.PRICE FROM LG_" & GFirma & "_" & GDonem & "_STLINE INNER JOIN " _
& " LG_" & GFirma & "_ITEMS ON LG_" & GFirma & "_" & GDonem & "_STLINE.STOCKREF = LG_" & GFirma & "_ITEMS.LOGICALREF INNER JOIN LG_" & GFirma & "_CLCARD ON LG_" & GFirma & "_" & GDonem & "_STLINE.CLIENTREF = LG_" & GFirma & "_CLCARD.LOGICALREF " _
& " WHERE (LG_" & GFirma & "_" & GDonem & "_STLINE.TRCODE = " & trcode & " or LG_" & GFirma & "_" & GDonem & "_STLINE.TRCODE = " & trcode1 & ") "

CnnMlMain.Execute "CREATE VIEW ALISSTOK WITH ENCRYPTION AS " & sqlstr & TarihsTr & OzelsTr & GrupsTr & YetkisTr & StoksTr & SOzelsTr & SGrupsTr & SYetkisTr & SUretsTr & SIsosTr & SStoksTr

CnnMlMain.Execute "create view ALIS WITH ENCRYPTION as SELECT LG_" & GFirma & "_ITEMS.CODE, LG_" & GFirma & "_ITEMS.NAME, ALISSTOK.TRCODE, ALISSTOK.DATE_, ALISSTOK.PRICE FROM LG_" & GFirma & "_ITEMS INNER JOIN ALISSTOK ON LG_" & GFirma & "_ITEMS.LOGICALREF = ALISSTOK.STOCKREF"


Exit Sub
hata:
If Err.Number = -2147217900 Then
   CnnMlMain.Execute "drop view ALISSTOK"
   CnnMlMain.Execute "drop view ALIS"
   GoTo DUZENLE
Else
   MsgBox Err.Number
End If

End Sub
Sub SMenaElemanSat()
On Error GoTo hata
Eleman_Ara
If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/05" Else ilktarih = dxDateEdit1
If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "31/12/05" Else sontarih = dxDateEdit2
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
   
DurumTr = " AND LG_SLSMAN.DEFINITION_ IN " & ElemanSrg
   
   If Len(dxPickEdit1(8).DisplayText) = 0 Then
      StoksTr = ""
   Else
      If dxTextEdit1(3).Visible = False Then
         If dxPickEdit1(8) = "EÞÝT" Then
         JJ = dxPickEdit1(8)
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoksTr = "" Else StoksTr = " and LG_" & GFirma & "_CLCARD.CODE = '" & dxTextEdit1(2) & "'"
         Else
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoksTr = "" Else StoksTr = " AND LG_" & GFirma & "_CLCARD.CODE LIKE '" & dxTextEdit1(2) & "%" & "'"
         End If
      Else
         If dxPickEdit1(8) = "ARASI" Then
            StoksTr = " AND LG_" & GFirma & "_CLCARD.CODE >= '" & dxTextEdit1(2) & "' and LG_" & GFirma & "_CLCARD.CODE <= '" & dxTextEdit1(3) & "'"
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
sqlstr = "SELECT LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_, LG_" & GFirma & "_" & GDonem & "_INVOICE.FICHENO, LG_" & GFirma & "_" & GDonem & "_INVOICE.TRCODE,LG_" & GFirma & "_" & GDonem & "_STLINE.VATAMNT, LG_" & GFirma & "_CLCARD.CODE,LG_" & GFirma & "_CLCARD.DEFINITION_, LG_SLSMAN.CODE AS Expr1, LG_SLSMAN.DEFINITION_ AS Expr2, LG_" & GFirma & "_ITEMS.CODE AS Expr3, " _
& " LG_" & GFirma & "_ITEMS.NAME, LG_" & GFirma & "_" & GDonem & "_STLINE.AMOUNT, LG_" & GFirma & "_" & GDonem & "_STLINE.PRICE, LG_" & GFirma & "_" & GDonem & "_STLINE.TOTAL, LG_" & GFirma & "_" & GDonem & "_STLINE.DISTDISC , LG_" & GFirma & "_" & GDonem & "_STLINE.LINENET, LG_" & GFirma & "_" & GDonem & "_STLINE.LINETYPE,LG_" & GFirma & "_CLCARD.CYPHCODE,LG_" & GFirma & "_CLCARD.CITY FROM LG_" & GFirma & "_CLCARD INNER JOIN " _
& " LG_" & GFirma & "_" & GDonem & "_INVOICE ON LG_" & GFirma & "_CLCARD.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_INVOICE.CLIENTREF INNER JOIN LG_SLSMAN ON LG_" & GFirma & "_" & GDonem & "_INVOICE.SALESMANREF = LG_SLSMAN.LOGICALREF INNER JOIN " _
& " LG_" & GFirma & "_" & GDonem & "_STLINE ON LG_" & GFirma & "_" & GDonem & "_INVOICE.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_STLINE.INVOICEREF INNER JOIN  LG_" & GFirma & "_ITEMS ON LG_" & GFirma & "_" & GDonem & "_STLINE.STOCKREF = LG_" & GFirma & "_ITEMS.LOGICALREF WHERE (LG_" & GFirma & "_" & GDonem & "_INVOICE.TRCODE in(8,3,7,2)) AND (LG_" & GFirma & "_" & GDonem & "_STLINE.LINETYPE = 0) "

'CnnMlMain.Execute "CREATE VIEW MENAELEMANBAZLISATIS  AS " & sqlstr & TarihsTr & OzelsTr & GrupsTr & YetkisTr & StoksTr & SOzelsTr & SGrupsTr & SYetkisTr & SUretsTr & SIsosTr & SStoksTr & DurumTr
CnnMlMain.Execute "CREATE VIEW MENAELEMANBAZLISATIS WITH ENCRYPTION AS " & sqlstr & TarihsTr & OzelsTr & GrupsTr & YetkisTr & StoksTr & SOzelsTr & SGrupsTr & SYetkisTr & SUretsTr & SIsosTr & SStoksTr & DurumTr

Exit Sub
hata:
If Err.Number = -2147217900 Then
   CnnMlMain.Execute "drop view MENAELEMANBAZLISATIS"
   GoTo DUZENLE
Else
   MsgBox Err.Number
End If

End Sub

Sub SRGMenaStokFiyat()
On Error GoTo hata

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
sqlstr = "SELECT LG_" & GFirma & "_ITEMS.STGRPCODE,LG_" & GFirma & "_ITEMS.SPECODE,LG_" & GFirma & "_ITEMS.CODE, LG_" & GFirma & "_ITEMS.NAME, LG_" & GFirma & "_PRCLIST.PRICE, LG_" & GFirma & "_UNITSETL.CODE AS Expr1,LG_" & GFirma & "_PRCLIST.INCVAT , LG_" & GFirma & "_PRCLIST.PRIORITY, LG_" & GFirma & "_PRCLIST.PTYPE " _
& " FROM LG_" & GFirma & "_ITEMS INNER JOIN LG_" & GFirma & "_PRCLIST ON LG_" & GFirma & "_ITEMS.LOGICALREF = LG_" & GFirma & "_PRCLIST.CARDREF INNER JOIN LG_" & GFirma & "_UNITSETL ON LG_" & GFirma & "_PRCLIST.UOMREF = LG_" & GFirma & "_UNITSETL.LOGICALREF where LG_" & GFirma & "_PRCLIST.PTYPE = " & trcode & ""

CnnMlMain.Execute "CREATE VIEW MENASTOKFIYAT WITH ENCRYPTION AS " & sqlstr & TarihsTr & OzelsTr & GrupsTr & YetkisTr & StoksTr & SOzelsTr & SGrupsTr & SYetkisTr & SUretsTr & SIsosTr & SStoksTr

Exit Sub
hata:
If Err.Number = -2147217900 Then
   CnnMlMain.Execute "drop view MENASTOKFIYAT"
   GoTo DUZENLE
Else
   MsgBox Err.Number
End If

End Sub

Sub SRGCari()
On Error GoTo hata

If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/05" Else ilktarih = dxDateEdit1
If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "31/12/05" Else sontarih = dxDateEdit2
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
      StoksTr = ""
   Else
      If dxTextEdit1(3).Visible = False Then
         If dxPickEdit1(8) = "EÞÝT" Then
         JJ = dxPickEdit1(8)
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoksTr = "" Else StoksTr = " and LG_" & GFirma & "_CLCARD.CODE = '" & dxTextEdit1(2) & "'"
         Else
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoksTr = "" Else StoksTr = " AND LG_" & GFirma & "_CLCARD.CODE LIKE '" & dxTextEdit1(2) & "%" & "'"
         End If
      Else
         If dxPickEdit1(8) = "ARASI" Then
            StoksTr = " AND LG_" & GFirma & "_CLCARD.CODE >= '" & dxTextEdit1(2) & "' and LG_" & GFirma & "_CLCARD.CODE <= '" & dxTextEdit1(3) & "'"
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
sqlstr = "SELECT LG_" & GFirma & "_CLCARD.CODE AS CariKodu, LG_" & GFirma & "_CLCARD.DEFINITION_ AS CariAdi, LG_" & GFirma & "_CLCARD.SPECODE AS CariOzel, LG_" & GFirma & "_CLCARD.CYPHCODE AS CariYetki, LG_" & GFirma & "_CLCARD.CITY AS CariSehir, LG_" & GFirma & "_" & GDonem & "_INVOICE.GRPCODE AS FGrup, LG_" & GFirma & "_" & GDonem & "_INVOICE.TRCODE AS FTipi, LG_" & GFirma & "_" & GDonem & "_INVOICE.FICHENO AS FFisNo, LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ AS FTarih, LG_" & GFirma & "_ITEMS.CODE AS StokKodu, LG_" & GFirma & "_ITEMS.NAME AS StokAdi, LG_" & GFirma & "_ITEMS.FREIGHTPLACE AS f0, LG_" & GFirma & "_ITEMS.FREIGHTTYPCODE1 AS f1, LG_" & GFirma & "_ITEMS.FREIGHTTYPCODE2 AS f2, LG_" & GFirma & "_ITEMS.FREIGHTTYPCODE3 AS f3," _
& " LG_" & GFirma & "_ITEMS.FREIGHTTYPCODE4 AS f4, LG_" & GFirma & "_ITEMS.FREIGHTTYPCODE5 AS f5, LG_" & GFirma & "_ITEMS.FREIGHTTYPCODE6 AS f6, LG_" & GFirma & "_ITEMS.FREIGHTTYPCODE7 AS f7, LG_" & GFirma & "_ITEMS.FREIGHTTYPCODE8 AS f8, LG_" & GFirma & "_ITEMS.FREIGHTTYPCODE9 AS f9, LG_" & GFirma & "_ITEMS.FREIGHTTYPCODE10 AS f10, LG_" & GFirma & "_" & GDonem & "_STLINE.AMOUNT AS Miktar, LG_" & GFirma & "_" & GDonem & "_STLINE.PRICE AS BFiyati, LG_" & GFirma & "_" & GDonem & "_STLINE.TOTAL AS Toplam, LG_" & GFirma & "_" & GDonem & "_STLINE.VATINC AS KDVDahil, LG_" & GFirma & "_" & GDonem & "_STLINE.VAT AS KDVOrani, LG_" & GFirma & "_" & GDonem & "_STLINE.VATAMNT AS KDVTutari, LG_" & GFirma & "_" & GDonem & "_STLINE.VATMATRAH AS KDVliTutar, LG_" & GFirma & "_" & GDonem & "_STLINE.LINENET AS NetTutar,LG_" & GFirma & "_" & GDonem & "_STLINE.DISTDISC " _
& " FROM LG_" & GFirma & "_" & GDonem & "_INVOICE INNER JOIN LG_" & GFirma & "_CLCARD ON LG_" & GFirma & "_" & GDonem & "_INVOICE.CLIENTREF = LG_" & GFirma & "_CLCARD.LOGICALREF INNER JOIN LG_" & GFirma & "_" & GDonem & "_STLINE ON LG_" & GFirma & "_" & GDonem & "_INVOICE.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_STLINE.INVOICEREF INNER JOIN LG_" & GFirma & "_ITEMS ON LG_" & GFirma & "_" & GDonem & "_STLINE.STOCKREF = LG_" & GFirma & "_ITEMS.LOGICALREF " _
& "Where (LG_" & GFirma & "_CLCARD.ACTIVE = 0) And (LG_" & GFirma & "_" & GDonem & "_INVOICE.CANCELLED = 0)"

'CnnMlMain.Execute "CREATE VIEW AMenaCariSatis  AS " & sqlstr & TarihsTr & OzelsTr & GrupsTr & YetkisTr & IlcesTr & StoksTr & SOzelsTr & SGrupsTr & SYetkisTr & SUretsTr & SIsosTr & SStoksTr
CnnMlMain.Execute "CREATE VIEW AMenaCariSatis WITH ENCRYPTION AS " & sqlstr & TarihsTr & OzelsTr & GrupsTr & YetkisTr & IlcesTr & StoksTr & SOzelsTr & SGrupsTr & SYetkisTr & SUretsTr & SIsosTr & SStoksTr

Exit Sub
hata:
If Err.Number = -2147217900 Then
   CnnMlMain.Execute "drop view AMenaCariSatis"
   GoTo DUZENLE
Else
   MsgBox Err.Number
End If

End Sub
Sub SSiparis()
On Error GoTo hata

If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/05" Else ilktarih = dxDateEdit1
If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "31/12/05" Else sontarih = dxDateEdit2
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
      StoksTr = ""
   Else
      If dxTextEdit1(3).Visible = False Then
         If dxPickEdit1(8) = "EÞÝT" Then
         JJ = dxPickEdit1(8)
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoksTr = "" Else StoksTr = " and LG_" & GFirma & "_CLCARD.CODE = '" & dxTextEdit1(2) & "'"
         Else
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoksTr = "" Else StoksTr = " AND LG_" & GFirma & "_CLCARD.CODE LIKE '" & dxTextEdit1(2) & "%" & "'"
         End If
      Else
         If dxPickEdit1(8) = "ARASI" Then
            StoksTr = " AND LG_" & GFirma & "_CLCARD.CODE >= '" & dxTextEdit1(2) & "' and LG_" & GFirma & "_CLCARD.CODE <= '" & dxTextEdit1(3) & "'"
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
    & " FROM LG_" & GFirma & "_ITEMS INNER JOIN LG_" & GFirma & "_" & GDonem & "_ORFLINE ON LG_" & GFirma & "_ITEMS.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_ORFLINE.STOCKREF INNER JOIN  LG_" & GFirma & "_CLCARD ON LG_" & GFirma & "_" & GDonem & "_ORFLINE.CLIENTREF = LG_" & GFirma & "_CLCARD.LOGICALREF WHERE LG_" & GFirma & "_" & GDonem & "_ORFLINE.trcodE= " & trcode & " " & sqlstr & TarihsTr & OzelsTr & GrupsTr & YetkisTr & IlcesTr & StoksTr & SOzelsTr & SGrupsTr & SYetkisTr & SUretsTr & SIsosTr & SStoksTr _
    & " GROUP BY LG_" & GFirma & "_ITEMS.CODE, LG_" & GFirma & "_ITEMS.NAME, LG_" & GFirma & "_CLCARD.CODE, LG_" & GFirma & "_CLCARD.DEFINITION_, " _
    & " LG_" & GFirma & "_" & GDonem & "_ORFLINE.trcode , LG_" & GFirma & "_" & GDonem & "_ORFLINE.DATE_, LG_" & GFirma & "_" & GDonem & "_ORFLINE.SHIPPEDAMOUNT"

Exit Sub
hata:
If Err.Number = -2147217900 Then
   CnnMlMain.Execute "drop view MenaSiparis"
   GoTo DUZENLE
Else
   MsgBox Err.Number
End If

End Sub

Sub SOdeme()
On Error GoTo hata

DuruM_Ara

If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/05" Else ilktarih = dxDateEdit1
If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "31/12/05" Else sontarih = dxDateEdit2

If Len(dxPickEdit1(4).DisplayText) = 0 Then OzelsTr = "" Else OzelsTr = " and LG_" & GFirma & "_CLCARD.SPECODE = '" & Trim(dxPickEdit1(4)) & "'"
If Len(dxPickEdit1(6).DisplayText) = 0 Then YetkisTr = "" Else YetkisTr = " and LG_" & GFirma & "_CLCARD.CYPHCODE = '" & Trim(dxPickEdit1(6)) & "'"
If Len(dxPickEdit1(7).DisplayText) = 0 Then GrupsTr = "" Else GrupsTr = " and LG_" & GFirma & "_CLCARD.CITY = '" & Trim(dxPickEdit1(7)) & "'"
If Len(dxPickEdit1(9).DisplayText) = 0 Then IlcesTr = "" Else IlcesTr = " and LG_" & GFirma & "_CLCARD.TOWN = '" & Trim(dxPickEdit1(9)) & "'"

DurumTr = " AND CURRSTAT IN " & KasaSrg

'RAPORA ETKIME BAÞLIYOR
TarihsTr = " AND DUEDATE >= '" & Format(ilktarih, "MM/DD/YY") & "' AND DUEDATE <= '" & Format(sontarih, "MM/DD/YY") & "' "
'TarihsTr = " AND BT.DATE_ >= '" & Format(ilktarih, "MM/DD/YY") & "' AND BT.DATE_ <= '" & Format(sontarih, "MM/DD/YY") & "' "
   If Len(dxPickEdit1(8).DisplayText) = 0 Then
      StoksTr = ""
   Else
      If dxTextEdit1(1).Visible = False Then
         If dxPickEdit1(8) = "EÞÝT" Then
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoksTr = "" Else StoksTr = " and CARI.CODE = '" & dxTextEdit1(2) & "'"
         Else
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoksTr = "" Else StoksTr = " AND CARI.CODE LIKE '" & dxTextEdit1(2) & "*" & "'"
         End If
      Else
         If dxPickEdit1(8) = "ARASI" Then
            StoksTr = " AND CARI.CODE >= '" & dxTextEdit1(2) & "' and CARI.CODE <= '" & dxTextEdit1(3) & "'"
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
hata:
'MsgBox Err.Number & Err.Description
   Resume Next
   Exit Sub
End Sub
Sub SBorcAlacak()
On Error GoTo hata

If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/05" Else ilktarih = dxDateEdit1
If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "31/12/05" Else sontarih = dxDateEdit2

If Len(dxPickEdit1(4).DisplayText) = 0 Then OzelsTr = "" Else OzelsTr = " and LG_" & GFirma & "_CLCARD.SPECODE = '" & Trim(dxPickEdit1(4)) & "'"
If Len(dxPickEdit1(6).DisplayText) = 0 Then YetkisTr = "" Else YetkisTr = " and LG_" & GFirma & "_CLCARD.CYPHCODE = '" & Trim(dxPickEdit1(6)) & "'"
If Len(dxPickEdit1(7).DisplayText) = 0 Then GrupsTr = "" Else GrupsTr = " and LG_" & GFirma & "_CLCARD.CITY = '" & Trim(dxPickEdit1(7)) & "'"
If Len(dxPickEdit1(9).DisplayText) = 0 Then IlcesTr = "" Else IlcesTr = " and LG_" & GFirma & "_CLCARD.TOWN = '" & Trim(dxPickEdit1(9)) & "'"
'RAPORA ETKIME BAÞLIYOR
TarihsTr = " where LG_" & GFirma & "_" & GDonem & "_CLFLINE.DATE_ >= '" & Format(ilktarih, "MM/DD/YY") & "' AND LG_" & GFirma & "_" & GDonem & "_CLFLINE.DATE_ <= '" & Format(sontarih, "MM/DD/YY") & "' "
   If Len(dxPickEdit1(8).DisplayText) = 0 Then
      StoksTr = ""
   Else
      If dxTextEdit1(3).Visible = False Then
         If dxPickEdit1(8) = "EÞÝT" Then
         JJ = dxPickEdit1(8)
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoksTr = "" Else StoksTr = " and LG_" & GFirma & "_CLCARD.CODE = '" & dxTextEdit1(2) & "'"
         Else
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoksTr = "" Else StoksTr = " AND LG_" & GFirma & "_CLCARD.CODE LIKE '" & dxTextEdit1(2) & "%" & "'"
         End If
      Else
         If dxPickEdit1(8) = "ARASI" Then
            StoksTr = " AND LG_" & GFirma & "_CLCARD.CODE >= '" & dxTextEdit1(2) & "' and LG_" & GFirma & "_CLCARD.CODE <= '" & dxTextEdit1(3) & "'"
         End If
      End If
   End If

    CnnMlMain.Execute "drop view BORCALC"
    CnnMlMain.Execute "drop view BAK"
    CnnMlMain.Execute "drop view BAK1"
    CnnMlMain.Execute "CREATE VIEW BORCALC WITH ENCRYPTION AS SELECT LG_" & GFirma & "_CLCARD.CODE, LG_" & GFirma & "_CLCARD.DEFINITION_, LG_" & GFirma & "_" & GDonem & "_CLFLINE.DATE_, LG_" & GFirma & "_" & GDonem & "_CLFLINE.SIGN,SUM(LG_" & GFirma & "_" & GDonem & "_CLFLINE.AMOUNT) As Expr1 FROM LG_" & GFirma & "_" & GDonem & "_CLFLINE INNER JOIN LG_" & GFirma & "_CLCARD ON LG_" & GFirma & "_" & GDonem & "_CLFLINE.CLIENTREF = LG_" & GFirma & "_CLCARD.LOGICALREF  " & TarihsTr & OzelsTr & YetkisTr & GrupsTr & IlcesTr & StoksTr & " GROUP BY LG_" & GFirma & "_CLCARD.CODE, LG_" & GFirma & "_CLCARD.DEFINITION_, LG_" & GFirma & "_" & GDonem & "_CLFLINE.DATE_, LG_" & GFirma & "_" & GDonem & "_CLFLINE.SIGN"
    CnnMlMain.Execute "CREATE VIEW BAK WITH ENCRYPTION AS SELECT CODE, DEFINITION_,SIGN,  [BORC] =CASE SIGN WHEN 0 THEN SUM(Expr1)ELSE 0 END,[ALACAK] =CASE SIGN WHEN 1 THEN SUM(Expr1) ELSE 0 END From BORCALC GROUP BY CODE, DEFINITION_,SIGN "
    CnnMlMain.Execute "CREATE VIEW BAK1 WITH ENCRYPTION AS SELECT CODE, DEFINITION_, SUM(BORC) AS Expr1, SUM(ALACAK) AS Expr2 From BAK GROUP BY CODE, DEFINITION_"
Exit Sub
hata:
'MsgBox Err.Number & Err.Description
   Resume Next
   Exit Sub
End Sub
Sub SGenelTah()
On Error GoTo hata
If Len(dxPickEdit1(4).DisplayText) = 0 Then OzelsTr = "" Else OzelsTr = " AND LG_" & GFirma & "_CLCARD.SPECODE = '" & Trim(dxPickEdit1(4)) & "'"
If Len(dxPickEdit1(6).DisplayText) = 0 Then YetkisTr = "" Else YetkisTr = " and LG_" & GFirma & "_CLCARD.CYPHCODE = '" & Trim(dxPickEdit1(6)) & "'"
If Len(dxPickEdit1(7).DisplayText) = 0 Then GrupsTr = "" Else GrupsTr = " and LG_" & GFirma & "_CLCARD.CITY = '" & Trim(dxPickEdit1(7)) & "'"
If Len(dxPickEdit1(9).DisplayText) = 0 Then IlcesTr = "" Else IlcesTr = " and LG_" & GFirma & "_CLCARD.TOWN = '" & Trim(dxPickEdit1(9)) & "'"
'RAPORA ETKIME BAÞLIYOR
   If Len(dxPickEdit1(8).DisplayText) = 0 Then
      StoksTr = ""
   Else
      If dxTextEdit1(3).Visible = False Then
         If dxPickEdit1(8) = "EÞÝT" Then
         JJ = dxPickEdit1(8)
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoksTr = "" Else StoksTr = " and LG_" & GFirma & "_CLCARD.CODE = '" & dxTextEdit1(2) & "'"
         Else
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoksTr = "" Else StoksTr = " AND LG_" & GFirma & "_CLCARD.CODE LIKE '" & dxTextEdit1(2) & "%" & "'"
         End If
      Else
         If dxPickEdit1(8) = "ARASI" Then
            StoksTr = " AND LG_" & GFirma & "_CLCARD.CODE >= '" & dxTextEdit1(2) & "' and LG_" & GFirma & "_CLCARD.CODE <= '" & dxTextEdit1(3) & "'"
         End If
      End If
   End If
    
    CnnMlMain.Execute "drop view YASLANDIRMA"
    CnnMlMain.Execute "CREATE VIEW YASLANDIRMA WITH ENCRYPTION AS SELECT LOGICALREF,CODE, DEFINITION_, ISNULL ((SELECT SUM(TOTAL) From LG_" & GFirma & "_" & GDonem & "_PAYTRANS WHERE CARDREF = LG_" & GFirma & "_CLCARD.LOGICALREF AND SIGN = 0), 0) - ISNULL " _
    & " ((SELECT     SUM(TOTAL) From LG_" & GFirma & "_" & GDonem & "_PAYTRANS WHERE CARDREF = LG_" & GFirma & "_CLCARD.LOGICALREF AND SIGN = 1), 0) AS BAKIYE, ISNULL ((SELECT SUM(TOTAL) " _
    & " From LG_" & GFirma & "_" & GDonem & "_PAYTRANS WHERE CARDREF = LG_" & GFirma & "_CLCARD.LOGICALREF AND PAID = 0 AND DATE_ < GETDATE() AND SIGN = 0), 0) AS [Geçiken Tutar], ISNULL " _
    & " ((SELECT AVG(CAST(GETDATE() AS DECIMAL(8, 0)) - CAST(DATE_ AS DECIMAL(8, 0))-1) From LG_" & GFirma & "_" & GDonem & "_PAYTRANS WHERE CARDREF = LG_" & GFirma & "_CLCARD.LOGICALREF " _
    & " AND PAID = 0 AND DATE_ < GETDATE() AND SIGN = 0), 0) AS [Geçikme Günü], ISNULL ((SELECT SUM(TOTAL) From LG_" & GFirma & "_" & GDonem & "_PAYTRANS " _
    & " WHERE CARDREF = LG_" & GFirma & "_CLCARD.LOGICALREF AND PAID = 0 AND DATE_ >= GETDATE() AND DATE_ < (GETDATE() + (7 - DATEPART(DW, GETDATE()))) AND SIGN = 0), 0) AS [Bu Hafta Tahsilat] FROM LG_" & GFirma & "_CLCARD  WHERE LG_" & GFirma & "_CLCARD.LOGICALREF<>0 " & OzelsTr & YetkisTr & GrupsTr & IlcesTr & StoksTr & ""
    
Exit Sub
hata:
MsgBox Err.Number & Err.Description
   Resume Next
   Exit Sub
End Sub
Sub SNotCari()
On Error GoTo hata

If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/05" Else ilktarih = dxDateEdit1
If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "31/12/05" Else sontarih = dxDateEdit2
TarihsTr = " where LG_" & GFirma & "_" & GDonem & "_CLFLINE.DATE_ >= '" & Format(ilktarih, "MM/DD/YY") & "' AND LG_" & GFirma & "_" & GDonem & "_CLFLINE.DATE_ <= '" & Format(sontarih, "MM/DD/YY") & "' "

If Len(dxPickEdit1(4).DisplayText) = 0 Then OzelsTr = "" Else OzelsTr = " AND LG_" & GFirma & "_CLCARD.SPECODE = '" & Trim(dxPickEdit1(4)) & "'"
If Len(dxPickEdit1(6).DisplayText) = 0 Then YetkisTr = "" Else YetkisTr = " and LG_" & GFirma & "_CLCARD.CYPHCODE = '" & Trim(dxPickEdit1(6)) & "'"
If Len(dxPickEdit1(7).DisplayText) = 0 Then GrupsTr = "" Else GrupsTr = " and LG_" & GFirma & "_CLCARD.CITY = '" & Trim(dxPickEdit1(7)) & "'"
If Len(dxPickEdit1(9).DisplayText) = 0 Then IlcesTr = "" Else IlcesTr = " and LG_" & GFirma & "_CLCARD.TOWN = '" & Trim(dxPickEdit1(9)) & "'"
'RAPORA ETKIME BAÞLIYOR
   If Len(dxPickEdit1(8).DisplayText) = 0 Then
      StoksTr = ""
   Else
      If dxTextEdit1(3).Visible = False Then
         If dxPickEdit1(8) = "EÞÝT" Then
         JJ = dxPickEdit1(8)
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoksTr = "" Else StoksTr = " and LG_" & GFirma & "_CLCARD.CODE = '" & dxTextEdit1(2) & "'"
         Else
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoksTr = "" Else StoksTr = " AND LG_" & GFirma & "_CLCARD.CODE LIKE '" & dxTextEdit1(2) & "%" & "'"
         End If
      Else
         If dxPickEdit1(8) = "ARASI" Then
            StoksTr = " AND LG_" & GFirma & "_CLCARD.CODE >= '" & dxTextEdit1(2) & "' and LG_" & GFirma & "_CLCARD.CODE <= '" & dxTextEdit1(3) & "'"
         End If
      End If
   End If
    
    CnnMlMain.Execute "drop view MenaNotCari"
    CnnMlMain.Execute "drop view MenaNotCari1"
    CnnMlMain.Execute "CREATE VIEW MenaNotCari1 WITH ENCRYPTION AS SELECT LOGICALREF,CLIENTREF From LG_" & GFirma & "_" & GDonem & "_CLFLINE " & TarihsTr & ""
    CnnMlMain.Execute "CREATE VIEW MenaNotCari WITH ENCRYPTION AS SELECT LG_" & GFirma & "_CLCARD.CODE, LG_" & GFirma & "_CLCARD.DEFINITION_,LG_" & GFirma & "_CLCARD.CITY,LG_" & GFirma & "_CLCARD.TELNRS1, MenaNotCari1.LOGICALREF FROM LG_" & GFirma & "_CLCARD LEFT OUTER JOIN MenaNotCari1 ON " _
    & " LG_" & GFirma & "_CLCARD.LOGICALREF = MenaNotCari1.CLIENTREF Where (MenaNotCari1.LOGICALREF Is Null) " & OzelsTr & YetkisTr & GrupsTr & IlcesTr & StoksTr & ""
Exit Sub
hata:
MsgBox Err.Number & Err.Description
   Resume Next
   Exit Sub
End Sub
Sub SNotStok()
On Error GoTo hata

If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/05" Else ilktarih = dxDateEdit1
If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "31/12/05" Else sontarih = dxDateEdit2
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
    & " LG_" & GFirma & "_ITEMS.LOGICALREF = MenaNotStok1.STOCKREF Where (MenaNotStok1.LOGICALREF Is Null) " & SOzelsTr & SYetkisTr & SGrupsTr & SUretsTr & SIsosTr & StoksTr & ""
Exit Sub
hata:
MsgBox Err.Number & Err.Description
   Resume Next
   Exit Sub
End Sub

Sub SMizan()
On Error GoTo hata
If Len(dxPickEdit1(0).DisplayText) = 0 Then OzelsTr = "" Else OzelsTr = " AND LG_" & GFirma & "_EMUHACC.SPECODE = '" & Trim(dxPickEdit1(0)) & "'"
If Len(dxPickEdit1(1).DisplayText) = 0 Then YetkisTr = "" Else YetkisTr = " and LG_" & GFirma & "_EMUHACC.CYPHCODE = '" & Trim(dxPickEdit1(1)) & "'"
'RAPORA ETKIME BAÞLIYOR
   If Len(dxPickEdit1(3).DisplayText) = 0 Then
      StoksTr = ""
   Else
      If dxTextEdit1(1).Visible = False Then
         If dxPickEdit1(3) = "EÞÝT" Then
         JJ = dxPickEdit1(3)
            If Len(dxTextEdit1(0).DisplayText) = 0 Then StoksTr = "" Else StoksTr = " and LG_" & GFirma & "_EMUHACC.CODE = '" & dxTextEdit1(0) & "'"
         Else
            If Len(dxTextEdit1(0).DisplayText) = 0 Then StoksTr = "" Else StoksTr = " AND LG_" & GFirma & "_EMUHACC.CODE LIKE '" & dxTextEdit1(0) & "%" & "'"
         End If
      Else
         If dxPickEdit1(3) = "ARASI" Then
            StoksTr = " AND LG_" & GFirma & "_EMUHACC.CODE >= '" & dxTextEdit1(0) & "' and LG_" & GFirma & "_EMUHACC.CODE <= '" & dxTextEdit1(0) & "'"
         End If
      End If
   End If
    CnnMlMain.Execute "drop view MenaGMizan"
    CnnMlMain.Execute "CREATE VIEW MenaGMizan WITH ENCRYPTION AS SELECT LG_" & GFirma & "_EMUHACC.CODE AS HESAPKODU, LG_" & GFirma & "_EMUHACC.DEFINITION_ AS ACIKLAMA, SUM(B.DEBIT) AS BORC, SUM(B.CREDIT) AS ALACAK, SUM(B.DEBITREM) AS " _
    & " BORCBAKIYE,SUM(B.CREDITREM) AS ALACAKBAKIYE, SUM(B.DEBIT) - SUM(B.CREDIT) AS BAKIYE FROM LG_" & GFirma & "_" & GDonem & "_EMUHTOT B INNER JOIN LG_001_EMUHACC LG_" & GFirma & "_EMUHACC ON B.ACCOUNTREF = LG_" & GFirma & "_EMUHACC.LOGICALREF Where (B.TOTTYPE = 1) " & OzelsTr & YetkisTr & StoksTr & " GROUP BY LG_" & GFirma & "_EMUHACC.CODE,LG_" & GFirma & "_EMUHACC.DEFINITION_ "
    
Exit Sub
hata:
MsgBox Err.Number & Err.Description
   Resume Next
   Exit Sub
End Sub
Sub SMahsupFat()
On Error GoTo hata
If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/05" Else ilktarih = dxDateEdit1
If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "31/12/05" Else sontarih = dxDateEdit2
TarihsTr = " where LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ >= '" & Format(ilktarih, "MM/DD/YY") & "' AND LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ <= '" & Format(sontarih, "MM/DD/YY") & "' "
    
    CnnMlMain.Execute "drop view MenaMahsupFat"
    CnnMlMain.Execute "CREATE VIEW MenaMahsupFat WITH ENCRYPTION AS SELECT LG_" & GFirma & "_" & GDonem & "_EMFICHE.FICHENO, LG_" & GFirma & "_" & GDonem & "_EMFICHE.TOTALACTIVE, LG_" & GFirma & "_" & GDonem & "_EMFICHE.TOTALPASSIVE, SUM(LG_" & GFirma & "_" & GDonem & "_INVOICE.NETTOTAL) AS NET, LG_" & GFirma & "_" & GDonem & "_INVOICE.TRCODE, LG_" & GFirma & "_" & GDonem & "_INVOICE.FICHENO AS INVOICE, LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ " _
    & " FROM LG_" & GFirma & "_" & GDonem & "_INVOICE LEFT OUTER JOIN LG_" & GFirma & "_" & GDonem & "_EMFICHE ON LG_" & GFirma & "_" & GDonem & "_INVOICE.ACCFICHEREF = LG_" & GFirma & "_" & GDonem & "_EMFICHE.LOGICALREF " & TarihsTr & " GROUP BY LG_" & GFirma & "_" & GDonem & "_EMFICHE.FICHENO, LG_" & GFirma & "_" & GDonem & "_EMFICHE.TOTALACTIVE, LG_" & GFirma & "_" & GDonem & "_EMFICHE.TOTALPASSIVE, " _
    & " LG_" & GFirma & "_" & GDonem & "_INVOICE.trcode , LG_" & GFirma & "_" & GDonem & "_INVOICE.FICHENO, LG_" & GFirma & "_" & GDonem & "_INVOICE.DATE_ "
    
Exit Sub
hata:
MsgBox Err.Number & Err.Description
   Resume Next
   Exit Sub
End Sub

Sub SGenelOdemeHareket()
On Error GoTo hata

If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/05" Else ilktarih = dxDateEdit1
If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "31/12/05" Else sontarih = dxDateEdit2
TarihsTr = " and LG_" & GFirma & "_" & GDonem & "_PAYTRANS.DATE_ >= '" & Format(ilktarih, "MM/DD/YY") & "' and LG_" & GFirma & "_" & GDonem & "_PAYTRANS.DATE_ <= '" & Format(sontarih, "MM/DD/YY") & "'"

If Len(dxPickEdit1(4).DisplayText) = 0 Then OzelsTr = "" Else OzelsTr = " AND LG_" & GFirma & "_CLCARD.SPECODE = '" & Trim(dxPickEdit1(4)) & "'"
If Len(dxPickEdit1(6).DisplayText) = 0 Then YetkisTr = "" Else YetkisTr = " and LG_" & GFirma & "_CLCARD.CYPHCODE = '" & Trim(dxPickEdit1(6)) & "'"
If Len(dxPickEdit1(7).DisplayText) = 0 Then GrupsTr = "" Else GrupsTr = " and LG_" & GFirma & "_CLCARD.CITY = '" & Trim(dxPickEdit1(7)) & "'"
If Len(dxPickEdit1(9).DisplayText) = 0 Then IlcesTr = "" Else IlcesTr = " and LG_" & GFirma & "_CLCARD.TOWN = '" & Trim(dxPickEdit1(9)) & "'"
'RAPORA ETKIME BAÞLIYOR
   If Len(dxPickEdit1(8).DisplayText) = 0 Then
      StoksTr = ""
   Else
      If dxTextEdit1(3).Visible = False Then
         If dxPickEdit1(8) = "EÞÝT" Then
         JJ = dxPickEdit1(8)
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoksTr = "" Else StoksTr = " and LG_" & GFirma & "_CLCARD.CODE = '" & dxTextEdit1(2) & "'"
         Else
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoksTr = "" Else StoksTr = " AND LG_" & GFirma & "_CLCARD.CODE LIKE '" & dxTextEdit1(2) & "%" & "'"
         End If
      Else
         If dxPickEdit1(8) = "ARASI" Then
            StoksTr = " AND LG_" & GFirma & "_CLCARD.CODE >= '" & dxTextEdit1(2) & "' and LG_" & GFirma & "_CLCARD.CODE <= '" & dxTextEdit1(3) & "'"
         End If
      End If
   End If
    
    CnnMlMain.Execute "drop view TOPODEME"
  
    CnnMlMain.Execute "CREATE VIEW TOPODEME WITH ENCRYPTION AS SELECT LG_" & GFirma & "_CLCARD.CODE AS [Hesap Kodu], LG_" & GFirma & "_CLCARD.DEFINITION_ AS [Hesap Adi],[TURU] = CASE LG_" & GFirma & "_" & GDonem & "_PAYTRANS.MODULENR WHEN 4 THEN 'FATURA' WHEN 5 THEN 'CARI' WHEN 6 THEN 'CEK' WHEN 7 THEN 'BANKA' WHEN 10 THEN 'KASA' END, [B/A] = CASE LG_" & GFirma & "_" & GDonem & "_PAYTRANS.SIGN WHEN 0 THEN 'TAHSILAT' WHEN 1 THEN 'ODEME' END, " _
    & " (CASE WHEN LG_" & GFirma & "_" & GDonem & "_PAYTRANS.MODULENR = 4 THEN (SELECT FICHENO From LG_" & GFirma & "_" & GDonem & "_INVOICE WHERE LG_" & GFirma & "_" & GDonem & "_INVOICE.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_PAYTRANS.FICHEREF) WHEN LG_" & GFirma & "_" & GDonem & "_PAYTRANS.MODULENR = 7 THEN (SELECT TRANNO From LG_" & GFirma & "_" & GDonem & "_BNFLINE WHERE LG_" & GFirma & "_" & GDonem & "_BNFLINE.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_PAYTRANS.FICHEREF) WHEN LG_" & GFirma & "_" & GDonem & "_PAYTRANS.MODULENR = 10 THEN " _
    & " (SELECT FICHENO From LG_" & GFirma & "_" & GDonem & "_KSLINES WHERE LG_" & GFirma & "_" & GDonem & "_KSLINES.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_PAYTRANS.FICHEREF) WHEN LG_" & GFirma & "_" & GDonem & "_PAYTRANS.MODULENR = 6 THEN (SELECT PORTFOYNO FROM LG_" & GFirma & "_" & GDonem & "_CSTRANS CSTRANS, LG_" & GFirma & "_" & GDonem & "_CSCARD CSCARD WHERE CSTRANS.CSREF = CSCARD.LOGICALREF AND CSTRANS.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_PAYTRANS.FICHELINEREF) " _
    & " WHEN LG_" & GFirma & "_" & GDonem & "_PAYTRANS.MODULENR IN (5, 61, 62) THEN (SELECT TRANNO From LG_" & GFirma & "_" & GDonem & "_CLFLINE WHERE LG_" & GFirma & "_" & GDonem & "_CLFLINE.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_PAYTRANS.FICHEREF) ELSE '0' END) AS [Fis No],LG_" & GFirma & "_" & GDonem & "_PAYTRANS.DATE_ AS [Vade Tarihi], LG_" & GFirma & "_" & GDonem & "_PAYTRANS.PROCDATE AS [Islem Tarihi], TOPLAM = SUM(LG_" & GFirma & "_" & GDonem & "_PAYTRANS.TOTAL), " _
    & " ODENEN = Sum(LG_" & GFirma & "_" & GDonem & "_PAYTRANS.PAID) FROM LG_" & GFirma & "_" & GDonem & "_PAYTRANS LEFT OUTER JOIN LG_" & GFirma & "_CLCARD ON LG_" & GFirma & "_" & GDonem & "_PAYTRANS.CARDREF = LG_" & GFirma & "_CLCARD.LOGICALREF WHERE (LG_" & GFirma & "_" & GDonem & "_PAYTRANS.CARDREF = LG_" & GFirma & "_CLCARD.LOGICALREF) AND LG_" & GFirma & "_" & GDonem & "_PAYTRANS.PAIDINCASH = 0 AND LG_" & GFirma & "_" & GDonem & "_PAYTRANS.SIGN IN (0, 1) " & TarihsTr & OzelsTr & YetkisTr & GrupsTr & IlcesTr & StoksTr & " GROUP BY LG_" & GFirma & "_CLCARD.CODE, " _
    & " LG_" & GFirma & "_CLCARD.DEFINITION_, LG_" & GFirma & "_" & GDonem & "_PAYTRANS.FICHEREF, LG_" & GFirma & "_" & GDonem & "_PAYTRANS.MODULENR,LG_" & GFirma & "_" & GDonem & "_PAYTRANS.FICHELINEREF , LG_" & GFirma & "_" & GDonem & "_PAYTRANS.DATE_, LG_" & GFirma & "_" & GDonem & "_PAYTRANS.SIGN, LG_" & GFirma & "_" & GDonem & "_PAYTRANS.PROCDATE"
    
Exit Sub
hata:
MsgBox Err.Number & Err.Description
   Resume Next
   Exit Sub
End Sub

Sub SKASA()
On Error GoTo hata
kASA_Ara
If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/05" Else ilktarih = dxDateEdit1
If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "31/12/05" Else sontarih = dxDateEdit2

If Len(dxPickEdit1(0).DisplayText) = 0 Then OzelsTr = "" Else OzelsTr = " and LG_" & GFirma & "_EMUHACC.speCODE = '" & dxPickEdit1(0) & "'"
If Len(dxPickEdit1(1).DisplayText) = 0 Then YetkisTr = "" Else YetkisTr = " AND LG_" & GFirma & "_EMUHACC.CYPHCODE = '" & dxPickEdit1(1) & "'"
If Len(dxPickEdit1(2).DisplayText) = 0 Then GrupsTr = "" Else GrupsTr = " and LG_" & GFirma & "_EMUHACC.GROUPCODE = '" & dxPickEdit1(2) & "'"


'RAPORA ETKIME BAÞLIYOR
TarihsTr = " where LG_" & GFirma & "_" & GDonem & "_KSLINES.DATE_ >= '" & Format(ilktarih, "MM/DD/YY") & "' AND LG_" & GFirma & "_" & GDonem & "_KSLINES.DATE_ <= '" & Format(sontarih, "MM/DD/YY") & "' "
KASA = " AND LG_" & GFirma & "_KSCARD.CODE IN " & KasaSrg
   If Len(dxPickEdit1(3).DisplayText) = 0 Then
      StoksTr = ""
   Else
      If dxTextEdit1(1).Visible = False Then
         If dxPickEdit1(3) = "EÞÝT" Then
            If Len(dxTextEdit1(0).DisplayText) = 0 Then StoksTr = "" Else StoksTr = " and LG_" & GFirma & "_EMUHACC.CODE = '" & dxTextEdit1(0) & "'"
         Else
            If Len(dxTextEdit1(0).DisplayText) = 0 Then StoksTr = "" Else StoksTr = " AND LG_" & GFirma & "_EMUHACC.CODE LIKE '" & dxTextEdit1(0) & "%" & "'"
         End If
      Else
         If dxPickEdit1(3) = "ARASI" Then
            StoksTr = " AND LG_" & GFirma & "_EMUHACC.CODE >= '" & dxTextEdit1(0) & "' and LG_" & GFirma & "_EMUHACC.CODE <= '" & dxTextEdit1(1) & "'"
         End If
      End If
   End If

   CnnMlMain.Execute "drop view MASRAF"
   
   CnnMlMain.Execute "CREATE VIEW MASRAF WITH ENCRYPTION AS SELECT LG_" & GFirma & "_" & GDonem & "_KSLINES.DATE_ AS TARIH, LG_" & GFirma & "_EMUHACC.CODE AS MUKOD, LG_" & GFirma & "_EMUHACC.DEFINITION_ AS MUAC,LG_" & GFirma & "_EMUHACC_1.CODE AS KASAMUKOD, LG_" & GFirma & "_EMUHACC_1.DEFINITION_ AS KASAMUAC, LG_" & GFirma & "_CRDACREF.TRCODE AS TIPI,LG_" & GFirma & "_" & GDonem & "_KSLINES.AMOUNT AS TUTAT, LG_" & GFirma & "_" & GDonem & "_KSLINES.SIGN AS [B/A], LG_" & GFirma & "_" & GDonem & "_KSLINES.TRCODE,LG_" & GFirma & "_" & GDonem & "_KSLINES.LINEEXP AS ACIKLAMA " _
   & " FROM LG_" & GFirma & "_" & GDonem & "_KSLINES INNER JOIN LG_" & GFirma & "_EMUHACC ON LG_" & GFirma & "_" & GDonem & "_KSLINES.ACCREF = LG_" & GFirma & "_EMUHACC.LOGICALREF INNER JOIN LG_" & GFirma & "_KSCARD ON LG_" & GFirma & "_" & GDonem & "_KSLINES.CARDREF = LG_" & GFirma & "_KSCARD.LOGICALREF INNER JOIN LG_" & GFirma & "_CRDACREF ON LG_" & GFirma & "_KSCARD.LOGICALREF = LG_" & GFirma & "_CRDACREF.CARDREF INNER JOIN LG_" & GFirma & "_EMUHACC LG_" & GFirma & "_EMUHACC_1 ON LG_" & GFirma & "_CRDACREF.ACCOUNTREF = LG_" & GFirma & "_EMUHACC_1.LOGICALREF" _
   & TarihsTr & KASA & OzelsTr & YetkisTr & GrupsTr & StoksTr
   
   Exit Sub
hata:
'MsgBox Err.Number & Err.Description
   Resume Next
   Exit Sub
End Sub

Sub SCari31()
On Error GoTo hata

If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/05" Else ilktarih = dxDateEdit1
If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "31/12/05" Else sontarih = dxDateEdit2

If Len(dxPickEdit1(4).DisplayText) = 0 Then OzelsTr = "" Else OzelsTr = " and LG_" & GFirma & "_CLCARD.SPECODE = '" & Trim(dxPickEdit1(4)) & "'"
If Len(dxPickEdit1(6).DisplayText) = 0 Then YetkisTr = "" Else YetkisTr = " and LG_" & GFirma & "_CLCARD.CYPHCODE = '" & Trim(dxPickEdit1(6)) & "'"
If Len(dxPickEdit1(7).DisplayText) = 0 Then GrupsTr = "" Else GrupsTr = " and LG_" & GFirma & "_CLCARD.CITY = '" & Trim(dxPickEdit1(7)) & "'"
If Len(dxPickEdit1(9).DisplayText) = 0 Then IlcesTr = "" Else IlcesTr = " and LG_" & GFirma & "_CLCARD.TOWN = '" & Trim(dxPickEdit1(9)) & "'"


'RAPORA ETKIME BAÞLIYOR
TarihsTr = " WHERE LG_" & GFirma & "_" & GDonem & "_CLFLINE.DATE_ >= '" & Format(ilktarih, "MM/DD/YY") & "' AND LG_" & GFirma & "_" & GDonem & "_CLFLINE.DATE_ <= '" & Format(sontarih, "MM/DD/YY") & "' "
   If Len(dxPickEdit1(8).DisplayText) = 0 Then
      StoksTr = ""
   Else
      If dxTextEdit1(3).Visible = False Then
         If dxPickEdit1(8) = "EÞÝT" Then
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoksTr = "" Else StoksTr = " and LG_" & GFirma & "_CLCARD.CODE = '" & dxTextEdit1(2) & "'"
         Else
            If Len(dxTextEdit1(2).DisplayText) = 0 Then StoksTr = "" Else StoksTr = " AND LG_" & GFirma & "_CLCARD.CODE LIKE '" & dxTextEdit1(2) & "%" & "'"
         End If
      Else
         If dxPickEdit1(8) = "ARASI" Then
            StoksTr = " AND LG_" & GFirma & "_CLCARD.CODE >= '" & dxTextEdit1(2) & "' and LG_" & GFirma & "_CLCARD.CODE <= '" & dxTextEdit1(3) & "'"
         End If
      End If
   End If
If Len(dxPickEdit1(5).DisplayText) = 0 Then SDuruMu = "" Else SDuruMu = " and LG_" & GFirma & "_CLCARD.ACTIVE = " & Val(dxPickEdit1(5).DisplayText)

CnnMlMain.Execute "drop view CARIHAR"

CnnMlMain.Execute "CREATE VIEW CARIHAR WITH ENCRYPTION AS SELECT LG_" & GFirma & "_CLCARD.CODE, LG_" & GFirma & "_CLCARD.DEFINITION_, LG_" & GFirma & "_CLCARD.SPECODE , LG_" & GFirma & "_CLCARD.CYPHCODE , LG_" & GFirma & "_CLCARD.CITY, LG_" & GFirma & "_" & GDonem & "_CLFLINE.DATE_, LG_" & GFirma & "_" & GDonem & "_CLFLINE.MODULENR,LG_" & GFirma & "_" & GDonem & "_CLFLINE.TRCODE, LG_" & GFirma & "_" & GDonem & "_CLFLINE.TRANNO, LG_" & GFirma & "_" & GDonem & "_CLFLINE.LINEEXP, LG_" & GFirma & "_" & GDonem & "_CLFLINE.SIGN,LG_" & GFirma & "_" & GDonem & "_CLFLINE.AMOUNT " _
& "FROM LG_" & GFirma & "_" & GDonem & "_CLFLINE INNER JOIN LG_" & GFirma & "_CLCARD ON LG_" & GFirma & "_" & GDonem & "_CLFLINE.CLIENTREF = LG_" & GFirma & "_CLCARD.LOGICALREF " & TarihsTr & OzelsTr & YetkisTr & GrupsTr & IlcesTr & StoksTr & SDuruMu

Exit Sub

hata:
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
         alp = List1.List(i)
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
         alp = List1.List(i)
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
         alp = List1.List(i)
         If say = 0 Then AlpSrg = "'" & List1.List(i) & "'" Else AlpSrg = AlpSrg & " ," & "'" & List1.List(i) & "'"
         say = say + 1
      End If
   Next i
If AlpSrg = "" Then ElemanSrg = "" Else ElemanSrg = "(" & AlpSrg & ")"
End Sub

Sub SRGEnvante()
On Error GoTo hata

If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/05" Else ilktarih = dxDateEdit1
If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "31/12/05" Else sontarih = dxDateEdit2

DUZENLE:

Set RsEtG = New Recordset
RsEtG.Open "select * from AAW where logicalref=1 ", CnnMlMain, adOpenDynamic, adLockOptimistic
RsEtG.Fields(1) = ilktarih 'Format(ilktarih, "MM/DD/YY")
RsEtG.Fields(2) = sontarih 'Format(sontarih, "MM/DD/YY")
RsEtG.UpdateBatch
RsEtG.Close
Exit Sub
hata:
  If Err.Number = -2147217865 Then
    CnnMlMain.Execute "create table AAW (Logicalref INTEGER,Tarih1 datetime ,Tarih2 datetime,Tarih3 datetime,Tarih4 datetime)"
    CnnMlMain.Execute "insert into AAW (Logicalref) VALUES (1)"
    GoTo DUZENLE
  End If
End Sub
Sub SRGEnvanter()
On Error GoTo hata
Dim SDuruMu As String
Ambar_Ara
If Len(dxPickEdit1(0).DisplayText) = 0 Then OzelsTr = "" Else OzelsTr = " and LG_" & GFirma & "_ITEMS.SPECODE = '" & Trim(dxPickEdit1(0)) & "'"
If Len(dxPickEdit1(1).DisplayText) = 0 Then YetkisTr = "" Else YetkisTr = " and LG_" & GFirma & "_ITEMS.CYPHCODE = '" & Trim(dxPickEdit1(1)) & "'"
If Len(dxPickEdit1(2).DisplayText) = 0 Then GrupsTr = "" Else GrupsTr = " and LG_" & GFirma & "_ITEMS.STGRPCODE = '" & Trim(dxPickEdit1(2)) & "'"
If Len(dxPickEdit1(5).DisplayText) = 0 Then UretsTr = "" Else UretsTr = " and LG_" & GFirma & "_ITEMS.PRODCOUNTRY = '" & Trim(dxPickEdit1(5)) & "'"
If Len(dxPickEdit1(10).DisplayText) = 0 Then IsosTr = "" Else IsosTr = " and LG_" & GFirma & "_ITEMS.ISONR = '" & Trim(dxPickEdit1(10)) & "'"

If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/05" Else ilktarih = dxDateEdit1
If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "31/12/05" Else sontarih = dxDateEdit2
TarihsTr = " and LG_" & GFirma & "_" & GDonem & "_STINVTOT.DATE_ <= '" & Format(sontarih, "MM/DD/YY") & "'"
DUZENLE:
If Len(dxPickEdit1(5).DisplayText) = 0 Then SDuruMu = "" Else SDuruMu = " and LG_" & GFirma & "_ITEMS.ACTIVE = " & Val(dxPickEdit1(5).DisplayText)

'RAPORA ETKIME BAÞLIYOR
   If Len(dxPickEdit1(3).DisplayText) = 0 Then
      StoksTr = ""
   Else
      If dxTextEdit1(1).Visible = False Then
         If dxPickEdit1(3) = "EÞÝT" Then
            If Len(dxTextEdit1(0).DisplayText) = 0 Then StoksTr = "" Else StoksTr = " and LG_" & GFirma & "_ITEMS.CODE = '" & dxTextEdit1(0) & "'"
         Else
            If Len(dxTextEdit1(0).DisplayText) = 0 Then StoksTr = "" Else StoksTr = " AND LG_" & GFirma & "_ITEMS.CODE LIKE '" & dxTextEdit1(0) & "%" & "'"
         End If
      Else
         If dxPickEdit1(3) = "ARASI" Then
            StoksTr = " AND LG_" & GFirma & "_ITEMS.CODE >= '" & dxTextEdit1(0) & "' and LG_" & GFirma & "_ITEMS.CODE <= '" & dxTextEdit1(1) & "'"
         End If
      End If
   End If


sqlstr2 = "SELECT LG_" & GFirma & "_ITEMS.CARDTYPE, LG_" & GFirma & "_ITEMS.CODE, LG_" & GFirma & "_ITEMS.NAME, LG_" & GFirma & "_ITEMS.STGRPCODE, LG_" & GFirma & "_ITEMS.PRODUCERCODE, LG_" & GFirma & "_ITEMS.SPECODE, LG_" & GFirma & "_ITEMS.CYPHCODE, LG_" & GFirma & "_" & GDonem & "_STINVTOT.INVENNO, LG_" & GFirma & "_" & GDonem & "_STINVTOT.DATE_, LG_" & GFirma & "_" & GDonem & "_STINVTOT.TRANSFERRED, LG_" & GFirma & "_" & GDonem & "_STINVTOT.PURAMNT, LG_" & GFirma & "_" & GDonem & "_STINVTOT.PURCASH, LG_" & GFirma & "_" & GDonem & "_STINVTOT.SALAMNT, LG_" & GFirma & "_" & GDonem & "_STINVTOT.SALCASH," _
& " LG_" & GFirma & "_" & GDonem & "_STINVTOT.ONHAND, LG_" & GFirma & "_" & GDonem & "_STINVTOT.ACTWHOUSEIN, LG_" & GFirma & "_" & GDonem & "_STINVTOT.ACTWHOUSEOUT, LG_" & GFirma & "_" & GDonem & "_STINVTOT.AVGVALUE, LG_" & GFirma & "_" & GDonem & "_STINVTOT.STOCKREF, AAW.Tarih1, AAW.Tarih2, AAW.Tarih3, AAW.Tarih4, LG_" & GFirma & "_" & GDonem & "_GNTOTST.INVENNO AS Expr1, LG_" & GFirma & "_" & GDonem & "_GNTOTST.AVGVALUE AS GerOrt,LG_" & GFirma & "_ITEMS.PRODCOUNTRY ,LG_" & GFirma & "_ITEMS.ISONR " _
& "FROM LG_" & GFirma & "_ITEMS INNER JOIN LG_" & GFirma & "_" & GDonem & "_STINVTOT ON LG_" & GFirma & "_ITEMS.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_STINVTOT.STOCKREF INNER JOIN LG_" & GFirma & "_" & GDonem & "_GNTOTST ON LG_" & GFirma & "_ITEMS.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_GNTOTST.STOCKREF CROSS JOIN AAW " _
& "WHERE (LG_" & GFirma & "_" & GDonem & "_STINVTOT.INVENNO IN " & AmbarSrg & ") AND (AAW.Logicalref = 1) AND (LG_" & GFirma & "_" & GDonem & "_GNTOTST.INVENNO = - 1)"

devam:
CnnMlMain.Execute "CREATE VIEW ASRGMental_Env WITH ENCRYPTION AS " & sqlstr2 & TarihsTr & SDuruMu & StoksTr & OzelsTr & YetkisTr & GrupsTr & UretsTr & IsosTr

Exit Sub
hata:
If Err.Number = -2147217900 Then
   CnnMlMain.Execute "drop view ASRGMental_Env"
   GoTo DUZENLE
Else
   MsgBox Err.Number & Err.Description
End If

End Sub
Sub SRGEnvanter2()
On Error GoTo hata
Dim SDuruMu As String
Ambar_Ara
If Len(dxPickEdit1(0).DisplayText) = 0 Then OzelsTr = "" Else OzelsTr = " and LG_" & GFirma & "_ITEMS.SPECODE = '" & Trim(dxPickEdit1(0)) & "'"
If Len(dxPickEdit1(1).DisplayText) = 0 Then YetkisTr = "" Else YetkisTr = " and LG_" & GFirma & "_ITEMS.CYPHCODE = '" & Trim(dxPickEdit1(1)) & "'"
If Len(dxPickEdit1(2).DisplayText) = 0 Then GrupsTr = "" Else GrupsTr = " and LG_" & GFirma & "_ITEMS.STGRPCODE = '" & Trim(dxPickEdit1(2)) & "'"
If Len(dxPickEdit1(5).DisplayText) = 0 Then UretsTr = "" Else UretsTr = " and LG_" & GFirma & "_ITEMS.PRODCOUNTRY = '" & Trim(dxPickEdit1(5)) & "'"
If Len(dxPickEdit1(10).DisplayText) = 0 Then IsosTr = "" Else IsosTr = " and LG_" & GFirma & "_ITEMS.ISONR = '" & Trim(dxPickEdit1(10)) & "'"

If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/05" Else ilktarih = dxDateEdit1
If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "31/12/05" Else sontarih = dxDateEdit2
TarihsTr = " and LG_" & GFirma & "_" & GDonem & "_STINVTOT.DATE_ >= '" & Format(ilktarih, "MM/DD/YY") & "' and LG_" & GFirma & "_" & GDonem & "_STINVTOT.DATE_ <= '" & Format(sontarih, "MM/DD/YY") & "'"
DUZENLE:
If Len(dxPickEdit1(5).DisplayText) = 0 Then SDuruMu = "" Else SDuruMu = " and LG_" & GFirma & "_ITEMS.ACTIVE = " & Val(dxPickEdit1(5).DisplayText)

'RAPORA ETKIME BAÞLIYOR
   If Len(dxPickEdit1(3).DisplayText) = 0 Then
      StoksTr = ""
   Else
      If dxTextEdit1(1).Visible = False Then
         If dxPickEdit1(3) = "EÞÝT" Then
            If Len(dxTextEdit1(0).DisplayText) = 0 Then StoksTr = "" Else StoksTr = " and LG_" & GFirma & "_ITEMS.CODE = '" & dxTextEdit1(0) & "'"
         Else
            If Len(dxTextEdit1(0).DisplayText) = 0 Then StoksTr = "" Else StoksTr = " AND LG_" & GFirma & "_ITEMS.CODE LIKE '" & dxTextEdit1(0) & "%" & "'"
         End If
      Else
         If dxPickEdit1(3) = "ARASI" Then
            StoksTr = " AND LG_" & GFirma & "_ITEMS.CODE >= '" & dxTextEdit1(0) & "' and LG_" & GFirma & "_ITEMS.CODE <= '" & dxTextEdit1(1) & "'"
         End If
      End If
   End If


sqlstr2 = "SELECT LG_" & GFirma & "_ITEMS.CARDTYPE, LG_" & GFirma & "_ITEMS.CODE, LG_" & GFirma & "_ITEMS.NAME, LG_" & GFirma & "_ITEMS.STGRPCODE, LG_" & GFirma & "_ITEMS.PRODUCERCODE, LG_" & GFirma & "_ITEMS.SPECODE, LG_" & GFirma & "_ITEMS.CYPHCODE, LG_" & GFirma & "_" & GDonem & "_STINVTOT.INVENNO, LG_" & GFirma & "_" & GDonem & "_STINVTOT.DATE_, LG_" & GFirma & "_" & GDonem & "_STINVTOT.TRANSFERRED, LG_" & GFirma & "_" & GDonem & "_STINVTOT.PURAMNT, LG_" & GFirma & "_" & GDonem & "_STINVTOT.PURCASH, LG_" & GFirma & "_" & GDonem & "_STINVTOT.SALAMNT, LG_" & GFirma & "_" & GDonem & "_STINVTOT.SALCASH," _
& " LG_" & GFirma & "_" & GDonem & "_STINVTOT.ONHAND, LG_" & GFirma & "_" & GDonem & "_STINVTOT.ACTWHOUSEIN, LG_" & GFirma & "_" & GDonem & "_STINVTOT.ACTWHOUSEOUT, LG_" & GFirma & "_" & GDonem & "_STINVTOT.AVGVALUE, LG_" & GFirma & "_" & GDonem & "_STINVTOT.STOCKREF,  LG_" & GFirma & "_" & GDonem & "_GNTOTST.INVENNO AS Expr1, LG_" & GFirma & "_" & GDonem & "_GNTOTST.AVGVALUE AS GerOrt " _
& "FROM LG_" & GFirma & "_ITEMS INNER JOIN LG_" & GFirma & "_" & GDonem & "_STINVTOT ON LG_" & GFirma & "_ITEMS.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_STINVTOT.STOCKREF INNER JOIN LG_" & GFirma & "_" & GDonem & "_GNTOTST ON LG_" & GFirma & "_ITEMS.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_GNTOTST.STOCKREF  " _
& "WHERE (LG_" & GFirma & "_" & GDonem & "_STINVTOT.INVENNO IN " & AmbarSrg & ")  AND (LG_" & GFirma & "_" & GDonem & "_GNTOTST.INVENNO = - 1)"

devam:
CnnMlMain.Execute "CREATE VIEW ASRGMental_Env2 WITH ENCRYPTION AS " & sqlstr2 & TarihsTr & SDuruMu & StoksTr & OzelsTr & YetkisTr & GrupsTr & UretsTr & IsosTr

Exit Sub
hata:
If Err.Number = -2147217900 Then
   CnnMlMain.Execute "drop view ASRGMental_Env2"
   GoTo DUZENLE
Else
   MsgBox Err.Number & Err.Description
End If

End Sub
Sub SRGStok_H()
On Error GoTo hata
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
      StoksTr = ""
   Else
      If dxTextEdit1(1).Visible = False Then
         If dxPickEdit1(3) = "EÞÝT" Then
            If Len(dxTextEdit1(0).DisplayText) = 0 Then StoksTr = "" Else StoksTr = " and LG_" & GFirma & "_ITEMS.CODE = '" & dxTextEdit1(0) & "'"
         Else
            If Len(dxTextEdit1(0).DisplayText) = 0 Then StoksTr = "" Else StoksTr = " AND LG_" & GFirma & "_ITEMS.CODE LIKE '" & dxTextEdit1(0) & "%" & "'"
         End If
      Else
         If dxPickEdit1(3) = "ARASI" Then
            StoksTr = " AND LG_" & GFirma & "_ITEMS.CODE >= '" & dxTextEdit1(0) & "' and LG_" & GFirma & "_ITEMS.CODE <= '" & dxTextEdit1(1) & "'"
         End If
      End If
   End If


DUZENLE:

sqlstr = "SELECT LG_" & GFirma & "_ITEMS.LOGICALREF AS STOKREF, LG_" & GFirma & "_ITEMS.CODE AS KODU, LG_" & GFirma & "_ITEMS.NAME AS ADI, LG_" & GFirma & "_ITEMS.STGRPCODE AS GRUPKODU, LG_" & GFirma & "_ITEMS.SPECODE AS OZELKODU, LG_" & GFirma & "_ITEMS.CYPHCODE AS YETKIKODU, LG_" & GFirma & "_ITEMS.ISONR AS ISONo, LG_" & GFirma & "_ITEMS.PRODCOUNTRY AS UretimYeri, LG_" & GFirma & "_" & GDonem & "_STINVTOT.INVENNO AS AMBARNO, LG_" & GFirma & "_" & GDonem & "_STINVTOT.DATE_ AS TARIH, LG_" & GFirma & "_" & GDonem & "_STINVTOT.ONHAND AS STOKMIK, LG_" & GFirma & "_" & GDonem & "_STINVTOT.TRANSFERRED AS DEVIRMIK, LG_" & GFirma & "_" & GDonem & "_STINVTOT.AVGVALUE AS DEVIRDEGERI, LG_" & GFirma & "_" & GDonem & "_STINVTOT.PURAMNT AS ALIMMIK, LG_" & GFirma & "_" & GDonem & "_STINVTOT.PURCASH AS ALIMDEGERI, LG_" & GFirma & "_" & GDonem & "_STINVTOT.SALAMNT AS SATISMIK, LG_" & GFirma & "_" & GDonem & "_STINVTOT.SALCASH AS SATISDEGERI," _
& " LG_" & GFirma & "_" & GDonem & "_GNTOTST.ONHAND AS TSONSTOK, LG_" & GFirma & "_" & GDonem & "_GNTOTST.AVGVALUE AS ORTBMALIYET, LG_" & GFirma & "_ITMUNITA.BARCODE AS TBARKODU, LG_" & GFirma & "_UNITSETL.CODE AS TBIRIMKODU, LG_" & GFirma & "_UNITSETL.NAME AS TBIRIMI " _
& "FROM LG_" & GFirma & "_ITEMS LEFT OUTER JOIN LG_" & GFirma & "_UNITSETL INNER JOIN LG_" & GFirma & "_ITMUNITA ON LG_" & GFirma & "_UNITSETL.LOGICALREF = LG_" & GFirma & "_ITMUNITA.UNITLINEREF ON LG_" & GFirma & "_ITEMS.LOGICALREF = LG_" & GFirma & "_ITMUNITA.ITEMREF LEFT OUTER JOIN LG_" & GFirma & "_" & GDonem & "_STINVTOT INNER JOIN LG_" & GFirma & "_" & GDonem & "_GNTOTST ON LG_" & GFirma & "_" & GDonem & "_STINVTOT.STOCKREF = LG_" & GFirma & "_" & GDonem & "_GNTOTST.STOCKREF AND LG_" & GFirma & "_" & GDonem & "_STINVTOT.INVENNO = LG_" & GFirma & "_" & GDonem & "_GNTOTST.INVENNO ON LG_" & GFirma & "_ITEMS.LOGICALREF = LG_" & GFirma & "_" & GDonem & "_STINVTOT.STOCKREF " _
& "Where (LG_" & GFirma & "_ITMUNITA.LINENR = 1) "

CnnMlMain.Execute "CREATE VIEW AMental_Stok  AS " & sqlstr & TarihsTr & AmbarsTr & OzelsTr & GrupsTr & YetkisTr & StoksTr

Exit Sub
hata:
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
dxDateEdit1 = "01/01/06"
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
RsEtG.Open "Select PRODCOUNTRY from LG_" & GFirma & "_ITEMS GROUP BY PRODCOUNTRY ORDER BY PRODCOUNTRY", CnnMlMain, adOpenDynamic, adLockOptimistic
   Do While Not RsEtG.EOF
         If IsNull(RsEtG.Fields(0)) = False And Len(RsEtG.Fields(0)) > 0 Then dxPickEdit1(5).Items.Add RsEtG.Fields(0)
   RsEtG.MoveNext
   Loop
RsEtG.Close
'Üretim Yeri
dxPickEdit1(10).Items.Clear
Set RsEtG = New Recordset
RsEtG.Open "Select ISONR from LG_" & GFirma & "_ITEMS GROUP BY ISONR ORDER BY ISONR", CnnMlMain, adOpenDynamic, adLockOptimistic
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
RsEtG.Open "SELECT DEFINITION_ FROM LG_SLSMAN where FIRMNR = " & GFirma & " order by code ", CnnMlMain, adOpenDynamic, adLockOptimistic
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
RsEtG.Open "Select TOWN from LG_" & GFirma & "_CLCARD GROUP BY TOWN ORDER BY TOWN", CnnMlMain, adOpenDynamic, adLockOptimistic
   Do While Not RsEtG.EOF
         If IsNull(RsEtG.Fields(0)) = False And Len(RsEtG.Fields(0)) > 0 Then dxPickEdit1(9).Items.Add RsEtG.Fields(0)
   RsEtG.MoveNext
   Loop
RsEtG.Close
End Sub

Private Sub Command1_Click()
Select Case GelenId
    Case "00" 'basic stok raporu
        SRGStok_H
        
        CrT.Reset
        CrT.ReportFileName = App.Path & "\BasicStok.rpt"
        CrT.WindowShowGroupTree = False: CrT.WindowAllowDrillDown = False: CrT.WindowShowRefreshBtn = False
        CrT.ReportTitle = dxDateEdit1 & " Tarihli Stok Raporu"
        CrT.RetrieveDataFiles
        CrT.Action = 1

    Case "01" 'TARÝH ARALIKLI ENVANTER
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
    Case "02"
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
    Case "03"
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
    Case "04" 'TARÝH ARALIKLI ENVANTER
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
    Case "05" 'TARÝH ARALIKLI ENVANTER
        'SRGEnvante
        'SRGEnvanter
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
    Case "20" 'kasa
        SKASA
        CrT.Reset
        CrT.ReportFileName = App.Path & "\KASAHAR.rpt"
        CrT.WindowState = crptMaximized
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1

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
        CrT.WindowAllowDrillDown = True
        CrT.WindowShowGroupTree = True
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
    Case "30" 'satýcý genel raporu
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
    Case "31"
        If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
        If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/05" Else ilktarih = dxDateEdit1
        If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "31/12/05" Else sontarih = dxDateEdit2
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
    Case "32" 'son satýþ fiyat
        If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
        eksrg = ""
        trcode = 8
        trcode1 = 8
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
    Case "33" 'son satýþ fiyat
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
    Case "34"
        eksrg = ""
        SRGCari
        CrT.Reset
        CrT.WindowState = crptMaximized
        CrT.ReportFileName = App.Path & "\CariSatis.rpt"
        CrT.ReportTitle = "Dönem Baþý : " & ilktarih & " Dönem Sonu : " & sontarih
        CrT.SelectionFormula = eksrg
        CrT.WindowAllowDrillDown = True
        CrT.WindowShowGroupTree = False
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
    Case "40"
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
    Case "42" 'satýcý genel raporu
        If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
        eksrg = ""
        SRGMenaFSC
        CrT.Reset
        CrT.ReportFileName = App.Path & "\MenaCSAyl.rpt"
        CrT.WindowState = crptMaximized
        CrT.WindowAllowDrillDown = True
        CrT.WindowShowGroupTree = True
        CrT.SelectionFormula = eksrg
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
    Case "41" 'satýcý genel raporu
        If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
        eksrg = ""
        SRGMenaFSC
        CrT.Reset
        CrT.ReportFileName = App.Path & "\MenaCSAylW.rpt"
        CrT.WindowState = crptMaximized
        CrT.WindowAllowDrillDown = True
        CrT.WindowShowGroupTree = True
        CrT.SelectionFormula = eksrg
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
    Case "43" 'satýcý genel raporu
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
    Case "44" 'satýcý genel raporu
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
    Case 50
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
    Case 51
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
    Case 52
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
    Case 53
        If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
        eksrg = ""
        SIcmal
        CrT.Reset
        CrT.ReportFileName = App.Path & "\MenaIcmal.rpt"
        CrT.WindowState = crptMaximized
        CrT.WindowAllowDrillDown = True
        CrT.SelectionFormula = eksrg
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
    Case 54
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
    Case 55
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
    Case 56
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
    Case 57
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
    Case 58
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
    Case 60
        If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
        eksrg = ""
        SMizan
        CrT.Reset
        CrT.ReportFileName = App.Path & "\MenaMizan.rpt"
        CrT.WindowState = crptMaximized
        CrT.WindowAllowDrillDown = True
        CrT.SelectionFormula = eksrg
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
    Case 61
        If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
        eksrg = ""
        SMahsupFat
        CrT.Reset
        CrT.ReportFileName = App.Path & "\MenaMahsupFat.rpt"
        CrT.WindowState = crptMaximized
        CrT.WindowAllowDrillDown = True
        CrT.SelectionFormula = eksrg
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
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

Private Sub CommandButton1_Click(Index As Integer)
Select Case Index
Case 0

End Select
End Sub

Private Sub Command2_Click()
If Frame1.Caption = " Stok Kartlarý " Then
    BUTTON = 2
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
    BUTTON = 6
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
    BUTTON = 3
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
    BUTTON = 7
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
BUTTON = 4
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
BUTTON = 5
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
                 
Private Sub Command6_Click()
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

Private Sub dxPickEdit1_CloseUp(Index As Integer, AcceptValue As Boolean, Value As Variant)
If Value = "ARASI" Then Label1(5).Visible = True: dxTextEdit1(1).Visible = True: Label1(14).Visible = True: dxTextEdit1(3).Visible = True: Command3.Visible = True: Command5.Visible = True Else Label1(5).Visible = False: dxTextEdit1(1).Visible = False: Label1(14).Visible = False: dxTextEdit1(3).Visible = False: Command3.Visible = False: Command5.Visible = False
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
            Label1.Caption = "Cari Gruplamanýza Göre Seçim Tarihinizdeki Borç Alacak Toplamýný Verir."
      Case 3 'genel tahsilat
            Call SUrun_Ac(False, False, False, True, True, True)
            Label1.Caption = "Cari Gruplamanýza Göre Tahsilat Bilgilerini Verir."
      Case 4 'genel tahsilat
            Call SUrun_Ac(False, False, True, True, True, True)
            Label1.Caption = "Cari Gruplamanýza Göre Seçim Tarihinizdeki Ödeme Hareketlerini Verir."
      End Select
Case 2 'kasa raporlarý
   Frame1.Caption = " Muhasebe Kartlarý "
   Frame3.Caption = " Kasalar "
   If GidenID <> 2 Then SMKoD_Yukle: SKasa_Yukle
      Select Case ItemLinkIndex
      Case 0 'kasa Hareket Raporu
        Label1(2).Visible = False: Label1(11).Visible = False: Label1(21).Visible = False
        dxPickEdit1(2).Visible = False: dxPickEdit1(5).Visible = False: dxPickEdit1(10).Visible = False
        Call SUrun_Ac(True, True, True, False, True, True)
         Load FrMRaporAck
        FrMRaporAck.Show
        FrMRaporAck.Label1.Caption = "Muhasebe Kartý Gruplamanýza Göre Seçim Tarihinizdeki Kasa Hareket Bilgilerini Verir."
      End Select
Case 3
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
        SEleman_Yukle
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


   End Select
Case 4
   Select Case ItemLinkIndex 'satýn alma raporlarý __________________________________________________________
   Case 0 'Satýþ Raporu
      If GidenID <> 4 Then SCari_Yukle: SStok_Yukle
      Call SUrun_Ac(True, False, True, True, True, True)
       Load FrMRaporAck
        FrMRaporAck.Show
        FrMRaporAck.Label1.Caption = "Cari Gruplamanýza Göre Seçim Tarihinizdeki Satýþ Bilgilerini Verir."
      Frame4.Visible = True
   Case 1 'Satýþ Raporu
      If GidenID <> 4 Then SCari_Yukle: SStok_Yukle
      Call SUrun_Ac(True, False, True, True, True, True)
       Load FrMRaporAck
        FrMRaporAck.Show
        FrMRaporAck.Label1.Caption = "Cari Gruplamanýza Göre Seçim Tarihinizdeki Satýþ Bilgilerini Verir."
      Frame4.Visible = True
   Case 2 'Satýþ Raporu
      Call SUrun_Ac(True, False, True, True, True, True)
      If GidenID <> 4 Then SCari_Yukle: SStok_Yukle
       Load FrMRaporAck
        FrMRaporAck.Show
        FrMRaporAck.Label1.Caption = "Cari Gruplamanýza Göre Seçim Tarihinizdeki Satýþ Bilgilerini Verir."
      Frame4.Visible = True
   Case 3 'son alýþ fiyat
      Call SUrun_Ac(True, False, True, True, True, True)
      If GidenID <> 4 Then SCari_Yukle: SStok_Yukle
       Load FrMRaporAck
        FrMRaporAck.Show
        FrMRaporAck.Label1.Caption = "Son Alýþ Fiyat Bilgilerini Verir."
      Frame4.Visible = True
   Case 4 'Satýþ Raporu
      Call SUrun_Ac(True, False, True, True, True, True)
      If GidenID <> 4 Then SCari_Yukle: SStok_Yukle
       Load FrMRaporAck
        FrMRaporAck.Show
        FrMRaporAck.Label1.Caption = "Cari Gruplamanýza Göre Seçim Tarihinizdeki Satýþ Bilgilerini Verir."
      Frame4.Visible = True
   End Select
Case 5
    If GidenID <> 5 Then SCari_Yukle: SStok_Yukle: SEleman_Yukle
    Frame3.Caption = " Elemanlar "
   Select Case ItemLinkIndex
   Case 0 'Satýþ Raporu
      Call SUrun_Ac(True, True, True, True, True, True)
       Load FrMRaporAck
        FrMRaporAck.Show
        FrMRaporAck.Label1.Caption = "Cari Gruplamanýza Göre Seçim Tarihinizdeki Satýþ Bilgilerini Verir."
      Frame4.Visible = True
   Case 1 'Satýþ Raporu
      Call SUrun_Ac(True, True, True, True, True, True)
       Load FrMRaporAck
        FrMRaporAck.Show
        FrMRaporAck.Label1.Caption = "Cari Gruplamanýza Göre Seçim Tarihinizdeki Satýþ Bilgilerini Verir."
      Frame4.Visible = True
   Case 2 'Satýþ Raporu
      Call SUrun_Ac(True, True, True, True, True, True)
       Load FrMRaporAck
        FrMRaporAck.Show
        FrMRaporAck.Label1.Caption = "Cari Gruplamanýza Göre Seçim Tarihinizdeki Satýþ Bilgilerini Verir."
      Frame4.Visible = True
   Case 3 'GÜNLÜK
      Call SUrun_Ac(False, False, False, False, False, False)
       Load FrMRaporAck
        FrMRaporAck.Show
        FrMRaporAck.Label1.Caption = "Seçim Tarihinizdeki Hareket Listesini Verir."
      Frame4.Visible = True
   Case 4 'hareketi olmayan cari
      Call SUrun_Ac(False, False, True, True, True, True)
       Load FrMRaporAck
        FrMRaporAck.Show
        FrMRaporAck.Label1.Caption = "Cari Gruplamanýza Göre Seçim Tarihinizdeki Hareket Görmeyen Cari Listesini Verir."
      Frame4.Visible = True
   Case 5 'Satýþ Raporu
      Call SUrun_Ac(True, True, True, True, True, True)
       Load FrMRaporAck
        FrMRaporAck.Show
        FrMRaporAck.Label1.Caption = "Cari Gruplamanýza Göre Seçim Tarihinizdeki Satýþ Bilgilerini Verir."
      Frame4.Visible = True
   Case 6 'Satýþ Raporu
      Call SUrun_Ac(True, True, True, True, True, True)
       Load FrMRaporAck
        FrMRaporAck.Show
        FrMRaporAck.Label1.Caption = "Cari Gruplamanýza Göre Seçim Tarihinizdeki Satýþ Bilgilerini Verir."
      Frame4.Visible = True
   Case 7 'Satýþ Raporu
      Call SUrun_Ac(True, True, True, True, True, True)
       Load FrMRaporAck
        FrMRaporAck.Show
        FrMRaporAck.Label1.Caption = "Cari Gruplamanýza Göre Seçim Tarihinizdeki Satýþ Bilgilerini Verir."
      Frame4.Visible = True
   Case 8 'Hareketi olmayan Stok
        Call SUrun_Ac(True, False, True, False, True, False)
         Load FrMRaporAck
        FrMRaporAck.Show
        FrMRaporAck.Label1.Caption = "Stok Gruplamanýza Göre Seçim Tarihinizdeki Hareket Görmeyen Stok Listesini Verir."
   End Select
Case 6
    Label1(2).Visible = False: Label1(11).Visible = False: Label1(21).Visible = False
    dxPickEdit1(2).Visible = False: dxPickEdit1(5).Visible = False: dxPickEdit1(10).Visible = False
    Frame1.Caption = " Muhasebe Kartlarý "
    If GidenID <> 2 Then SMKoD_Yukle
    Select Case ItemLinkIndex
    Case 0 'Genel mizan
        Select Case ItemLinkIndex
            Case 0 'kasa Hareket Raporu
                Call SUrun_Ac(True, False, False, False, False, False)
          Load FrMRaporAck
        FrMRaporAck.Show
        FrMRaporAck.Label1.Caption = "Muhasebe Kartý Gruplamanýza Göre Genel Mizaný Verir."
      End Select
            Case 1 'mahsupla faturanýn karþýlaþtýrmasý
                Call SUrun_Ac(False, False, True, False, True, True)
          Load FrMRaporAck
        FrMRaporAck.Show
        FrMRaporAck.Label1.Caption = "Seçim Tarihleri Arasýndaki Mahsup Fiþleri Ýle Faturalarý Karþýlaþtýrýr."
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
   Frame1.Top = 1170: Frame1.Left = 3600: Frame1.Height = 495: Frame1.Width = 1935
   Frame1.Visible = F1
   'AMBAR DETAYI
   Frame3.Top = 1170: Frame3.Left = 5535: Frame3.Height = 495: Frame3.Width = 2625
   Frame3.Visible = F3
   If Frame3.Visible = True Then If List1.ListCount > 0 Then List1.Selected(0) = True
   'TARIH DETAYI
   Frame4.Top = 1170: Frame4.Left = 8160: Frame4.Height = 495: Frame4.Width = 1725
   Frame4.Visible = F4
   'carý DETAYI
   Frame5.Top = 1170: Frame5.Left = 9885: Frame5.Height = 495: Frame5.Width = 1925
   Frame5.Visible = F5
   
   Label1(6).Visible = Labe1: dxDateEdit2.Visible = Labe1
End Sub
Private Sub Form_Load()
Unload FrMRaporBegin
MesaJ = "ment@lsoft - For The Orginal Solutions..."
dxDateEdit1 = "01/01/06"
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
On Error GoTo hata
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
hata:

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
Select Case BUTTON
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
Select Case BUTTON
Case 2, 3
    Frame6.Caption = Empty
    text4.Text = Empty
    text4.SetFocus
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
    text4.Text = Empty
    text4.SetFocus
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
    text4.Text = Empty
    text4.SetFocus
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
        'SRGEnvante
        'SRGEnvanter
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

    Case "20" 'kasa
        SKASA
        CrT.Reset
        CrT.ReportFileName = App.Path & "\KASAHAR.rpt"
        CrT.WindowState = crptMaximized
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1

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
    Case "30" 'satýcý genel raporu
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
    Case "31"
        If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
        If Len(dxDateEdit1.DisplayText) = 0 Then ilktarih = "01/01/05" Else ilktarih = dxDateEdit1
        If Len(dxDateEdit2.DisplayText) = 0 Then sontarih = "31/12/05" Else sontarih = dxDateEdit2
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
    Case "32" 'son satýþ fiyat
        If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
        eksrg = ""
        trcode = 8
        trcode1 = 8
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
    Case "33" 'son satýþ fiyat
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
    Case "34"
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
    Case "35"
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

    Case "40"
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
    Case "42" 'satýcý genel raporu
        If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
        eksrg = ""
        SRGMenaFSC
        CrT.Reset
        CrT.ReportFileName = App.Path & "\MenaCSAyl.rpt"
        CrT.WindowState = crptMaximized
        CrT.WindowAllowDrillDown = True
        CrT.WindowShowGroupTree = True
        CrT.SelectionFormula = eksrg
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
    Case "41" 'satýcý genel raporu
        If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
        eksrg = ""
        SRGMenaFSC
        CrT.Reset
        CrT.ReportFileName = App.Path & "\MenaCSAylW.rpt"
        CrT.WindowState = crptMaximized
        CrT.WindowAllowDrillDown = True
        CrT.WindowShowGroupTree = True
        CrT.SelectionFormula = eksrg
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
    Case "43" 'satýcý genel raporu
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
    Case "44" 'satýcý genel raporu
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
    Case 50
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
    Case 51
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
    Case 52
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
    Case 53
        If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
        eksrg = ""
        SIcmal
        CrT.Reset
        CrT.ReportFileName = App.Path & "\MenaIcmal.rpt"
        CrT.WindowState = crptMaximized
        CrT.WindowAllowDrillDown = True
        CrT.SelectionFormula = eksrg
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
    Case 54
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
    Case 55
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
    Case 56
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
    Case 57
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
    Case 58
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
    Case 60
        If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
        eksrg = ""
        SMizan
        CrT.Reset
        CrT.ReportFileName = App.Path & "\MenaMizan.rpt"
        CrT.WindowState = crptMaximized
        CrT.WindowAllowDrillDown = True
        CrT.SelectionFormula = eksrg
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
        CrT.RetrieveDataFiles
        CrT.Action = 1
    Case 61
        If dxDateEdit1 > dxDateEdit2 Then MsgBox "Tarih Aralýðý Yanlýþ...", vbInformation, MesaJ: Exit Sub
        eksrg = ""
        SMahsupFat
        CrT.Reset
        CrT.ReportFileName = App.Path & "\MenaMahsupFat.rpt"
        CrT.WindowState = crptMaximized
        CrT.WindowAllowDrillDown = True
        CrT.SelectionFormula = eksrg
        CrT.WindowShowPrintSetupBtn = True
        CrT.WindowShowRefreshBtn = True
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
Select Case BUTTON
Case 2, 3
    If text4.Text = Empty Then Exit Sub
    simdi = text4.Text & "%"
    If text4.Text <> Empty Then
        ww = InStr(1, Frame6.Caption, "-")
        If ww = 0 Then
            formadi = Frame6.Caption
        Else
            formadi = Mid(Frame6.Caption, 1, ww - 1)
        End If
        Frame6.Caption = formadi & "-" & "'" & "[" & text4.Text & "]" & "'"
    End If
    Select Case secim
    Case "KODU"
        Set rstgenel = New Recordset
        rstgenel.Open "SELECT LOGICALREF,CODE,NAME fROM LG_" & GFirma & "_ITEMS where CODE like '" & simdi & "' order by CODE ASC", CnnMlMain, adOpenDynamic, adLockOptimistic
        Set Grid1.DataSource = rstgenel
        grid1_label
        text4.SetFocus
        text4.SelStart = Len(text4.Text)
    Case "ACIKLAMA"
        Set rstgenel = New Recordset
        rstgenel.Open "SELECT LOGICALREF,CODE,NAME fROM LG_" & GFirma & "_ITEMS where NAME like '" & simdi & "' order by NAME ASC", CnnMlMain, adOpenDynamic, adLockOptimistic
        Set Grid1.DataSource = rstgenel
        grid1_label
        text4.SetFocus
        text4.SelStart = Len(text4.Text)
    End Select
Case 4, 5
    If text4.Text = Empty Then Exit Sub
    simdi = text4.Text & "%"
    If text4.Text <> emty Then
        ww = InStr(1, Frame6.Caption, "-")
        If ww = 0 Then
            formadi = Frame6.Caption
        Else
            formadi = Mid(Frame6.Caption, 1, ww - 1)
        End If
        Frame6.Caption = formadi & "-" & "'" & "[" & text4.Text & "]" & "'"
    End If
    Select Case secim
    Case "KODU"
        Set rstgenel = New Recordset
        rstgenel.Open "SELECT LOGICALREF,CODE,DEFINITION_ fROM LG_" & GFirma & "_CLCARD where CODE like '" & simdi & "' order by CODE ASC", CnnMlMain, adOpenDynamic, adLockOptimistic
        Set Grid1.DataSource = rstgenel
        grid1_label
        text4.SetFocus
        text4.SelStart = Len(text4.Text)
    Case "ACIKLAMA"
        Set rstgenel = New Recordset
        rstgenel.Open "SELECT LOGICALREF,CODE,DEFINITION_ fROM LG_" & GFirma & "_CLCARD where DEFINITION_ like '" & simdi & "' order by DEFINITION_ ASC", CnnMlMain, adOpenDynamic, adLockOptimistic
        Set Grid1.DataSource = rstgenel
        grid1_label
        text4.SetFocus
        text4.SelStart = Len(text4.Text)
    End Select
Case 6, 7
    If text4.Text = Empty Then Exit Sub
    simdi = text4.Text & "%"
    If text4.Text <> Empty Then
        ww = InStr(1, Frame6.Caption, "-")
        If ww = 0 Then
            formadi = Frame6.Caption
        Else
            formadi = Mid(Frame6.Caption, 1, ww - 1)
        End If
        Frame6.Caption = formadi & "-" & "'" & "[" & text4.Text & "]" & "'"
    End If
    Select Case secim
    Case "KODU"
        Set rstgenel = New Recordset
        rstgenel.Open "SELECT LOGICALREF,CODE,DEFINITION_ fROM LG_" & GFirma & "_EMUHACC where CODE like '" & simdi & "' order by CODE ASC", CnnMlMain, adOpenDynamic, adLockOptimistic
        Set Grid1.DataSource = rstgenel
        grid1_label
        text4.SetFocus
        text4.SelStart = Len(text4.Text)
    Case "ACIKLAMA"
        Set rstgenel = New Recordset
        rstgenel.Open "SELECT LOGICALREF,CODE,DEFINITION_ fROM LG_" & GFirma & "_EMUHACC where DEFINITION_ like '" & simdi & "' order by DEFINITION_ ASC", CnnMlMain, adOpenDynamic, adLockOptimistic
        Set Grid1.DataSource = rstgenel
        grid1_label
        text4.SetFocus
        text4.SelStart = Len(text4.Text)
    End Select
End Select
End Sub


