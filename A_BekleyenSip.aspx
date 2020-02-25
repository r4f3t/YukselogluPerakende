<%@ Page Language="C#" MasterPageFile="~/LTEMASTER2.Master" AutoEventWireup="true" CodeBehind="A_BekleyenSip.aspx.cs" Inherits="seyhandagitim.A_BekleyenSip" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <div class="row text-center">
   
    
       <h3> Bekleyen Siparişler</h3>
  
        
        </div>
    <div class="row">
        <div class="col-lg-3">
            <div class="input-group">
                <label>Şipariş Durumu</label>
                <dx:ASPxComboBox ID="CMBSipDurumu" runat="server" CssClass="form-control" AutoPostBack="True" SelectedIndex="0">
                    <Items>
                        <dx:ListEditItem Selected="True" Text="Hepsi" Value="" />
                        <dx:ListEditItem Text="Onay Bekliyor" Value="1" />
                     <%--   <dx:ListEditItem Text="2" Value="2"  />
                        <dx:ListEditItem Text="3" Value="3" />--%>
                        <dx:ListEditItem Text="Sevk Edilecek Sipariş" Value="4" />
                    </Items>
                </dx:ASPxComboBox>
            </div>
        </div>
    </div>


    <dx:ASPxGridView ID="GridSips" SettingsPager-Mode="ShowAllRecords" Settings-ShowGroupPanel="true"  Width="100%" runat="server" AutoGenerateColumns="False" EnableTheming="True" Theme="Office2003Blue">
        <Columns>
            <dx:GridViewDataTextColumn Caption="Belge No" FieldName="DOCODE" VisibleIndex="0">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Tarih" FieldName="DATE_" VisibleIndex="1">
                  <PropertiesTextEdit DisplayFormatString="{0:dd/MM/yyyy}"></PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Ürün Adı" FieldName="NAME" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Kodu" FieldName="CODE" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Miktar" FieldName="Kalan" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Br.Fiyat" FieldName="PRICE" Visible="false" VisibleIndex="5">
                <PropertiesTextEdit DisplayFormatString="{0:0,0.0}"></PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
        </Columns>
          <Settings  VerticalScrollBarMode="Visible" VerticalScrollableHeight="400" />
    </dx:ASPxGridView>




</asp:Content>

