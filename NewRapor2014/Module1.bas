Attribute VB_Name = "Module1"
Global CnnMlMain As Connection
Global CnNSqlMain As Connection
Global CnnMain As Connection
Global RsEtG As Recordset
Global RsEtM As Recordset
Global RsEtKart As Recordset
Public RsEtGetir As ADODB.Recordset
Global MesaJ As String
'AnaForm Tanýmlarý
Global GMesaj As String 'uyarý mesajýnda çýkacak kelime
Global GFirma As String 'logo firma no
Global GDonem As String 'logo dönem no
Global GKatalog As String 'logo katalog adý
Global GipNo As String 'logo SQL server ip yada adý
Global GName As String 'Firma Adý
Global GUserName As String 'Firma Adý
Global GUserPass As String 'Firma Adý
Global Metin2 As Integer
Global Metin3 As Integer
Global Metin4 As Integer
Global Position As Long
Global Plus As Long

Global Passw1 As Integer
Global Passw2 As Integer
Global Passw3 As Integer
Global Passw4 As Integer
Global Passw5 As Integer

Global Rasgele1 As Integer
Global Rasgele2 As Integer

Global StoKStr(5) As String
Global StoKStrA As String
Global StoKStrXA As String
Global CariStr(10) As String
Global CariStrA As String
Global CariStrX(10) As String
Global CariStrAX As String

Global RaPoRADi As String
Function FTariHKuR()
End Function
Function FCariYukLe()
'özel kodlar yüklenir
    FrMReport.PicKKod1(6).Items.Clear
    FrMReport.PicKKod2(6).Items.Clear
    Set RsEtG = New Recordset
    RsEtG.Open "Select specode from LG_" & GFirma & "_CLCARD GROUP BY SPECODE ORDER BY specode", CnnMain, adOpenDynamic, adLockOptimistic
       Do While Not RsEtG.EOF
             If IsNull(RsEtG.Fields(0)) = False And Len(RsEtG.Fields(0)) > 0 Then FrMReport.PicKKod1(6).Items.Add RsEtG.Fields(0): FrMReport.PicKKod2(6).Items.Add RsEtG.Fields(0)
       RsEtG.MoveNext
       Loop
    RsEtG.Close
'Yetki kodlar yüklenir
    FrMReport.PicKKod1(7).Items.Clear
    Set RsEtG = New Recordset
    RsEtG.Open "Select CYPHcode from LG_" & GFirma & "_CLCARD GROUP BY CYPHCODE ORDER BY CYPHcode", CnnMain, adOpenDynamic, adLockOptimistic
       Do While Not RsEtG.EOF
             If IsNull(RsEtG.Fields(0)) = False And Len(RsEtG.Fields(0)) > 0 Then FrMReport.PicKKod1(7).Items.Add RsEtG.Fields(0): FrMReport.PicKKod2(7).Items.Add RsEtG.Fields(0)
       RsEtG.MoveNext
       Loop
    RsEtG.Close
'ÞEHÝR Kodu
    FrMReport.PicKKod1(8).Items.Clear
    Set RsEtG = New Recordset
    RsEtG.Open "Select town from LG_" & GFirma & "_CLCARD GROUP BY town ORDER BY town", CnnMain, adOpenDynamic, adLockOptimistic
       Do While Not RsEtG.EOF
             If IsNull(RsEtG.Fields(0)) = False And Len(RsEtG.Fields(0)) > 0 Then FrMReport.PicKKod1(8).Items.Add RsEtG.Fields(0): FrMReport.PicKKod2(8).Items.Add RsEtG.Fields(0)
       RsEtG.MoveNext
       Loop
    RsEtG.Close
'iLÇESÝ
    FrMReport.PicKKod1(9).Items.Clear
    Set RsEtG = New Recordset
    RsEtG.Open "Select TRADINGGRP from LG_" & GFirma & "_CLCARD GROUP BY TRADINGGRP ORDER BY TRADINGGRP", CnnMain, adOpenDynamic, adLockOptimistic
       Do While Not RsEtG.EOF
             If IsNull(RsEtG.Fields(0)) = False And Len(RsEtG.Fields(0)) > 0 Then FrMReport.PicKKod1(9).Items.Add RsEtG.Fields(0): FrMReport.PicKKod2(9).Items.Add RsEtG.Fields(0)
       RsEtG.MoveNext
       Loop
    RsEtG.Close

End Function
Function FStok_Kur()
Dim SpiK(5) As String
For i = 0 To 5
    SpiK(i) = FrMReport.dxPickEdit1(i).DisplayText
