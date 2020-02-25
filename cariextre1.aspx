<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cariextre1.aspx.cs" Inherits="seyhandagitim.cariextre1" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
  <asp:Label ID="Label1" runat="server" Text="Label" Width="100%" Font-Size="9pt"></asp:Label>
                  <asp:Label ID="Label2" runat="server" Text="Label" Width="100%" Font-Size="9pt"></asp:Label>

            </td>
             <td>
                  <telerik:RadMenu ID="RadMenu1" Runat="server" OnItemClick="RadMenu1_ItemClick" Skin="Telerik" Width="100%">
                     <Items>
                       
                           <telerik:RadMenuItem runat="server"  Text="Sepet" Width="110px" NavigateUrl="~/sepet.aspx">
                         </telerik:RadMenuItem>
                         <telerik:RadMenuItem runat="server" Text="Menü" Width="110px" NavigateUrl="~/plmain.aspx">
                         </telerik:RadMenuItem>
                        
                     </Items>
                 </telerik:RadMenu>

                 &nbsp;</td>
             
        </tr>
          <tr>
            <td style="vertical-align:top;">
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
                </td>
            <td style="vertical-align:top;">
                 <asp:Panel ID="Panel1" runat="server" DefaultButton="Button10">
                             
                   <table style="width:600px;">
                    <tr>
                        <td style="width:50px;">
                            <asp:Label ID="Label8" runat="server" Text="Başlangıç" Font-Size="9pt"></asp:Label>                   </td>
                        <td style="width:5px;">
                            :
                        </td>
                        <td style="width:80px;">
                            <style>
                                .gizli
                                {
                                    display:none;
                                }
                            </style>
                                   <telerik:RadDatePicker ID="RadDatePicker1" Runat="server" WrapperTableCaption="" AutoPostBack="True" Culture="tr-TR" OnSelectedDateChanged="RadDatePicker1_SelectedDateChanged">
                                       <Calendar EnableWeekends="True" FastNavigationNextText="&amp;lt;&amp;lt;" UseColumnHeadersAsSelectors="False" UseRowHeadersAsSelectors="False">
                                       </Calendar>
                                       <DateInput DateFormat="dd.MM.yyyy" DisplayDateFormat="dd.MM.yyyy" DisplayText="01.01.2015" LabelWidth="40%"  AutoPostBack="True">
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
                        <td style="width:90px;">
                            <telerik:RadDatePicker ID="RadDatePicker2" Runat="server" WrapperTableCaption="" AutoPostBack="True" Culture="tr-TR" OnSelectedDateChanged="RadDatePicker2_SelectedDateChanged">
                                <Calendar EnableWeekends="True" FastNavigationNextText="&amp;lt;&amp;lt;" UseColumnHeadersAsSelectors="False" UseRowHeadersAsSelectors="False">
                                </Calendar>
                                <DateInput AutoPostBack="True" DateFormat="dd.MM.yyyy" DisplayDateFormat="dd.MM.yyyy" LabelWidth="40%">
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
                  <telerik:RadButton ID="RadButton1" OnClick="Button10_Click" Width="100" runat="server" Text="Sorgula"></telerik:RadButton>
						    
                    
						    	
                        </td>
                    </tr>
                 </asp:Panel>	
                </table>
                       
          
             
        <telerik:RadGrid ID="grid" runat="server" PageSize="20" AutoGenerateColumns="False" Skin="Telerik" Width="700px" AllowPaging="True" OnLoad="grid_Load" ShowFooter="True">
            <ExportSettings>
                <Pdf PageWidth="">
                </Pdf>
            </ExportSettings>
            <MasterTableView>
                <Columns>
                    <telerik:GridBoundColumn DataField="ISLEMTARIHI" DataFormatString="{0:dd/MM/yyyy}"  FilterControlAltText="Filter column column" HeaderText="İşlem Tarihi" UniqueName="column">
                        <ColumnValidationSettings>
                            <ModelErrorMessage Text="" />
                        </ColumnValidationSettings>
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="ISLEMTURU" FilterControlAltText="Filter column1 column" HeaderText="İşlem Türü" UniqueName="column1">
                        <ColumnValidationSettings>
                            <ModelErrorMessage Text="" />
                        </ColumnValidationSettings>
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="TRANNO" FilterControlAltText="Filter column2 column" HeaderText="FişNo" UniqueName="column2">
                        <ColumnValidationSettings>
                            <ModelErrorMessage Text="" />
                        </ColumnValidationSettings>
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="VADE" DataFormatString="{0:dd/MM/yyyy}"  FilterControlAltText="Filter column5 column" HeaderText="Ort.Vade" UniqueName="column5">
                        <ColumnValidationSettings>
                            <ModelErrorMessage Text="" />
                        </ColumnValidationSettings>
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="ISLEMACIKLAMASI" FilterControlAltText="Filter column6 column" HeaderText="Fiş Açıklaması" UniqueName="column6">
                        <ColumnValidationSettings>
                            <ModelErrorMessage Text="" />
                        </ColumnValidationSettings>
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="ALACAK" DataFormatString="{0:0,0} TL" FilterControlAltText="Filter column4 column" HeaderText="Borç" UniqueName="column4">
                        <ColumnValidationSettings>
                            <ModelErrorMessage Text="" />
                        </ColumnValidationSettings>
                        <ItemStyle HorizontalAlign="Right" />
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="BORC" DataFormatString="{0:0,0} TL"  FilterControlAltText="Filter column3 column" HeaderText="Alacak" UniqueName="column3">
                        <ColumnValidationSettings>
                            <ModelErrorMessage Text="" />
                        </ColumnValidationSettings>
                        <ItemStyle HorizontalAlign="Right" />
                    </telerik:GridBoundColumn> 
                    <telerik:GridBoundColumn DataField="BAKIYE" DataFormatString="{0:0,0} TL"  FilterControlAltText="Filter column8 column" HeaderText="Bakiye" UniqueName="column8" Aggregate="Last" FooterAggregateFormatString="{0:0,0} TL">
                        <ColumnValidationSettings>
                            <ModelErrorMessage Text="" />
                        </ColumnValidationSettings>
                        <FooterStyle HorizontalAlign="Right" />
                        <ItemStyle HorizontalAlign="Right" />
                    </telerik:GridBoundColumn>
                </Columns>
                
            </MasterTableView>
            <PagerStyle Mode="NumericPages" />
        </telerik:RadGrid>
               </td>
        </tr>
         
    </table>
    </div>
    </form>
</body>
</html>
