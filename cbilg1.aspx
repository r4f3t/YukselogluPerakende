<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cbilg1.aspx.cs" Inherits="seyhandagitim.cbilg1" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxImageSlider" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
                          <style>
                            
                          </style>
                              <style>
                                  .orta
                                  {
                                  text-align:center;
                                  }

                              </style>
 <title>ADAGÜN DAĞITIM Plasiyer Modülü</title>

<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="js/jquery.min.js"></script>
</head>
<body style="background:#F0F0F0;">
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    <div>
    <table style="width:960px; background:#F0F0F0;margin-left:auto;margin-right:auto;" border="0">
        <tr style="background:#F0F0F0">
            <td style="width:200px; text-align:center;">
  <asp:Label ID="Label1"  runat="server" BackColor="#F0F0F0" Text="Label" Font-Size="9pt" Width="100%" ForeColor="Black"></asp:Label>
                <asp:Label ID="Label8"  runat="server" BackColor="#F0F0F0" Text="Label" Font-Size="9pt" Width="100%" ForeColor="Black"></asp:Label>
            </td>
             <td colspan="5">
                  <telerik:RadMenu ID="RadMenu1" Runat="server"  Skin="Telerik" Width="100%">
                     <Items>
                      
                           <telerik:RadMenuItem runat="server"  Text="Sepet" Width="110px" NavigateUrl="~/sepet.aspx">
                         </telerik:RadMenuItem>
                         <telerik:RadMenuItem runat="server" Text="Menü" Width="110px" NavigateUrl="~/plmain.aspx">
                         </telerik:RadMenuItem>
                          <telerik:RadMenuItem runat="server" Text="Geri">
                         </telerik:RadMenuItem>
                     </Items>
                 </telerik:RadMenu>

                 <asp:Label ID="Label2" Font-Size="9pt" Visible="false" runat="server" Text="Label"></asp:Label>

                  </td>
          
        </tr>
        <tr>
            <td rowspan="1" style="vertical-align:top;">
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
                <style>
                    .top
                    {
                        margin-top:0px;
                    }
                </style>

            </td>
             <td style="text-align:center;vertical-align:top;" colspan="5">
               
                  <table  style="background:#F0F0F0;width:100%;height:0px;">
                      <tr ><td class="auto-style2">
                          &nbsp;</td>
                          <td class="auto-style1">
  <asp:Label ID="Label7" runat="server" Font-Size="9pt">Ciro Toplam Tutar:</asp:Label>

  <asp:Label ID="Label9" runat="server" Font-Size="9pt" ForeColor="Black">Tutar</asp:Label>

                          </td>
                          <td style="vertical-align:middle;">
                              <style>
                                  .orta
                                  {
                                  text-align:center;
                                  }

                              </style>
                          </td >
                          <td style="vertical-align:middle;">
                              &nbsp;</td>
                      
                          <td style="vertical-align:middle;">
  <asp:Label ID="Label12" runat="server" Font-Size="9pt">Son Alım Tarihi:</asp:Label>
  <asp:Label ID="Label13" runat="server" Font-Size="9pt" ForeColor="Black">Tutar</asp:Label>
                          </td>
                         
                      </tr>
                  </table>
                  <table style="width:100%;"><tr>
                      <td >
                          <style>                              .auto-style1
                              {
                                  width: 182px;
                              }
                              .auto-style2
                              {
                                  width: 8%;
                              }
                          </style>
                          <telerik:RadGrid ID="grid1"  runat="server" AutoGenerateColumns="False" Skin="Telerik" DataSourceID="SqlDataSource1" CellSpacing="-1" GridLines="Both">
                              <ExportSettings>
                                  <Pdf PageWidth="">
                                  </Pdf>
                              </ExportSettings>
                              <MasterTableView Caption="Son 10 Alınan Ürün" DataSourceID="SqlDataSource1">



                                  <Columns>
                                      <telerik:GridBoundColumn DataField="URUNADI" FilterControlAltText="Filter column column" HeaderText="Ürün Adı" UniqueName="column">
<ColumnValidationSettings>
<ModelErrorMessage Text=""></ModelErrorMessage>
</ColumnValidationSettings>
                                          <ItemStyle Font-Size="7pt" />
                                      </telerik:GridBoundColumn>
                                      <telerik:GridBoundColumn DataField="URUNMIKTARI" FilterControlAltText="Filter column1 column" HeaderText="Miktar" UniqueName="column1">
<ColumnValidationSettings>
<ModelErrorMessage Text=""></ModelErrorMessage>
</ColumnValidationSettings>
                                      </telerik:GridBoundColumn>
                                      <telerik:GridBoundColumn  DataField="BIRIMFIYAT" DataFormatString="{0:0.00}" FilterControlAltText="Filter column2 column" HeaderText="Br. Fiyat" UniqueName="column2">
<ColumnValidationSettings>
<ModelErrorMessage Text=""></ModelErrorMessage>
</ColumnValidationSettings>
                                          <ItemStyle HorizontalAlign="Right" />
                                      </telerik:GridBoundColumn>
                                      <telerik:GridBoundColumn  DataField="SATIRTUTARI" FilterControlAltText="Filter column3 column" HeaderText="Top.Tutar" UniqueName="column3">