Next
'1..................
    If Len(FrMReport.PicKKod1(0).DisplayText) > 0 Then
        If SpiK(0) = "BENZER" Then StoKStr(0) = " and LG_" & GFirma & "_ITEMS.SPECODE LIKE '" & FrMReport.PicKKod1(0) & "%" & "'"
        If SpiK(0) = "EÞÝT" Then StoKStr(0) = " and LG_" & GFirma & "_ITEMS.SPECODE = '" & FrMReport.PicKKod1(0) & "'"
        If SpiK(0) = "VE/VEYA" Then StoKStr(0) = " and LG_" & GFirma & "_ITEMS.SPECODE IN '" & FrMReport.PicKKod1(0) & "'"
        If SpiK(0) = "ARASINDA" Then
            If Len(FrMReport.PicKKod2(0).DisplayText) > 0 Then
                StoKStr(0) = " and LG_" & GFirma & "_ITEMS.SPECODE >= '" & FrMReport.PicKKod1(0) & "' and LG_" & GFirma & "_ITEMS.SPECODE <= '" & FrMReport.PicKKod1(0) & "'"
            Else
                StoKStr(0) = " and LG_" & GFirma & "_ITEMS.SPECODE = '" & FrMReport.PicKKod1(0) & "'"
            End If
        End If
    Else
        StoKStr(0) = ""
    End If
'2..................
    If Len(FrMReport.PicKKod1(1).DisplayText) > 0 Then
        If SpiK(1) = "BENZER" Then StoKStr(1) = " and LG_" & GFirma & "_ITEMS.CYPHcode LIKE '" & FrMReport.PicKKod1(1) & "%" & "'"
        If SpiK(1) = "EÞÝT" Then StoKStr(1) = " and LG_" & GFirma & "_ITEMS.CYPHcode = '" & FrMReport.PicKKod1(1) & "'"
        If SpiK(1) = "VE/VEYA" Then StoKStr(1) = " and LG_" & GFirma & "_ITEMS.CYPHcode IN '" & FrMReport.PicKKod2(1) & "'"
        If SpiK(1) = "ARASINDA" Then
            If Len(FrMReport.PicKKod2(1).DisplayText) > 0 Then
                StoKStr(1) = " and LG_" & GFirma & "_ITEMS.CYPHcode >= '" & FrMReport.PicKKod1(1) & "' and LG_" & GFirma & "_ITEMS.CYPHcode <= '" & FrMReport.PicKKod2(1) & "'"
            Else
                StoKStr(1) = " and LG_" & GFirma & "_ITEMS.CYPHcode = '" & FrMReport.PicKKod1(1) & "'"
            End If
        End If
    Else
        StoKStr(1) = ""
    End If
'3..................
    If Len(FrMReport.PicKKod1(2).DisplayText) > 0 Then
        If SpiK(2) = "BENZER" Then StoKStr(2) = " and LG_" & GFirma & "_ITEMS.STGRPcode LIKE '" & FrMReport.PicKKod1(2) & "%" & "'"
        If SpiK(2) = "EÞÝT" Then StoKStr(2) = " and LG_" & GFirma & "_ITEMS.STGRPcode = '" & FrMReport.PicKKod1(2) & "'"
        If SpiK(2) = "VE/VEYA" Then StoKStr(2) = " and LG_" & GFirma & "_ITEMS.STGRPcode IN '" & FrMReport.PicKKod2(2) & "'"
        If SpiK(2) = "ARASINDA" Then
            If Len(FrMReport.PicKKod2(2).DisplayText) > 0 Then
                StoKStr(2) = " and LG_" & GFirma & "_ITEMS.STGRPcode >= '" & FrMReport.PicKKod1(2) & "' and LG_" & GFirma & "_ITEMS.STGRPcode <= '" & FrMReport.PicKKod2(2) & "'"
            Else
                StoKStr(2) = " and LG_" & GFirma & "_ITEMS.STGRPcode = '" & FrMReport.PicKKod1(2) & "'"
            End If
        End If
    Else
        StoKStr(2) = ""
    End If
'4..................
    If Len(FrMReport.PicKKod1(3).DisplayText) > 0 Then
        If SpiK(3) = "BENZER" Then StoKStr(3) = " and LG_" & GFirma & "_ITEMS.LOGOID LIKE '" & FrMReport.PicKKod1(3) & "%" & "'"
        If SpiK(3) = "EÞÝT" Then StoKStr(3) = " and LG_" & GFirma & "_ITEMS.LOGOID = '" & FrMReport.PicKKod1(3) & "'"
        If SpiK(3) = "VE/VEYA" Then StoKStr(3) = " and LG_" & GFirma & "_ITEMS.LOGOID IN '" & FrMReport.PicKKod2(3) & "'"
        If SpiK(3) = "ARASINDA" Then
            If Len(FrMReport.PicKKod2(3).DisplayText) > 0 Then
                StoKStr(3) = " and LG_" & GFirma & "_ITEMS.LOGOID >= '" & FrMReport.PicKKod1(3) & "' and LG_" & GFirma & "_ITEMS.LOGOID <= '" & FrMReport.PicKKod2(3) & "'"
            Else
                StoKStr(3) = " and LG_" & GFirma & "_ITEMS.LOGOID = '" & FrMReport.PicKKod1(3) & "'"
            End If
        End If
    Else
        StoKStr(3) = ""
    End If
