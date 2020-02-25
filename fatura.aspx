<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fatura.aspx.cs" Inherits="seyhandagitim.fatura" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>ADAGÜN DAĞITIM Plasiyer Modülü</title>

<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="js/jquery.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    <div>
    <table style="width:960px; background:#F0F0F0;margin-left:auto;margin-right:auto;" border="0">
        <tr style="background:#F0F0F0;">
            <td style="width:200px;text-align:center;">
  <asp:Label ID="Label1" runat="server" Width="100%" Text="Label" Font-Size="9pt"></asp:Label>
                 <asp:Label ID="Label2" runat="server" Width="100%" Text="Label" Font-Size="9pt"></asp:Label>
            </td>
             <td>
                  <telerik:RadMenu ID="RadMenu1" Runat="server" OnItemClick="RadMenu1_ItemClick" Skin="Telerik" Width="100%">
                     <Items>
                       
                           <telerik:RadMenuItem runat="server"  Text="Sepet" Width="110px" NavigateUrl="~/sepet.aspx">
                         </telerik:RadMenuItem>
                         <telerik:RadMenuItem runat="server" Text="Menü" Width="200px" NavigateUrl="~/plmain.aspx">
                         </telerik:RadMenuItem>
                     </Items>
                 </telerik:RadMenu>

            </td>
             
        </tr>
          <tr>
            <td  style="vertical-align:top;">
                                 <telerik:RadPanelBar ID="RadPanelBar1" Runat="server" Skin="Telerik" OnItemClick="RadPanelBar1_ItemClick" Width="95%">
                                    <Items>
                                        <telerik:RadPanelItem runat="server" Text="Sipariş Oluştur"  BorderColor="Transparent" Font-Names="Tahoma" Font-Size="13pt" Height="35px" Font-Overline="False" Font-Strikeout="False">
                                        </telerik:RadPanelItem>
                                        <telerik:RadPanelItem runat="server" Text="Cari Hareketler" NavigateUrl="~/cariextre1.aspx"   BorderColor="Transparent" Font-Names="Tahoma" Font-Size="13pt" Height="35px" Font-Overline="False" Font-Strikeout="False">
                                        </telerik:RadPanelItem>
                                        <telerik:RadPanelItem runat="server" Text="Çek Senet Kartları" NavigateUrl="~/ceksenet.aspx" BorderColor="Transparent" Font-Names="Tahoma" Font-Size="13pt" Height="35px" Font-Overline="False" Font-Strikeout="False">
                                        </telerik:RadPanelItem>
                                        <telerik:RadPanelItem runat="server" Text="Faturalar" NavigateUrl="~/fatura.aspx"  BorderColor="Transparent" Font-Names="Tahoma" Font-Size="13pt" Height="35px" Font-Overline="False" Font-Strikeout="False">
                                        </telerik:RadPanelItem>
                                        <telerik:RadPanelItem runat="server" Text="Siparişler" NavigateUrl="~/xsip1.aspx"  BorderColor="Transparent" Font-Names="Tahoma" Font-Size="13pt" Height="35px" Font-Overline="False" Font-Strikeout="False">
                                        </telerik:RadPanelItem>
                                          <telerik:RadPanelItem runat="server" Text="Tahsilat"   BorderColor="Transparent" Font-Names="Tahoma" NavigateUrl="odemeTahsil.aspx" Font-Size="13pt" Height="35px" Font-Overline="False" Font-Strikeout="False">
                                        </telerik:RadPanelItem>
                                         <telerik:RadPanelItem runat="server" Text="Geri"  BorderColor="Transparent" Font-Names="Tahoma" Font-Size="13pt" Height="35px" Font-Overline="False" Font-Strikeout="False">
                                        </telerik:RadPanelItem>
                                    </Items>
                                </telerik:RadPanelBar>
                              s</td>
            <td>
                  <asp:Panel ID="Panel1" runat="server" DefaultButton="Button10">
                             
                   <table style="width:600px;">
                    <tr>
                        <td style="width:50px;">
                            <asp:Label ID="Label8" runat="server" Text="Başlangıç" Font-Size="9pt"></asp:Label>                   </td>
                        <td style="width:5px;">
                            :
                        </td>
                        <td style="width:150px;">
                            <style>
                                .gizli
                                {
                                    display:none;
                                }
                            </style>
                                   <telerik:RadDatePicker ID="RadDatePicker1" Runat="server" WrapperTableCaption="">
                                       <Calendar EnableWeekends="True" FastNavigationNextText="&amp;lt;&amp;lt;" UseColumnHeadersAsSelectors="False" UseRowHeadersAsSelectors="False">
                                       </Calendar>
                                       <DateInput DateFormat="dd.MM.yyyy" DisplayDateFormat="dd.MM.yyyy" DisplayText="01.01.2015" LabelWidth="40%" value="01.01.2015">
                                           <EmptyMessageStyle Resize="None" />
                                           <ReadOnlyStyle Resize="None" />
                                           <FocusedStyle Resize="None" />
                                           <DisabledStyle Resize="None" />
                                           <InvalidStyle Resize="None" />
                                           <HoveredStyle Resize="None" />
                                           <EnabledStyle Resize="None" />
                                       </DateInput>
                                       <DatePopupButton HoverImageUrl="" ImageUrl="" />
                            </telerik:RadDatePicker>
                       
                        </td>
                        <td style="width:30px;">
 <asp:Label ID="Label9" runat="server" Text="Bitiş" Font-Size="9pt"></asp:Label>                   </td>
                    
                        </td>
                        <td style="width:5px;">
 :
                        </td>
                        <td style="width:150px;">
                            <telerik:RadDatePicker ID="RadDatePicker2" Runat="server" WrapperTableCaption="" OnSelectedDateChanged="RadDatePicker2_SelectedDateChanged">
                                <Calendar EnableWeekends="True" FastNavigationNextText="&amp;lt;&amp;lt;" UseColumnHeadersAsSelectors="False" UseRowHeadersAsSelectors="False">
                                </Calendar>
                                <DateInput DateFormat="dd.MM.yyyy" DisplayDateFormat="dd.MM.yyyy" DisplayText="01.01.2015" LabelWidth="40%" value="01.01.2015">
                                    <EmptyMessageStyle Resize="None" />
                                    <ReadOnlyStyle Resize="None" />
                                    <FocusedStyle Resize="None" />
                                    <DisabledStyle Resize="None" />
                                    <InvalidStyle Resize="None" />
                                    <HoveredStyle Resize="None" />
                                    <EnabledStyle Resize="None" />
                                </DateInput>
                                <DatePopupButton HoverImageUrl="" ImageUrl="" />
                            </telerik:RadDatePicker>
                        </td>
              <td style="width:100px; text-align:left;">
                  <style>
                      .gizli
                      {
                          display:none;
                      }
                  </style>
                   <asp:Button ID="Button10" runat="server" CssClass="gizli" Text="Sorgula" BorderColor="#DA251C" BorderStyle="Solid" BorderWidth="1px"  Width="100px" OnClick="Button10_Click" />
                  <telerik:RadButton ID="RadButton1" runat="server" Text="Sorgula" OnClick="Button10_Click"></telerik:RadButton>
						    
                    
						    	
                        </td>
                    </tr>
                  </asp:Panel>	
        <dx:ASPxGridView ID="grid" ClientInstanceName="grid" runat="server"
         KeyFieldName="LOGICALREF" AutoGenerateColumns="False" Width="100%" Theme="MetropolisBlue" SummaryText="Toplam">
   <Columns>
           
          
             
             
        <dx:GridViewDataTextColumn Caption="İşlem" Width="80" FieldName="DRMX" VisibleIndex="1">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="logıcalref" Visible="false" Width="80" FieldName="LOGICALREF" VisibleIndex="1">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataDateColumn Caption="Fat.Tarih" Width="80" FieldName="DATE_" VisibleIndex="0">
            <PropertiesDateEdit DisplayFormatString="dd/MM/yyyy">
            </PropertiesDateEdit>
        </dx:GridViewDataDateColumn>
        <dx:GridViewDataTextColumn Caption="Fat.No" Width="70" FieldName="FICHENO" VisibleIndex="2">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="Fat.Top" Width="80" FieldName="YEKUN" VisibleIndex="3">
            <HeaderStyle HorizontalAlign="Right" />
            <CellStyle HorizontalAlign="Right">
            </CellStyle>
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="Masraf" Visible="false" FieldName="MASRAF" VisibleIndex="4">
            <CellStyle HorizontalAlign="Right">
            </CellStyle>
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="İndirim" FieldName="INDIRIM" Width="80" VisibleIndex="5">
            <HeaderStyle HorizontalAlign="Right" />
            <CellStyle HorizontalAlign="Right">
            </CellStyle>
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="Kdv" FieldName="KDV" Width="80" PropertiesTextEdit-DisplayFormatString="{0:0.00}" VisibleIndex="6">
<PropertiesTextEdit DisplayFormatString="{0:0.00}"></PropertiesTextEdit>
            <HeaderStyle HorizontalAlign="Right" />
            <CellStyle HorizontalAlign="Right">
            </CellStyle>
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="Fat.Tutar" Width="100" PropertiesTextEdit-DisplayFormatString="{0:0,0.0} TL" FieldName="NETTOTAL" VisibleIndex="7">
<PropertiesTextEdit DisplayFormatString="{0:0,0.00} TL"></PropertiesTextEdit>
            <HeaderStyle HorizontalAlign="Right" />
            <CellStyle HorizontalAlign="Right">
            </CellStyle>
        </dx:GridViewDataTextColumn>
           
             
        </Columns>
           <Templates>
            <DetailRow>
              
                <dx:ASPxGridView ID="detailGrid" runat="server" Theme="MetropolisBlue" DataSourceID="SqlDataSource1"
                    Width="100%" AutoGenerateColumns="False" OnBeforePerformDataSelect="detailGrid_BeforePerformDataSelect" >
                     <Columns>
                         <dx:GridViewDataMemoColumn FieldName="URUNADI" Caption="Ürün Adı" VisibleIndex="0">
                         </dx:GridViewDataMemoColumn>
                        
                      
                         <dx:GridViewDataMemoColumn FieldName="URUNMIKTARI"  Caption="Miktarı" VisibleIndex="1" PropertiesMemoEdit-DisplayFormatString="{0:0}">
                             <PropertiesMemoEdit DisplayFormatString="">
                             </PropertiesMemoEdit>
                         </dx:GridViewDataMemoColumn>
                         <dx:GridViewDataMemoColumn FieldName="BIRIMFIYAT"  Caption="BR.Fiyat" VisibleIndex="2" PropertiesMemoEdit-DisplayFormatString="{0:0}">
                             <PropertiesMemoEdit DisplayFormatString="{0:,0.00} TL">
                             </PropertiesMemoEdit>
                         </dx:GridViewDataMemoColumn>
                                      <dx:GridViewDataMemoColumn FieldName="SATIRTUTARI"  Caption="Top.Tutar" VisibleIndex="3" PropertiesMemoEdit-DisplayFormatString="{0:0}">
                             <PropertiesMemoEdit DisplayFormatString="{0:,0.00} TL">
                             </PropertiesMemoEdit>
                         </dx:GridViewDataMemoColumn>
                          <dx:GridViewDataMemoColumn FieldName="INDOR"  Caption="İnd.Or" VisibleIndex="4" PropertiesMemoEdit-DisplayFormatString="{0:0}">
                             <PropertiesMemoEdit DisplayFormatString="%{0:,0} ">
                             </PropertiesMemoEdit>
                         </dx:GridViewDataMemoColumn>
                         <dx:GridViewDataMemoColumn FieldName="VATMATRAH"  Caption="Net.Tutar" VisibleIndex="5" PropertiesMemoEdit-DisplayFormatString="{0:0}">
                             <PropertiesMemoEdit DisplayFormatString="{0:,0.00} TL">
                             </PropertiesMemoEdit>
                         </dx:GridViewDataMemoColumn>
                        
                    </Columns>
                    
                    <Settings ShowFooter="True" />
                    <TotalSummary>
                
                        <dx:ASPxSummaryItem DisplayFormat="{0:0,0.00} TL" FieldName="SATIRTUTARI" SummaryType="Sum" />
                         <dx:ASPxSummaryItem DisplayFormat="{0:0,0.00} TL" FieldName="VATMATRAH" SummaryType="Sum" />
                        
                    </TotalSummary> 
                </dx:ASPxGridView>
            </DetailRow>
        </Templates>          
        <SettingsEditing EditFormColumnCount="3" Mode="PopupEditForm" />
        <SettingsPopup>
            <EditForm Width="600" />
        </SettingsPopup>
        <SettingsPager AlwaysShowPager="True" PageSize="20" />
                          <Settings  ShowFooter="True" />
                    <SettingsBehavior AllowFocusedRow="True" />
     <SettingsDetail ShowDetailRow="true" />
    </dx:ASPxGridView>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Password='1Qaz2wsx';User ID='Alpay';Initial Catalog=GODB;Data Source=78.188.25.84" SelectCommand="SELECT *,CASE WHEN VATMATRAH <>0 THEN ((SATIRTUTARI/VATMATRAH)-1)*100 END AS INDOR FROM [ISRG_FaturaDetaY_002] WHERE ([INVOICEREF] = @INVOICEREF) AND VATMATRAH<>0">
                      <SelectParameters>
                          <asp:SessionParameter Name="INVOICEREF" SessionField="LOGICALREF" Type="Int32" />
                      </SelectParameters>
                  </asp:SqlDataSource>
                  <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>
            </td>
             
        </tr>
         
    </table>
    </div>
    </form>
</body>
</html>
