<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ZZPlCariextre.aspx.cs" Inherits="seyhandagitim.ZZPlCariextre" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <style>        .sol {
   float:left;
                 }
        .sag {
        float:right;
        }
        </style>
    <table border="0" style="width:100%;"><tr><td style="text-align:right;">&nbsp;</td><td style="text-align:left;">&nbsp;</td></tr></table>
    <dx:ASPxGridView ID="GridExtre" runat="server" Width="100%" AutoGenerateColumns="False">
        <Columns>
            <dx:GridViewDataTextColumn Caption="İşlem Tarihi" FieldName="ISLEMTARIHI" VisibleIndex="0">
                <PropertiesTextEdit DisplayFormatString="{0:dd/MM/yyyy}">
                </PropertiesTextEdit>
                <HeaderStyle HorizontalAlign="Center" Font-Names="Tahoma" Font-Size="11pt" />
                <CellStyle Font-Names="Tahoma" Font-Size="10pt">
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="İşlem Türü" FieldName="ISLEMTURU" VisibleIndex="1">
                <HeaderStyle HorizontalAlign="Center" Font-Names="Tahoma" Font-Size="11pt" />
                <CellStyle Font-Names="Tahoma" Font-Size="10pt">
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Belge No" FieldName="TRANNO" VisibleIndex="2">
                <HeaderStyle HorizontalAlign="Center" Font-Names="Tahoma" Font-Size="11pt" />
                <CellStyle Font-Names="Tahoma" Font-Size="10pt">
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Açıklama" FieldName="ISLEMACIKLAMASI" VisibleIndex="3">
                <HeaderStyle HorizontalAlign="Center" Font-Names="Tahoma" Font-Size="11pt" />
                <CellStyle Font-Names="Tahoma" Font-Size="10pt">
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Alacak" FieldName="ALACAK" VisibleIndex="4">
                <PropertiesTextEdit DisplayFormatString="#,0.#0 TL">
                </PropertiesTextEdit>
                <HeaderStyle HorizontalAlign="Center" Font-Names="Tahoma" Font-Size="11pt" />
                <CellStyle Font-Names="Tahoma" Font-Size="10pt" HorizontalAlign="Right">
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Borç" FieldName="BORC" VisibleIndex="5">
                <PropertiesTextEdit DisplayFormatString="#,0.#0 TL">
                </PropertiesTextEdit>
                <HeaderStyle HorizontalAlign="Center" Font-Names="Tahoma" Font-Size="11pt" />
                <CellStyle Font-Names="Tahoma" Font-Size="10pt" HorizontalAlign="Right">
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="BAKIYE" Caption="Bakiye" VisibleIndex="6">
                <PropertiesTextEdit DisplayFormatString="#,0.#0 TL">
                </PropertiesTextEdit>
                <HeaderStyle HorizontalAlign="Center" Font-Names="Tahoma" Font-Size="11pt" />
                <CellStyle Font-Names="Tahoma" Font-Size="10pt" HorizontalAlign="Right">
                </CellStyle>
            </dx:GridViewDataTextColumn>
        </Columns>

        <SettingsPager Mode="ShowAllRecords">
        </SettingsPager>

    </dx:ASPxGridView>
    </div>
    </form>
</body>
</html>