'5..................
    If Len(FrMReport.PicKKod1(4).DisplayText) > 0 Then
        If SpiK(4) = "BENZER" Then StoKStr(4) = " and MR.CODE LIKE '" & FrMReport.PicKKod1(4) & "%" & "'"
        If SpiK(4) = "EÞÝT" Then StoKStr(4) = " and MR.CODE = '" & FrMReport.PicKKod1(4) & "'"
        If SpiK(4) = "VE/VEYA" Then StoKStr(4) = " and MR.CODE IN '" & FrMReport.PicKKod2(4) & "'"
        If SpiK(4) = "ARASINDA" Then
            If Len(FrMReport.PicKKod2(4).DisplayText) > 0 Then
                StoKStr(4) = " and MR.CODE >= '" & FrMReport.PicKKod1(4) & "' and MR.CODE <= '" & FrMReport.PicKKod2(4) & "'"
            Else
                StoKStr(4) = " and MR.CODE = '" & FrMReport.PicKKod1(4) & "'"
            End If
        End If
    Else
        StoKStr(4) = ""
    End If
'6..................
    If Len(FrMReport.PicKKod1(5).DisplayText) > 0 Then
        If SpiK(5) = "BENZER" Then StoKStr(5) = " and LG_" & GFirma & "_ITEMS.CODE LIKE '" & FrMReport.PicKKod1(5) & "%" & "'"
        If SpiK(5) = "EÞÝT" Then StoKStr(5) = " and LG_" & GFirma & "_ITEMS.CODE = '" & FrMReport.PicKKod1(5) & "'"
        If SpiK(5) = "VE/VEYA" Then StoKStr(5) = " and LG_" & GFirma & "_ITEMS.CODE IN '" & FrMReport.PicKKod2(5) & "'"
        If SpiK(5) = "ARASINDA" Then
            If Len(FrMReport.PicKKod2(5).DisplayText) > 0 Then
                StoKStr(5) = " and LG_" & GFirma & "_ITEMS.CODE >= '" & FrMReport.PicKKod1(5) & "' and LG_" & GFirma & "_ITEMS.CODE <= '" & FrMReport.PicKKod2(5) & "'"
            Else
                StoKStr(5) = " and LG_" & GFirma & "_ITEMS.CODE = '" & FrMReport.PicKKod1(5) & "'"
            End If
        End If
    Else
        StoKStr(5) = ""
    End If

'--------------------------------
StoKStrA = StoKStr(0) & StoKStr(1) & StoKStr(2) & StoKStr(3) & StoKStr(4) & StoKStr(5)
End Function
Function FXStok_Kur()
Dim SpiK(5) As String
For i = 0 To 5
    SpiK(i) = FrMReport.dxPickEdit1(i).DisplayText
Next
'1..................
    If Len(FrMReport.PicKKod1(0).DisplayText) > 0 Then
        If SpiK(0) = "BENZER" Then StoKStr(0) = " and ST.SPECODE LIKE '" & FrMReport.PicKKod1(0) & "%" & "'"
        If SpiK(0) = "EÞÝT" Then StoKStr(0) = " and ST.SPECODE = '" & FrMReport.PicKKod1(0) & "'"
        If SpiK(0) = "VE/VEYA" Then StoKStr(0) = " and ST.SPECODE IN '" & FrMReport.PicKKod1(0) & "'"
        If SpiK(0) = "ARASINDA" Then
            If Len(FrMReport.PicKKod2(0).DisplayText) > 0 Then
                StoKStr(0) = " and ST.SPECODE >= '" & FrMReport.PicKKod1(0) & "' and ST.SPECODE <= '" & FrMReport.PicKKod1(0) & "'"
            Else
                StoKStr(0) = " and ST.SPECODE = '" & FrMReport.PicKKod1(0) & "'"
            End If
        End If
    Else
        StoKStr(0) = ""
    End If
'2..................
    If Len(FrMReport.PicKKod1(1).DisplayText) > 0 Then
        If SpiK(1) = "BENZER" Then StoKStr(1) = " and ST.CYPHcode LIKE '" & FrMReport.PicKKod1(1) & "%" & "'"
        If SpiK(1) = "EÞÝT" Then StoKStr(1) = " and ST.CYPHcode = '" & FrMReport.PicKKod1(1) & "'"
        If SpiK(1) = "VE/VEYA" Then StoKStr(1) = " and ST.CYPHcode IN '" & FrMReport.PicKKod2(1) & "'"
        If SpiK(1) = "ARASINDA" Then
            If Len(FrMReport.PicKKod2(1).DisplayText) > 0 Then
                StoKStr(1) = " and ST.CYPHcode >= '" & FrMReport.PicKKod1(1) & "' and ST.CYPHcode <= '" & FrMReport.PicKKod2(1) & "'"
            Else
                StoKStr(1) = " and ST.CYPHcode = '" & FrMReport.PicKKod1(1) & "'"
            End If
        End If
    Else
        StoKStr(1) = ""
    End If
