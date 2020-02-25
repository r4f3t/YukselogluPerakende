<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ZZceksenet.aspx.cs" MasterPageFile="~/LTEMASTER2.Master" Inherits="seyhandagitim.ZZceksenet" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <style>        .sol {
   float:left;
                 }
        .sag {
        float:right;
        }
        </style> 
     <table border="0" style="width:100%;"><tr><td style="text-align:right;"><dx:ASPxDateEdit CssClass="sag" ID="ASPxDateEdit1" runat="server" Theme="Office2003Blue" Height="27px"></dx:ASPxDateEdit></td><td style="text-align:left;"><dx:ASPxDateEdit ID="ASPxDateEdit2" CssClass="sol" runat="server" Theme="Office2003Blue" Height="27px"></dx:ASPxDateEdit><dx:ASPxButton ID="BtnSearch" runat="server" Text="Arama" Theme="MetropolisBlue" OnClick="BtnSearch_Click" Font-Names="Tahoma" Font-Size="11pt" Height="27px"></dx:ASPxButton></td></tr></table>

    <dx:ASPxGridView ID="GridCek" runat="server" Width="100%" AutoGenerateColumns="False" Theme="Office2003Blue">
        <Columns>
            <dx:GridViewDataTextColumn FieldName="LOGICALREF" VisibleIndex="0" Visible="False">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Tarih" VisibleIndex="1">
                <PropertiesTextEdit DisplayFormatString="dd.MM.yyyy">
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Portföy_No" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Bankasi" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Açıklama" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Vadesi" VisibleIndex="5">
                      <PropertiesTextEdit DisplayFormatString="dd.MM.yyyy">
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="SubeNo" VisibleIndex="6">
            </dx:GridViewDataTextColumn>
             <dx:GridViewDataTextColumn FieldName="HesapNo" VisibleIndex="7">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="SeriNo" VisibleIndex="8">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Tutar" PropertiesTextEdit-DisplayFormatString="#,0.#0 TL" VisibleIndex="9">
            </dx:GridViewDataTextColumn>
        </Columns>

        <SettingsPager Mode="ShowAllRecords">
        </SettingsPager>

    </dx:ASPxGridView>


</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="SayfaAdi">
</asp:Content>



