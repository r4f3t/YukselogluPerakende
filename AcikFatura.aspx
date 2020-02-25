<%@ Page Language="C#" MasterPageFile="~/LTEMASTER2.Master" AutoEventWireup="true" CodeBehind="AcikFatura.aspx.cs" Inherits="seyhandagitim.AcikFatura" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<%@ Register TagPrefix="dx" Namespace="DevExpress.Web.ASPxCallbackPanel" Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxPopupControl" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="SayfaAdi">
   
</asp:Content>

<asp:Content ID="Content2" runat="server"  contentplaceholderid="ContentPlaceHolder2">

    

    <script type="text/javascript">
        function ShowDetailPopup(customerID, DOCODE, Tarih) {
            popup1.SetContentUrl('ZZFatura2.aspx?docode=' + customerID);
            window.parent.popup1.SetHeaderText(DOCODE + ' Nolu ' + Tarih + ' Tarihli Fatura İçeriği');
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
       <h3> Kapanmamış Fatura Listesi</h3>
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
      Açık Faturalar
    <dx:ASPxGridView ID="GridFatura" OnHtmlDataCellPrepared="GridFatura_HtmlDataCellPrepared"  runat="server" SettingsPager-Mode="ShowAllRecords" AutoGenerateColumns="False" EnableTheming="True" Theme="Office2003Blue" Width="100%">
        <Columns>
            <dx:GridViewDataTextColumn Caption="Fatura Numarası" FieldName="FICHENO" VisibleIndex="1" Visible="False">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn Caption="Tarih" FieldName="DATE_" VisibleIndex="2">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="Tutar" VisibleIndex="3">
            <PropertiesTextEdit DisplayFormatString="{0:0,0.0}"></PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Ödenen" FieldName="PAID" ReadOnly="True" VisibleIndex="4">
                 <PropertiesTextEdit DisplayFormatString="{0:0,0.0}"></PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Borc" ReadOnly="True" VisibleIndex="6">
                 <PropertiesTextEdit DisplayFormatString="{0:0,0.0}"></PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="FICHEREF" Visible="False" VisibleIndex="5">
                 <PropertiesTextEdit DisplayFormatString="{0:0,0.0}"></PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="BelgeNo" FieldName="DOCODE" VisibleIndex="0">
            </dx:GridViewDataTextColumn>
        </Columns>
         <Settings  VerticalScrollBarMode="Visible" VerticalScrollableHeight="400" />
<SettingsPager Mode="ShowAllRecords"></SettingsPager>

        <Settings ShowFooter="true" />
        <TotalSummary>
            <dx:ASPxSummaryItem FieldName="Borc" SummaryType="Sum"  DisplayFormat="{0:0,0.0}" />
            <dx:ASPxSummaryItem FieldName="Tutar" SummaryType="Sum"  DisplayFormat="{0:0,0.0}" />
            <dx:ASPxSummaryItem FieldName="PAID" SummaryType="Sum"   DisplayFormat="{0:0,0.0}"/>
        </TotalSummary>
    </dx:ASPxGridView>
</asp:Panel>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KOZAConnectionString %>" SelectCommand="select I.FICHENO,I.DATE_,I.NETTOTAL as Tutar,isnull(P.PAID,0) as PAID,I.NETTOTAL-isnull(P.PAID,0) as Borc,P.FICHEREF from LG_206_01_INVOICE as I left outer join (select isnull(sum(PAID),0) as PAID,FICHEREF from LG_206_01_PAYTRANS where TRCODE&lt;&gt;1 AND CANCELLED=0  group by FICHEREF) as P on I.LOGICALREF=P.FICHEREF where I.CLIENTREF=58436   and I.NETTOTAL&gt;isnull(P.PAID,0) order by DATE_ asc"></asp:SqlDataSource>

</asp:Content>