'3..................
    If Len(FrMReport.PicKKod1(2).DisplayText) > 0 Then
        If SpiK(2) = "BENZER" Then StoKStr(2) = " and ST.STGRPcode LIKE '" & FrMReport.PicKKod1(2) & "%" & "'"
        If SpiK(2) = "EÞÝT" Then StoKStr(2) = " and ST.STGRPcode = '" & FrMReport.PicKKod1(2) & "'"
        If SpiK(2) = "VE/VEYA" Then StoKStr(2) = " and ST.STGRPcode IN '" & FrMReport.PicKKod2(2) & "'"
        If SpiK(2) = "ARASINDA" Then
            If Len(FrMReport.PicKKod2(2).DisplayText) > 0 Then
                StoKStr(2) = " and ST.STGRPcode >= '" & FrMReport.PicKKod1(2) & "' and ST.STGRPcode <= '" & FrMReport.PicKKod2(2) & "'"
            Else
                StoKStr(2) = " and ST.STGRPcode = '" & FrMReport.PicKKod1(2) & "'"
            End If
        End If
    Else
        StoKStr(2) = ""
    End If
'4..................
    If Len(FrMReport.PicKKod1(3).DisplayText) > 0 Then
        If SpiK(3) = "BENZER" Then StoKStr(3) = " and ST.LOGOID LIKE '" & FrMReport.PicKKod1(3) & "%" & "'"
        If SpiK(3) = "EÞÝT" Then StoKStr(3) = " and ST.LOGOID = '" & FrMReport.PicKKod1(3) & "'"
        If SpiK(3) = "VE/VEYA" Then StoKStr(3) = " and ST.LOGOID IN '" & FrMReport.PicKKod2(3) & "'"
        If SpiK(3) = "ARASINDA" Then
            If Len(FrMReport.PicKKod2(3).DisplayText) > 0 Then
                StoKStr(3) = " and ST.LOGOID >= '" & FrMReport.PicKKod1(3) & "' and ST.LOGOID <= '" & FrMReport.PicKKod2(3) & "'"
            Else
                StoKStr(3) = " and ST.LOGOID = '" & FrMReport.PicKKod1(3) & "'"
            End If
        End If
    Else
        StoKStr(3) = ""
    End If
'5..................
    If Len(FrMReport.PicKKod1(4).DisplayText) > 0 Then
        If SpiK(4) = "BENZER" Then StoKStr(4) = " and MR.CODE LIKE '" & FrMReport.PicKKod1(4) & "%" & "'"
        If SpiK(4) = "EÞÝT" Then StoKStr(4) = " and MR.CODE = '" & FrMReport.PicKKod1(4) & "'"
        If SpiK(4) = "VE/VEYA" Then StoKStr(4) = " and MR.CODE IN '" & FrMReport.PicKKod2(4) & "'"
        If SpiK(4) = "ARASINDA" Then
            If Len(FrMReport.PicKKod2(4).DisplayText) > 0 Then
                StoKStr(4) = " and MR.CODE >= '" & FrMReport.PicKKod1(4) & "' and MR.CODE <= '" & FrMReport.PicKKod2(4) & "'"
            Else
                StoKStr(4) = " and MR.CODE = '" & FrMReport.PicKKod1(4) & "'"
            End If
        End If
    Else
        StoKStr(4) = ""
    End If
'6..................
    If Len(FrMReport.PicKKod1(5).DisplayText) > 0 Then
        If SpiK(5) = "BENZER" Then StoKStr(5) = " and ST.CODE LIKE '" & "%" & FrMReport.PicKKod1(5) & "%" & "'"
        If SpiK(5) = "EÞÝT" Then StoKStr(5) = " and ST.CODE = '" & FrMReport.PicKKod1(5) & "'"
        If SpiK(5) = "VE/VEYA" Then StoKStr(5) = " and ST.CODE IN '" & FrMReport.PicKKod2(5) & "'"
        If SpiK(5) = "ARASINDA" Then
            If Len(FrMReport.PicKKod2(5).DisplayText) > 0 Then
                StoKStr(5) = " and ST.CODE >= '" & FrMReport.PicKKod1(5) & "' and ST.CODE <= '" & FrMReport.PicKKod2(5) & "'"
            Else
                StoKStr(5) = " and ST.CODE = '" & FrMReport.PicKKod1(5) & "'"
            End If
        End If
    Else
        StoKStr(5) = ""
    End If

'--------------------------------
StoKStrXA = StoKStr(0) & StoKStr(1) & StoKStr(2) & StoKStr(3) & StoKStr(4) & StoKStr(5)
End Function