<ColumnValidationSettings>
<ModelErrorMessage Text=""></ModelErrorMessage>
</ColumnValidationSettings>
                                          <ItemStyle HorizontalAlign="Right" />
                                      </telerik:GridBoundColumn>
                                  </Columns>
                              </MasterTableView>
                          </telerik:RadGrid>
                          
                      </td>
                      <td style="vertical-align:top;">
                          <telerik:RadGrid ID="grid2"  runat="server" AutoGenerateColumns="False" Skin="Telerik" CellSpacing="-1" GridLines="Both" DataSourceID="SqlDataSource2">
                              <ExportSettings>
                                  <Pdf PageWidth="">
                                  </Pdf>
                              </ExportSettings>
                              <MasterTableView Caption="En Çok Alınan Ürünler" DataSourceID="SqlDataSource2">
                                  <Columns>
                                      <telerik:GridBoundColumn DataField="GRUP" FilterControlAltText="Filter column column" HeaderText="Tedarikçi" UniqueName="column">
<ColumnValidationSettings>
<ModelErrorMessage Text=""></ModelErrorMessage>
</ColumnValidationSettings>
                                          <ItemStyle Font-Size="7pt" />
                                      </telerik:GridBoundColumn>
                                       <telerik:GridBoundColumn DataField="GRUP2" FilterControlAltText="Filter column column" HeaderText="Grup" UniqueName="column">
<ColumnValidationSettings>
<ModelErrorMessage Text=""></ModelErrorMessage>
</ColumnValidationSettings>
                                          <ItemStyle Font-Size="7pt" />
                                      </telerik:GridBoundColumn>
                                      <telerik:GridBoundColumn DataField="URUNMIKTARI" FilterControlAltText="Filter column1 column" HeaderText="Miktar" UniqueName="column1">
<ColumnValidationSettings>
<ModelErrorMessage Text=""></ModelErrorMessage>
</ColumnValidationSettings>
                                          <ItemStyle HorizontalAlign="Right" />
                                      </telerik:GridBoundColumn>
                                  </Columns>
                              </MasterTableView>
                          </telerik:RadGrid>
                          
                      </td>
                         </tr>
                     
                  </table>

                    
                 
                
                          <asp:HiddenField ID="CariLogref" runat="server" />

                    
                 
                
                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Password='1Qaz2wsx';User ID='Alpay';Initial Catalog=GODB;Data Source=78.188.25.84" SelectCommand="SELECT     TOP 10 ST.LOGICALREF, dbo.LG_002_ITEMS.CODE, dbo.LG_002_ITEMS.NAME as URUNADI, ST.AMOUNT as URUNMIKTARI, ST.PRICE BIRIMFIYAT, ST.TOTAL as SATIRTUTARI, ST.DISTDISC, ST.VATAMNT, ST.VATMATRAH, 
                      ST.INVOICEREF
FROM         dbo.LG_002_01_STLINE AS ST INNER JOIN
                      dbo.LG_002_ITEMS ON ST.STOCKREF = dbo.LG_002_ITEMS.LOGICALREF INNER JOIN
                          (SELECT     LOGICALREF, DEFINITION_
                            FROM          dbo.LG_002_CLCARD) AS C ON ST.CLIENTREF = C.LOGICALREF
WHERE     (ST.CANCELLED = 0) AND (C.DEFINITION_ = @CARİADI)
ORDER BY ST.DATE_ DESC
">
                              <SelectParameters>
                                  <asp:ControlParameter ControlID="Label1" Name="CARİADI" PropertyName="Text" />
                              </SelectParameters>
                          </asp:SqlDataSource>

                    
                 
                
            </td>
            
        </tr>
      
          <tr>
              <td colspan="6" style="vertical-align:top;">
                  &nbsp;</td>
          
             
        </tr>
          <tr style="height:500px;">
                          <td>
               
  <asp:Label ID="Label3" runat="server" Font-Size="9pt" Visible="False"></asp:Label>

                 <asp:Label ID="Label4" runat="server" Font-Size="9pt" Visible="False"></asp:Label>

               
 <asp:Label ID="Label5" runat="server" Font-Size="9pt" Visible="False"></asp:Label>

                 
                 <asp:Label ID="Label6" runat="server" Font-Size="9pt" Visible="False"></asp:Label>
              
               
                                 </td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td>
                               <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Password='1Qaz2wsx';User ID='Alpay';Initial Catalog=GODB;Data Source=78.188.25.84" SelectCommand="SELECT     TOP 10 GRUP,GRUP2, URUNMIKTARI
FROM         (SELECT     dbo.LG_002_ITEMS.STGRPCODE AS GRUP,dbo.LG_002_ITEMS.SPECODE AS GRUP2, SUM(dbo.LG_002_01_STLINE.AMOUNT) 
                                              AS URUNMIKTARI
                       FROM          dbo.LG_002_01_STLINE INNER JOIN
                                              dbo.LG_002_ITEMS ON dbo.LG_002_01_STLINE.STOCKREF = dbo.LG_002_ITEMS.LOGICALREF INNER JOIN
                                                  (SELECT     LOGICALREF, DEFINITION_
                                                    FROM          dbo.LG_002_CLCARD) AS C ON dbo.LG_002_01_STLINE.CLIENTREF = C.LOGICALREF
                       WHERE      (dbo.LG_002_01_STLINE.CANCELLED = 0) AND (C.DEFINITION_=@CARİAD)
                       GROUP BY dbo.LG_002_ITEMS.STGRPCODE,dbo.LG_002_ITEMS.SPECODE) AS T
ORDER BY URUNMIKTARI DESC



">
                                   <SelectParameters>
                                       <asp:ControlParameter ControlID="Label1" Name="CARİAD" PropertyName="Text" />
                                   </SelectParameters>
                               </asp:SqlDataSource>
                          </td>
                           <td></td>

                      </tr>
    </table>
    </div>
    </form>
</body>
</html>
