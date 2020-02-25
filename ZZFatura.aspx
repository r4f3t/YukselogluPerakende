<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/LTEMASTER2.Master" CodeBehind="ZZFatura.aspx.cs" Inherits="seyhandagitim.ZZFatura" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<%@ Register TagPrefix="dx" Namespace="DevExpress.Web.ASPxCallbackPanel" Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxPopupControl" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>

<asp:Content ID="Content" runat="server" contentplaceholderid="ContentPlaceHolder2">
      <style>        .sol {
   float:left;
                 }
        .sag {
        float:right;
        }
        </style>
     
    <br />
    <table border="0" style="width:100%;"><tr><td style="text-align:right;"><dx:ASPxDateEdit CssClass="sag" ID="ASPxDateEdit1" runat="server" Theme="Office2003Blue" Height="27px"></dx:ASPxDateEdit></td><td style="text-align:left;"><dx:ASPxDateEdit ID="ASPxDateEdit2" CssClass="sol" runat="server" Theme="Office2003Blue" Height="27px"></dx:ASPxDateEdit><dx:ASPxButton ID="BtnSearch" runat="server" Text="Arama" Theme="MetropolisBlue" OnClick="BtnSearch_Click" Font-Names="Tahoma" Font-Size="11pt" Height="27px"></dx:ASPxButton></td></tr></table>

</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
     <script type="text/javascript">
         function ShowDetailPopup(customerID) {
             popup1.SetContentUrl('ZZFatura2.aspx?iref=' + customerID);
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
      <dx:ASPxPopupControl ID="ASPxPopupControl1" CssClass="orta"  Width="100%" Height="400px"  runat="server" ClientInstanceName="popup1" HeaderText="Satır İçerikleri" Maximized="True" Theme="Glass">
        <ClientSideEvents Shown="popup_Shown" />
        <ContentCollection>
            <dx:PopupControlContentControl runat="server" SupportsDisabledAttribute="True">
                <dx:ASPxCallbackPanel ID="ASPxCallbackPanel1" runat="server" Width="100%" ClientInstanceName="callbackPanel"
                    OnCallback="ASPxCallbackPanel1_Callback">
                    <PanelCollection>
               
                    </PanelCollection>
                </dx:ASPxCallbackPanel>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    <dx:ASPxGridView ID="GridFatura" runat="server" AutoGenerateColumns="False" KeyFieldName="LOGICALREF" Width="100%" Theme="Office2003Blue" OnHtmlDataCellPrepared="GridFatura_HtmlDataCellPrepared" EnableTheming="True">
        <Columns>
                 <dx:GridViewDataTextColumn Caption="İşlem" Width="80" FieldName="DRMX" VisibleIndex="1">
                     <HeaderStyle HorizontalAlign="Center" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="logıcalref" Visible="false" Width="80" FieldName="LOGICALREF" VisibleIndex="1">
            <HeaderStyle HorizontalAlign="Center" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataDateColumn Caption="Fat.Tarih" Width="80" FieldName="DATE_" VisibleIndex="0">
            <PropertiesDateEdit DisplayFormatString="dd/MM/yyyy">
            </PropertiesDateEdit>
            <HeaderStyle HorizontalAlign="Center" />
        </dx:GridViewDataDateColumn>
        <dx:GridViewDataTextColumn Caption="Fat.No" Width="70" FieldName="FICHENO" VisibleIndex="2">
            <HeaderStyle HorizontalAlign="Center" />
            <CellStyle Cursor="pointer">
            </CellStyle>
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="Fat.Top" Width="80" FieldName="YEKUN" VisibleIndex="3">
            <PropertiesTextEdit DisplayFormatString="#,0.#0 TL"></PropertiesTextEdit>
            <HeaderStyle HorizontalAlign="Center" />
            <CellStyle HorizontalAlign="Right">
            </CellStyle>
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="Masraf" Visible="false" FieldName="MASRAF" VisibleIndex="4">
            <HeaderStyle HorizontalAlign="Center" />
            <CellStyle HorizontalAlign="Right">
            </CellStyle>
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="İndirim" FieldName="INDIRIM" Width="80" VisibleIndex="5">
            <HeaderStyle HorizontalAlign="Center" />
            <CellStyle HorizontalAlign="Right">
            </CellStyle>
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="Kdv" FieldName="KDV" Width="80" PropertiesTextEdit-DisplayFormatString="{0:0.00}" VisibleIndex="6">
<PropertiesTextEdit DisplayFormatString="#,0.#0"></PropertiesTextEdit>
            <HeaderStyle HorizontalAlign="Center" />
            <CellStyle HorizontalAlign="Right">
            </CellStyle>
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="Yekün" Width="100" PropertiesTextEdit-DisplayFormatString="{0:0,0.0} TL" FieldName="NETTOTAL" VisibleIndex="7">
<PropertiesTextEdit DisplayFormatString="#,0.#0 TL"></PropertiesTextEdit>
            <HeaderStyle HorizontalAlign="Center" />
            <CellStyle HorizontalAlign="Right">
            </CellStyle>
        </dx:GridViewDataTextColumn> 
        </Columns>
        <SettingsPager Mode="ShowAllRecords">
        </SettingsPager>
        <Settings ShowFooter="True" />
                    <TotalSummary>
                
                        <dx:ASPxSummaryItem DisplayFormat="#,0.#0 TL" FieldName="NETTOTAL" SummaryType="Sum" />
                         <dx:ASPxSummaryItem DisplayFormat="#,0.#0 TL" FieldName="INDIRIM" SummaryType="Sum" />
                        
                    </TotalSummary> 
    </dx:ASPxGridView>
</asp:Content>


<asp:Content ID="Content3" runat="server" contentplaceholderid="SayfaAdi">
    </asp:Content>