Function FCari_Kur()
Dim CpiK(10) As String
Dim E As Integer
For i = 6 To 10
    CpiK(i) = FrMReport.dxPickEdit1(i).DisplayText
Next
'6..................
    E = 6
    If Len(FrMReport.PicKKod1(E).DisplayText) > 0 Then
        If CpiK(E) = "BENZER" Then CariStr(E) = " and LG_" & GFirma & "_CLCARD.SPECODE LIKE '" & FrMReport.PicKKod1(E) & "%" & "'"
        If CpiK(E) = "EÞÝT" Then CariStr(E) = " and LG_" & GFirma & "_CLCARD.SPECODE = '" & FrMReport.PicKKod1(E) & "'"
        If CpiK(E) = "VE/VEYA" Then CariStr(E) = " and LG_" & GFirma & "_CLCARD.SPECODE IN '" & FrMReport.PicKKod1(E) & "'"
        If CpiK(E) = "ARASINDA" Then
            If Len(FrMReport.PicKKod2(E).DisplayText) > 0 Then
                CariStr(E) = " and LG_" & GFirma & "_CLCARD.SPECODE >= '" & FrMReport.PicKKod1(E) & "' and LG_" & GFirma & "_CLCARD.SPECODE <= '" & FrMReport.PicKKod1(E) & "'"
            Else
                CariStr(E) = " and LG_" & GFirma & "_CLCARD.SPECODE = '" & FrMReport.PicKKod1(E) & "'"
            End If
        End If
    Else
        CariStr(E) = ""
    End If
'7..................
    E = 7
    If Len(FrMReport.PicKKod1(E).DisplayText) > 0 Then
        If CpiK(E) = "BENZER" Then CariStr(E) = " and LG_" & GFirma & "_CLCARD.CYPHcode LIKE '" & FrMReport.PicKKod1(E) & "%" & "'"
        If CpiK(E) = "EÞÝT" Then CariStr(E) = " and LG_" & GFirma & "_CLCARD.CYPHcode = '" & FrMReport.PicKKod1(E) & "'"
        If CpiK(E) = "VE/VEYA" Then CariStr(E) = " and LG_" & GFirma & "_CLCARD.CYPHcode IN '" & FrMReport.PicKKod1(E) & "'"
        If CpiK(E) = "ARASINDA" Then
            If Len(FrMReport.PicKKod2(E).DisplayText) > 0 Then
                CariStr(E) = " and LG_" & GFirma & "_CLCARD.CYPHcode >= '" & FrMReport.PicKKod1(E) & "' and LG_" & GFirma & "_CLCARD.CYPHcode <= '" & FrMReport.PicKKod1(E) & "'"
            Else
                CariStr(E) = " and LG_" & GFirma & "_CLCARD.CYPHcode = '" & FrMReport.PicKKod1(E) & "'"
            End If
        End If
    Else
        CariStr(E) = ""
    End If
'8..................
    E = 8
    If Len(FrMReport.PicKKod1(E).DisplayText) > 0 Then
        If CpiK(E) = "BENZER" Then CariStr(E) = " and LG_" & GFirma & "_CLCARD.town LIKE '" & FrMReport.PicKKod1(E) & "%" & "'"
        If CpiK(E) = "EÞÝT" Then CariStr(E) = " and LG_" & GFirma & "_CLCARD.town = '" & FrMReport.PicKKod1(E) & "'"
        If CpiK(E) = "VE/VEYA" Then CariStr(E) = " and LG_" & GFirma & "_CLCARD.town IN '" & FrMReport.PicKKod1(E) & "'"
        If CpiK(E) = "ARASINDA" Then
            If Len(FrMReport.PicKKod2(E).DisplayText) > 0 Then
                CariStr(E) = " and LG_" & GFirma & "_CLCARD.town >= '" & FrMReport.PicKKod1(E) & "' and LG_" & GFirma & "_CLCARD.town <= '" & FrMReport.PicKKod1(E) & "'"
            Else
                CariStr(E) = " and LG_" & GFirma & "_CLCARD.town = '" & FrMReport.PicKKod1(E) & "'"
            End If
        End If
    Else
        CariStr(E) = ""
    End If
'9..................
    E = 9
    If Len(FrMReport.PicKKod1(E).DisplayText) > 0 Then
        If CpiK(E) = "BENZER" Then CariStr(E) = " and LG_" & GFirma & "_CLCARD.TRADINGGRP LIKE '" & FrMReport.PicKKod1(E) & "%" & "'"
        If CpiK(E) = "EÞÝT" Then CariStr(E) = " and LG_" & GFirma & "_CLCARD.TRADINGGRP = '" & FrMReport.PicKKod1(E) & "'"
        If CpiK(E) = "VE/VEYA" Then CariStr(E) = " and LG_" & GFirma & "_CLCARD.TRADINGGRP IN '" & FrMReport.PicKKod1(E) & "'"
        If CpiK(E) = "ARASINDA" Then
            If Len(FrMReport.PicKKod2(E).DisplayText) > 0 Then
                CariStr(E) = " and LG_" & GFirma & "_CLCARD.TRADINGGRP >= '" & FrMReport.PicKKod1(E) & "' and LG_" & GFirma & "_CLCARD.TRADINGGRP <= '" & FrMReport.PicKKod1(E) & "'"
            Else
                CariStr(E) = " and LG_" & GFirma & "_CLCARD.TRADINGGRP = '" & FrMReport.PicKKod1(E) & "'"
            End If
        End If
    Else
        CariStr(E) = ""
    End If
