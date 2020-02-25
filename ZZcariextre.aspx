<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/LTEMASTER2.Master" CodeBehind="ZZcariextre.aspx.cs" Inherits="seyhandagitim.ZZcariextre" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<%@ Register TagPrefix="dx" Namespace="DevExpress.Web.ASPxCallbackPanel" Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxPopupControl" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>


<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <style>        .sol {
   float:left;
                 }
        .sag {
        float:right;
        }
        </style>
    

</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
 

    <script type="text/javascript">
        function ShowDetailPopup(customerID, DOCODE,Tarih) {
            popup1.SetContentUrl('ZZFatura2.aspx?docode=' + customerID);
            window.parent.popup1.SetHeaderText(DOCODE+' Nolu '+Tarih+' Tarihli Fatura İçeriği');
            popup1.Show();
        }
    </script>
     <style>
        .sol {
        float:left;
        }
        .sag {
        float:right;
        }
        .orta {
        margin-left:auto;
        margin-right:auto;
        text-align:center;
        vertical-align:central;
        
        }
    </style>
      <dx:ASPxPopupControl ID="ASPxPopupControl1" CssClass="orta"  Font-Size="15pt" ForeColor="#d10000"  Width="100%" Height="400px"  runat="server" ClientInstanceName="popup1" HeaderText="Satır İçerikleri" Maximized="True" Theme="Glass">
       <CloseButtonImage Height="65px" Width="90px" Url="dogan/btngeri.png" />
             <ClientSideEvents Shown="popup_Shown" />
        <ContentCollection>
            <dx:PopupControlContentControl ID="PopupControlContentControl1" runat="server" SupportsDisabledAttribute="True">
                <dx:ASPxCallbackPanel ID="ASPxCallbackPanel1" runat="server" Width="100%" ClientInstanceName="callbackPanel">
                    <PanelCollection>
               
                    </PanelCollection>
                </dx:ASPxCallbackPanel>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>



    <br />
      <div class="row text-center">
       <h3> Cari Ekstre Dökümü</h3>
    </div>
    <asp:Panel ID="PNLYetkiGiris" runat="server" Visible="false">
    <div class="row text-center">
        <div class="col-lg-3" style="margin:auto;">
            <div class="form-group">
                <label>Yetkili Şifresi Gerekli</label>
                <asp:TextBox ID="TXTYetkiSifre" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:Button ID="BTNYetkiGiris" runat="server" Text="Görüntüle" CssClass="btn-primary" OnClick="BTNYetkiGiris_Click" />
            </div>
        </div> 
    </div>
    </asp:Panel>
    <asp:Panel ID="PNLYetki" runat="server" Visible="false">
    <table border="0" style="width:100%;"><tr><td style="text-align:right;"><dx:ASPxDateEdit CssClass="sag" ID="ASPxDateEdit1" runat="server" Theme="Office2003Blue" Height="27px"></dx:ASPxDateEdit></td><td style="text-align:left;"><dx:ASPxDateEdit ID="ASPxDateEdit2" CssClass="sol" runat="server" Theme="Office2003Blue" Height="27px"></dx:ASPxDateEdit><dx:ASPxButton ID="BtnSearch" runat="server" Text="Arama" Theme="MetropolisBlue" OnClick="BtnSearch_Click" Font-Names="Tahoma" Font-Size="11pt" Height="27px"></dx:ASPxButton></td></tr></table>

    <dx:ASPxGridView ID="GridExtre"  OnHtmlDataCellPrepared="GridExtre_HtmlDataCellPrepared" runat="server" Width="100%" AutoGenerateColumns="False" Theme="Office2003Blue">
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
            <dx:GridViewDataTextColumn Caption="Fiş No" FieldName="TRANNO" VisibleIndex="2">
                <HeaderStyle HorizontalAlign="Center" Font-Names="Tahoma" Font-Size="11pt" />
                <CellStyle Font-Names="Tahoma" Font-Size="10pt">
                </CellStyle>
            </dx:GridViewDataTextColumn>

            <dx:GridViewDataTextColumn Caption="Açıklama" FieldName="ISLEMACIKLAMASI" VisibleIndex="4">
                <HeaderStyle HorizontalAlign="Center" Font-Names="Tahoma" Font-Size="11pt" />
                <CellStyle Font-Names="Tahoma" Font-Size="10pt">
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Alacak" FieldName="ALACAK" VisibleIndex="5">
                <PropertiesTextEdit DisplayFormatString="#,0.#0 TL">
                </PropertiesTextEdit>
                <HeaderStyle HorizontalAlign="Center" Font-Names="Tahoma" Font-Size="11pt" />
                <CellStyle Font-Names="Tahoma" Font-Size="10pt" HorizontalAlign="Right">
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Borç" FieldName="BORC" VisibleIndex="6">
                <PropertiesTextEdit DisplayFormatString="#,0.#0 TL">
                </PropertiesTextEdit>
                <HeaderStyle HorizontalAlign="Center" Font-Names="Tahoma" Font-Size="11pt" />
                <CellStyle Font-Names="Tahoma" Font-Size="10pt" HorizontalAlign="Right">
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="BAKIYE" Caption="Bakiye" VisibleIndex="7">
                <PropertiesTextEdit DisplayFormatString="#,0.#0 TL">
                </PropertiesTextEdit>
                <HeaderStyle HorizontalAlign="Center" Font-Names="Tahoma" Font-Size="11pt" />
                <CellStyle Font-Names="Tahoma" Font-Size="10pt" HorizontalAlign="Right">
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Belge No" FieldName="BelgeNo" VisibleIndex="3">
                <HeaderStyle HorizontalAlign="Center" Font-Names="Tahoma" Font-Size="11pt" />
                <CellStyle Font-Names="Tahoma" Font-Size="10pt">
                </CellStyle>
            </dx:GridViewDataTextColumn>
        </Columns>
          <Settings VerticalScrollBarMode="Visible" VerticalScrollableHeight="400" />
        <SettingsPager Mode="ShowAllRecords">
        </SettingsPager>

    </dx:ASPxGridView>
        </asp:Panel>
</asp:Content>


<asp:Content ID="Content3" runat="server" contentplaceholderid="SayfaAdi">
  </asp:Content>



