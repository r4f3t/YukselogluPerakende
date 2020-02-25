<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind="ZZplmain.aspx.cs" MasterPageFile="~/LTEMASTER.Master" Inherits="seyhandagitim.ZZplmain" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<%@ Register TagPrefix="dx" Namespace="DevExpress.Web.ASPxCallbackPanel" Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxPopupControl" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <br />
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <asp:Label ID="Label1" visible="false" runat="server" Text="Label"></asp:Label>
   <style>
      .button2 {
  display: inline-block;
  border-radius: 4px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 20px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button2 span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button2 span:after {
  content: '»';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button2:hover span {
  padding-right: 25px;
}

.button2:hover span:after {
  opacity: 1;
  right: 0;
}
   </style>
   <script type="text/javascript">
       function ShowDetailPopup(customerID) {
           popup1.SetContentUrl('ZZFatura2.aspx?clref=' + customerID);
           popup1.Show();
       }
       function ShowDetailPopup2(customerID) {
           popup1.SetContentUrl('ZZPlCariextre.aspx?clref=' + customerID);
           popup1.Show();
       }
    </script>

         <dx:ASPxPopupControl ID="ASPxPopupControl1" CssClass="orta"  Width="100%" Height="400px"  runat="server" ClientInstanceName="popup1" HeaderText="Satır İçerikleri" Maximized="True" Theme="Glass">
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

    <div class="col-lg-3">
        <dx:ASPxComboBox ID="CMBSepetSart" runat="server" AutoPostBack="true" OnSelectedIndexChanged="CMBSepetSart_SelectedIndexChanged" SelectedIndex="1">
            <Items>
                <dx:ListEditItem Text="Sepette Ürün Olanlar" Value="1" />
                <dx:ListEditItem Selected="True" />
            </Items>
        </dx:ASPxComboBox>
    </div>


<dx:ASPxGridView ID="GridCari"  runat="server"  KeyFieldName="LOGREF" AutoGenerateColumns="False" Width="100%" Theme="DevEx" OnCustomButtonCallback="GridCari_CustomButtonCallback" OnHtmlDataCellPrepared="GridCari_HtmlDataCellPrepared">
        <Columns>
            <dx:GridViewCommandColumn ButtonType="Image" VisibleIndex="0" Width="10px" AllowDragDrop="False">
                <ClearFilterButton Visible="True">
                </ClearFilterButton>
                   <CustomButtons>
                        <dx:GridViewCommandColumnCustomButton ID="CBtnSec"  Visibility="AllDataRows">
                            <Image Height="25px" Url="~/icons/Fatcow-Farm-Fresh-Bullet-arrow-right.ico" Width="20px">
                            </Image>
                        </dx:GridViewCommandColumnCustomButton>
                    </CustomButtons>
                <HeaderStyle Font-Size="1px" />
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn Width="70%" FieldName="Firma_Bilgisi" Caption="Cari Adı" VisibleIndex="1">
                <CellStyle Font-Names="Tahoma" Font-Size="10pt" Cursor="pointer">
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn  Width="25%"  FieldName="KODU" Caption="Cari Kodu" VisibleIndex="2">
                <HeaderStyle HorizontalAlign="Left" />
             <CellStyle Font-Names="Tahoma" Font-Size="10pt" HorizontalAlign="Left">
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Width="15%" FieldName="Sehir" Caption="Şehir" VisibleIndex="4" Visible="False">
                <HeaderStyle HorizontalAlign="Left" />
                <CellStyle Font-Names="Tahoma" Font-Size="10pt" HorizontalAlign="Left">
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="LOGREF" Caption="LOGREF" Visible="false" VisibleIndex="6">
                <CellStyle Font-Names="Tahoma" Font-Size="10pt">
                </CellStyle>
            </dx:GridViewDataTextColumn> 
            <dx:GridViewDataTextColumn Caption="Son Sepet Tarihi" FieldName="SonTarih" VisibleIndex="3">
                  <PropertiesTextEdit DisplayFormatString="{0:dd/MM/yyyy hh:mm}">
                  </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
        </Columns>
        <SettingsPager Summary-Text="Sayfa Seçiniz"  AlwaysShowPager="True" ShowSeparators="True" PageSize="50">
            <AllButton Text="Hepsi" Visible="True">
                <Image Width="10px" Height="10px" Url="~/icons/Fatcow-Farm-Fresh-Bullet-arrow-right.ico">
                </Image>
            </AllButton>
            <FirstPageButton Visible="True">
            </FirstPageButton>
            <LastPageButton Visible="True">
            </LastPageButton>

<Summary Text="Sayfa Se&#231;iniz"></Summary>

            <PageSizeItemSettings Caption="Sayfa Boyutu" Visible="True">
            </PageSizeItemSettings>
        </SettingsPager>
        <Settings ShowFooter="true" ShowFilterRow="True" />
        <SettingsText FilterBarClear="Temizle" CommandClearFilter="Temizle" />
          <TotalSummary>
            <dx:ASPxSummaryItem   DisplayFormat="Toplam:#,0.#0 TL" FieldName="Bakiye"  SummaryType="Sum" />
        </TotalSummary>
    </dx:ASPxGridView></asp:Content>