'10..................
    E = 10
    If Len(FrMReport.PicKKod1(E).DisplayText) > 0 Then
        If CpiK(E) = "BENZER" Then CariStr(E) = " and LG_" & GFirma & "_CLCARD.CODE LIKE '" & FrMReport.PicKKod1(E) & "%" & "'"
        If CpiK(E) = "EÞÝT" Then CariStr(E) = " and LG_" & GFirma & "_CLCARD.CODE = '" & FrMReport.PicKKod1(E) & "'"
        If CpiK(E) = "VE/VEYA" Then CariStr(E) = " and LG_" & GFirma & "_CLCARD.CODE IN '" & FrMReport.PicKKod1(E) & "'"
        If CpiK(E) = "ARASINDA" Then
            If Len(FrMReport.PicKKod2(E).DisplayText) > 0 Then
                CariStr(E) = " and LG_" & GFirma & "_CLCARD.CODE >= '" & FrMReport.PicKKod1(E) & "' and LG_" & GFirma & "_CLCARD.CODE <= '" & FrMReport.PicKKod1(E) & "'"
            Else
                CariStr(E) = " and LG_" & GFirma & "_CLCARD.CODE = '" & FrMReport.PicKKod1(E) & "'"
            End If
        End If
    Else
        CariStr(E) = ""
    End If

'--------------------------------
CariStrA = CariStr(6) & CariStr(7) & CariStr(7) & CariStr(8) & CariStr(9) & CariStr(10)
End Function
Function FXCari_Kur()
Dim CpiK(10) As String
Dim E As Integer
For i = 6 To 10
    CpiK(i) = FrMReport.dxPickEdit1(i).DisplayText
Next
'6..................
    E = 6
    If Len(FrMReport.PicKKod1(E).DisplayText) > 0 Then
        If CpiK(E) = "BENZER" Then CariStr(E) = " and CL.SPECODE LIKE '" & FrMReport.PicKKod1(E) & "%" & "'"
        If CpiK(E) = "EÞÝT" Then CariStr(E) = " and CL.SPECODE = '" & FrMReport.PicKKod1(E) & "'"
        If CpiK(E) = "VE/VEYA" Then CariStr(E) = " and CL.SPECODE IN '" & FrMReport.PicKKod1(E) & "'"
        If CpiK(E) = "ARASINDA" Then
            If Len(FrMReport.PicKKod2(E).DisplayText) > 0 Then
                CariStr(E) = " and CL.SPECODE >= '" & FrMReport.PicKKod1(E) & "' and CL.SPECODE <= '" & FrMReport.PicKKod1(E) & "'"
            Else
                CariStr(E) = " and CL.SPECODE = '" & FrMReport.PicKKod1(E) & "'"
            End If
        End If
    Else
        CariStr(E) = ""
    End If
'7..................
    E = 7
    If Len(FrMReport.PicKKod1(E).DisplayText) > 0 Then
        If CpiK(E) = "BENZER" Then CariStr(E) = " and CL.CYPHcode LIKE '" & FrMReport.PicKKod1(E) & "%" & "'"
        If CpiK(E) = "EÞÝT" Then CariStr(E) = " and CL.CYPHcode = '" & FrMReport.PicKKod1(E) & "'"
        If CpiK(E) = "VE/VEYA" Then CariStr(E) = " and CL.CYPHcode IN '" & FrMReport.PicKKod1(E) & "'"
        If CpiK(E) = "ARASINDA" Then
            If Len(FrMReport.PicKKod2(E).DisplayText) > 0 Then
                CariStr(E) = " and CL.CYPHcode >= '" & FrMReport.PicKKod1(E) & "' and CL.CYPHcode <= '" & FrMReport.PicKKod1(E) & "'"
            Else
                CariStr(E) = " and CL.CYPHcode = '" & FrMReport.PicKKod1(E) & "'"
            End If
        End If
    Else
        CariStr(E) = ""
    End If
