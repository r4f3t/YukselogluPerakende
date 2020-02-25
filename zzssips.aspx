<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterAna.Master" CodeBehind="zzssips.aspx.cs" Inherits="seyhandagitim.zzssips" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>


<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>


<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" Theme="DevEx" Width="100%">
        <Columns>
            <dx:GridViewDataTextColumn Caption="Sipariş No" FieldName="FICHENO" VisibleIndex="0">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Ürün Adı" FieldName="UrunAd" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Ürün Kodu" FieldName="URUNKODU" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Miktar" FieldName="Miktar" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Br.Fiyat" FieldName="BRFiyat" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Tutar" FieldName="Tutar" VisibleIndex="6">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Sip. Tarihi" FieldName="DATE_" VisibleIndex="1">
                <PropertiesTextEdit DisplayFormatString="dd/MM/yyyy">
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
        </Columns>
        <SettingsPager Mode="ShowAllRecords">
        </SettingsPager>
    </dx:ASPxGridView>
</asp:Content>