'8..................
    E = 8
    If Len(FrMReport.PicKKod1(E).DisplayText) > 0 Then
        If CpiK(E) = "BENZER" Then CariStr(E) = " and CL.town LIKE '" & FrMReport.PicKKod1(E) & "%" & "'"
        If CpiK(E) = "EÞÝT" Then CariStr(E) = " and CL.town = '" & FrMReport.PicKKod1(E) & "'"
        If CpiK(E) = "VE/VEYA" Then CariStr(E) = " and CL.town IN '" & FrMReport.PicKKod1(E) & "'"
        If CpiK(E) = "ARASINDA" Then
            If Len(FrMReport.PicKKod2(E).DisplayText) > 0 Then
                CariStr(E) = " and CL.town >= '" & FrMReport.PicKKod1(E) & "' and CL.town <= '" & FrMReport.PicKKod1(E) & "'"
            Else
                CariStr(E) = " and CL.town = '" & FrMReport.PicKKod1(E) & "'"
            End If
        End If
    Else
        CariStr(E) = ""
    End If
'9..................
    E = 9
    If Len(FrMReport.PicKKod1(E).DisplayText) > 0 Then
        If CpiK(E) = "BENZER" Then CariStr(E) = " and CL.TRADINGGRP LIKE '" & FrMReport.PicKKod1(E) & "%" & "'"
        If CpiK(E) = "EÞÝT" Then CariStr(E) = " and CL.TRADINGGRP = '" & FrMReport.PicKKod1(E) & "'"
        If CpiK(E) = "VE/VEYA" Then CariStr(E) = " and CL.TRADINGGRP IN '" & FrMReport.PicKKod1(E) & "'"
        If CpiK(E) = "ARASINDA" Then
            If Len(FrMReport.PicKKod2(E).DisplayText) > 0 Then
                CariStr(E) = " and CL.TRADINGGRP >= '" & FrMReport.PicKKod1(E) & "' and CL.TRADINGGRP <= '" & FrMReport.PicKKod1(E) & "'"
            Else
                CariStr(E) = " and CL.TRADINGGRP = '" & FrMReport.PicKKod1(E) & "'"
            End If
        End If
    Else
        CariStr(E) = ""
    End If
'10..................
    E = 10
    If Len(FrMReport.PicKKod1(E).DisplayText) > 0 Then
        If CpiK(E) = "BENZER" Then CariStr(E) = " and CL.CODE LIKE '" & FrMReport.PicKKod1(E) & "%" & "'"
        If CpiK(E) = "EÞÝT" Then CariStr(E) = " and CL.CODE = '" & FrMReport.PicKKod1(E) & "'"
        If CpiK(E) = "VE/VEYA" Then CariStr(E) = " and CL.CODE IN '" & FrMReport.PicKKod1(E) & "'"
        If CpiK(E) = "ARASINDA" Then
            If Len(FrMReport.PicKKod2(E).DisplayText) > 0 Then
                CariStr(E) = " and CL.CODE >= '" & FrMReport.PicKKod1(E) & "' and CL.CODE <= '" & FrMReport.PicKKod1(E) & "'"
            Else
                CariStr(E) = " and CL.CODE = '" & FrMReport.PicKKod1(E) & "'"
            End If
        End If
    Else
        CariStr(E) = ""
    End If

'--------------------------------
CariStrAX = CariStr(6) & CariStr(7) & CariStr(7) & CariStr(8) & CariStr(9) & CariStr(10)
End Function

Function FStok_Yukle()
'özel kodlar yüklenir
FrMReport.PicKKod1(0).Items.Clear
FrMReport.PicKKod2(0).Items.Clear
Set RsEtG = New Recordset
RsEtG.Open "Select specode from LG_" & GFirma & "_ITEMS GROUP BY SPECODE ORDER BY specode", CnnMain, adOpenDynamic, adLockOptimistic
   Do While Not RsEtG.EOF
         If IsNull(RsEtG.Fields(0)) = False And Len(RsEtG.Fields(0)) > 0 Then FrMReport.PicKKod1(0).Items.Add RsEtG.Fields(0): FrMReport.PicKKod2(0).Items.Add RsEtG.Fields(0)
   RsEtG.MoveNext
   Loop
RsEtG.Close
'yetki kodlar yüklenir
FrMReport.PicKKod1(1).Items.Clear
FrMReport.PicKKod2(1).Items.Clear
Set RsEtG = New Recordset
RsEtG.Open "Select CYPHcode from LG_" & GFirma & "_ITEMS GROUP BY CYPHCODE ORDER BY CYPHcode", CnnMain, adOpenDynamic, adLockOptimistic
   Do While Not RsEtG.EOF
         If IsNull(RsEtG.Fields(0)) = False And Len(RsEtG.Fields(0)) > 0 Then FrMReport.PicKKod1(1).Items.Add RsEtG.Fields(0): FrMReport.PicKKod2(1).Items.Add RsEtG.Fields(0)
   RsEtG.MoveNext
   Loop
RsEtG.Close
'Grup Kodu
FrMReport.PicKKod1(2).Items.Clear
FrMReport.PicKKod2(2).Items.Clear
Set RsEtG = New Recordset
RsEtG.Open "Select STGRPcode from LG_" & GFirma & "_ITEMS GROUP BY STGRPCODE ORDER BY STGRPcode", CnnMain, adOpenDynamic, adLockOptimistic
   Do While Not RsEtG.EOF
         If IsNull(RsEtG.Fields(0)) = False And Len(RsEtG.Fields(0)) > 0 Then FrMReport.PicKKod1(2).Items.Add RsEtG.Fields(0): FrMReport.PicKKod2(2).Items.Add RsEtG.Fields(0)
   RsEtG.MoveNext
   Loop
RsEtG.Close
'Üretim Yeri
FrMReport.PicKKod1(3).Items.Clear
FrMReport.PicKKod2(3).Items.Clear
Set RsEtG = New Recordset
RsEtG.Open "Select LOGOID from LG_" & GFirma & "_ITEMS GROUP BY LOGOID ORDER BY LOGOID", CnnMain, adOpenDynamic, adLockOptimistic
   Do While Not RsEtG.EOF
         If IsNull(RsEtG.Fields(0)) = False And Len(RsEtG.Fields(0)) > 0 Then FrMReport.PicKKod1(3).Items.Add RsEtG.Fields(0): FrMReport.PicKKod2(3).Items.Add RsEtG.Fields(0)
   RsEtG.MoveNext
   Loop
RsEtG.Close
'Üretim Yeri
FrMReport.PicKKod1(4).Items.Clear
FrMReport.PicKKod2(4).Items.Clear
Set RsEtG = New Recordset
RsEtG.Open "Select M.CODE from LG_" & GFirma & "_ITEMS as S inner join LG_" & GFirma & "_MARK AS M ON S.MARKREF=M.LOGICALREF  GROUP BY M.CODE ORDER BY M.CODE", CnnMain, adOpenDynamic, adLockOptimistic
   Do While Not RsEtG.EOF
         If IsNull(RsEtG.Fields(0)) = False And Len(RsEtG.Fields(0)) > 0 Then FrMReport.PicKKod1(4).Items.Add RsEtG.Fields(0): FrMReport.PicKKod2(4).Items.Add RsEtG.Fields(0)
   RsEtG.MoveNext
   Loop
RsEtG.Close

'FrMReport.PicKKod1(4).Items.Clear
'FrMReport.PicKKod2(4).Items.Clear
'Set RsEtG = New Recordset
'RsEtG.Open "Select GTIPCODE from LG_" & GFirma & "_ITEMS GROUP BY GTIPCODE ORDER BY GTIPCODE", CnnMain, adOpenDynamic, adLockOptimistic
'   Do While Not RsEtG.EOF
'         If IsNull(RsEtG.Fields(0)) = False And Len(RsEtG.Fields(0)) > 0 Then FrMReport.PicKKod1(4).Items.Add RsEtG.Fields(0): FrMReport.PicKKod2(4).Items.Add RsEtG.Fields(0)
'   RsEtG.MoveNext
'   Loop
'RsEtG.Close
End Function

Function F_Konum_Al()
Dim isim(14) As String
Dim say As Integer
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
Function FALISFIYATI()
CnnMain.Execute "DELETE FROM A_MENAALIS"
Set RsEtG = New Recordset
RsEtG.Open "Select STOCKREF FROM LG_001_01_STLINE WHERE IOCODE=1 AND LINETYPE=0 AND TRCODE IN(1,14) GROUP BY STOCKREF", CnnMain, adOpenDynamic, adLockOptimistic
   Do While Not RsEtG.EOF
        Set RsEtM = New Recordset
        RsEtM.Open "Select LOGICALREF,(LINENET/AMOUNT)AS AFIYAT FROM LG_001_01_STLINE WHERE STOCKREF=" & RsEtG.Fields(0) & " AND IOCODE=1 AND LINETYPE=0  AND TRCODE IN(1,14) ORDER BY STOCKREF,DATE_ DESC", CnnMain, adOpenDynamic, adLockOptimistic
        If RsEtM.RecordCount > 0 Then
                CnnMain.Execute "INSERT INTO A_MENAALIS (STOKREF,AFIYAT) VALUES(" & RsEtG.Fields(0) & "," & RsEtM.Fields(1) & ")"
        End If
        RsEtM.Close
   RsEtG.MoveNext
   Loop
RsEtG.Close
End Function
Sub Main()
Dim TABLONO As Integer
On Error GoTo hatalim
     F_Konum_Al
     Set CnnMain = New Connection
     CnnMain.CursorLocation = adUseClient
     CnnMain.Open "Provider=SQLOLEDB.1;Password='" & GUserPass & "';Persist Security Info=False;User ID='" & GUserName & "';Initial Catalog=" & GKatalog & ";Data Source=" & GipNo & ""
     MesaJ = "Mentalsoft - " & GName
     FrMReport.Show
Exit Sub
hatalim:
MsgBox Err.Number & " - " & Err.Description
End Sub





