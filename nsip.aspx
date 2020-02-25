<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="nsip.aspx.cs" Inherits="seyhandagitim.nsip" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView.Export" tagprefix="dx" %>


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
    <script type="text/javascript">
        function onlyNumber(e) {
            var keyCode = event.keyCode;
            if ((keyCode < 46 || keyCode > 57) && keyCode != 8 && keyCode != 9 && keyCode != 0 && keyCode != 47 && (keyCode < 96 || keyCode > 105)) {
                returnfalse;
            }
        }
    </script>    
    <script type="text/javascript" id="telerikClientEvents1">
//<![CDATA[

	function RadDropDownList1_SelectedIndexChanged(sender,args)
	{
	    var textboxId = document.getElementById("BirimTXT");
	    var e = document.getElementById("RadDropDownList1");
	    var strUser = e.options[e.selectedIndex].value;
	    textboxId.value = strUser;
	    textboxId.focus();
	}
//]]>
</script>    
</head>
<body>
    <form id="form1" runat="server">
          <style>
            .sag {
            float:right;
            }
            .sol {
            float:left;
            }
        </style>
    <div>
    <table style="width:960px; background:#F0F0F0;margin-left:auto;margin-right:auto;" border="0">
        <tr style="background:#F0F0F0;">
            <td style="width:220px;text-align:center;">
  <asp:Label ID="Label1" runat="server" Text="Label" Width="100%" Font-Size="9pt"></asp:Label>
                <asp:Label ID="Label3" runat="server" Text="Label" Width="100%" Font-Size="9pt"></asp:Label>
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

                 &nbsp;</td>
             
        </tr>
          <tr>
            <td style="vertical-align:top;width:220px;">
                <ul class="nav" id="Ul1">
                           <li>
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
                                 </li>
						 		
						 		 
						 		
						 							
                    <asp:Label ID="Label7" runat="server" Text="Label" Visible="False"></asp:Label>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TIGER2ConnectionString %>" SelectCommand="SELECT ITM.LOGICALREF, ITM.CODE AS Ürün_Kodu,ITM.NAME as Ürün_Adı,ITM.SPecode as Urun_Ozel,ISNULL(SAF.OAT,0) AS SAFiyatı,SAF.TARIH as SATarihi,ISNULL(PR1.PRICE,0)AS SatisFiyati,isnull(st.onhand,0)as G_Stok,isnull(st.RESERVED,0)AS F_Stok,ISNULL(SATILAN,0)AS Top_Satıs FROM (SELECT LOGICALREF,CODE,NAME,SPECODE,PRODUCERCODE FROM LG_015_ITEMS WHERE ACTIVE=0 AND CLASSTYPE = 0) as ITM left outer join (SELECT STOCKREF,SUM(ONHAND)AS ONHAND,SUM(RESERVED) AS RESERVED,SUM(SALAMNT) AS SATILAN FROM       LG_015_01_STINVTOT WHERE INVENNO=-1 GROUP BY STOCKREF) as ST ON ITM.LOGICALREF=ST.STOCKREF LEFT OUTER JOIN ASRG_SONALISFIYATI AS SAF ON ITM.LOGICALREF=SAF.STOCKREF LEFT OUTER JOIN dbo.LG_015_PRCLIST AS PR1 ON ITM.LOGICALREF=PR1.CARDREF AND PR1.PTYPE=2 AND PR1.BEGDATE&lt;=GETDATE() AND PR1.ENDDATE&gt;=GETDATE() AND LEN(PR1.CLIENTCODE)=0 where ITM.LOGICALREF&gt;0 and(ITM.NAME  Like '% @NAME %') and( ITM.CODE Like '% @CODE %')"   UpdateCommand="UPDATE ZTbL_Siparisler SET [Miktar] = @Miktar WHERE [LogicalReF] = @LogicalReF" InsertCommand="insert into ztbl_siparisler(sipId,CariId,UrunId,SipNo,Miktar,UserId,Tarih,AddDate,Kampanya,BFiyat) values(@sipId,@CariId,@UrunId,@SipNo,1,@UserId,@Tarih,@AddDate,0,@BFiyat)" >
                       <SelectParameters>

                       </SelectParameters>
                             <InsertParameters>
                                 <asp:Parameter Name="sipId" />
                                 <asp:Parameter Name="CariId" />
                                 <asp:Parameter Name="UrunId" />
                                 <asp:Parameter Name="SipNo" />
                                 <asp:Parameter Name="UserId" />
                                 <asp:Parameter Name="Tarih" />
                                 <asp:Parameter Name="AddDate" />
                                 <asp:Parameter Name="BFiyat" />
                             </InsertParameters>
                            <UpdateParameters>
                <asp:Parameter Name="Miktar" Type="Int32" />
          
                <asp:Parameter Name="Logicalref" Type="Int32" />
          
            </UpdateParameters>
                    </asp:SqlDataSource>
						
						 		 
						 		
						 							
							
                                      							
							        <asp:HiddenField ID="sipId" runat="server" />
                                    <asp:HiddenField ID="cariref" runat="server" />
                                    <asp:HiddenField ID="UserId" runat="server" />
                                    <asp:HiddenField ID="dtnow" runat="server" />
                                    <asp:HiddenField ID="dtnowsaatli" runat="server" />
                                    <asp:HiddenField ID="sayi" runat="server" />
						
						 		 
						 		
						 							
							
                                      							
							</ul> 
                </td>
              
            <td style="vertical-align:top;">
                  <asp:Panel ID="Panel1" runat="server" DefaultButton="Button13">
                <table style="width:100%">
                    <tr>
                        <td style="width:300px; text-align:center">
                            <telerik:RadTextBox ID="TextBox1" Runat="server" EmptyMessage="Ürün Adı" Font-Size="10pt" Height="25px" LabelWidth="64px" Resize="None" Skin="Telerik" Width="295px">
                            </telerik:RadTextBox>
                        </td>
                        <td style="width:300px;">
                            <style>
                                .gizli
                                {
                                    display:none;
                                }
                                .auto-style1
                                {
                                    width: 50px;
                                }
                            </style>
                          
                                 <telerik:RadTextBox ID="TextBox2" Runat="server" Height="25px" Skin="Telerik" EmptyMessage="Ürün Kodu" Font-Size="10pt" LabelWidth="64px" Resize="None" Width="295px">
                            </telerik:RadTextBox>

              
                        </td>
                        
                        <td style="text-align:center;width:90px;">
                            <telerik:RadButton ID="Button13" CssClass="sol" runat="server" Visible="true" Height="0px" OnClick="Button13_Click" Skin="Telerik" Text="Ürün Ara" Width="0px">
                            </telerik:RadButton>
                            <telerik:RadButton ID="RadButton2" runat="server" CssClass="sag" OnClick="RadButton2_Click" Text="X" Width="100%">
                            </telerik:RadButton>
                        </td>
                    
                        </td>
                        <td style="width:120px;">
                            &nbsp;</td>
              <td style="width:100px; text-align:left;">
						    	
                        &nbsp;</td>
              
                   
                    </tr>
                </table>
      
                 </asp:Panel>
                          <script language="javascript" type="text/javascript">
                              // <![CDATA[

                              function OnGridFocusedRowChanged() {
                                  // Query the server for the "EmployeeID" and "Notes" fields from the focused row 
                                  // The values will be returned to the OnGetRowValues() function

                                  grid.GetRowValues(grid.GetFocusedRowIndex(), 'LOGICALREF;LOGICALREF', OnGetRowValues);

                              }
                              // Value array contains "EmployeeID" and "Notes" field values returned from the server 
                              function OnGetRowValues(values) {
                                  DetailNotes.SetText(values[1]);


                              }
                              // ]]>
                              function myfocus2() {
                                  $('#<%=RadNumericTextBox1.ClientID %>').focus();
                                
                              }

                              function textal() {
                                  $('#<%=BirimTXT.ClientID %>').text() = $('#RadDropDownList1').find('option:selected').text();;

                                }

    </script>         
                      
                     
                    
                                  
                      
                <dx:ASPxGridViewExporter ID="ASPxGridViewExporter1" runat="server">
                </dx:ASPxGridViewExporter>
                      
                     
                    
                     
                      
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
                      
                     
                    
                     
                      
                          <telerik:RadGrid ID="RadGrid1" PagerStyle-PageSizeControlType="None" runat="server" Width="100%" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" OnItemCommand="RadGrid1_ItemCommand1" OnLoad="RadGrid1_Load1" OnSelectedIndexChanged="RadGrid1_SelectedIndexChanged" OnPageIndexChanged="RadGrid1_PageIndexChanged">
                              <ExportSettings>
                                  <Pdf PageWidth="">
                                  </Pdf>
                              </ExportSettings>
                              <ClientSettings>
                             <Selecting AllowRowSelect="True" />
                                  <ClientEvents OnRowClick="myfocus2" OnRowSelected="myfocus2" />
                         </ClientSettings>
                              <MasterTableView>
                                  <Columns>
                                      <telerik:GridButtonColumn CommandName="AC"  Text="Seç"  ButtonType="ImageButton" FilterControlAltText="Filter column column" UniqueName="column" ImageUrl="/image/shopping-cart-icon.png">
                                          <ItemStyle Height="20px" Width="20px" />
                                          
                                      </telerik:GridButtonColumn>
                                      <telerik:GridBoundColumn  DataField="Ürün_Kodu" FilterControlAltText="Filter column2 column" HeaderText="Ürün Kodu" UniqueName="column2">
                                          <ColumnValidationSettings>
                                              <ModelErrorMessage Text="" />
                                          </ColumnValidationSettings>
                                          <ItemStyle Font-Size="8pt" />
                                      </telerik:GridBoundColumn>
                                      <telerik:GridBoundColumn DataField="Ürün_Adı" ItemStyle-Width="200" FilterControlAltText="Filter column1 column" HeaderText="Ürün Adı" UniqueName="Urun_Adi">
                                          <ColumnValidationSettings>
                                              <ModelErrorMessage Text="" />
                                          </ColumnValidationSettings>
<ItemStyle Width="200px" Font-Size="8pt"></ItemStyle>
                                      </telerik:GridBoundColumn>
                                      <telerik:GridBoundColumn  DataField="Urun_Ozel" FilterControlAltText="Filter column3 column" HeaderText="Özellik" UniqueName="column3">
                                          <ColumnValidationSettings>
                                              <ModelErrorMessage Text="" />
                                          </ColumnValidationSettings>
                                          <HeaderStyle HorizontalAlign="Right" />
                                          <ItemStyle Font-Size="8pt" HorizontalAlign="Right" />
                                      </telerik:GridBoundColumn>
                                      <telerik:GridBoundColumn  DataField="SatisFiyati" DataFormatString="{0:,0.00}" FilterControlAltText="Filter column4 column" HeaderText="Ürün Fiyatı" UniqueName="SatisFiyati">
                                          <ColumnValidationSettings>
                                              <ModelErrorMessage Text="" />
                                          </ColumnValidationSettings>
                                          <ItemStyle Font-Size="8pt" />
                                            <HeaderStyle HorizontalAlign="Right" />
                                          <ItemStyle Font-Size="8pt" HorizontalAlign="Right" />
                                      </telerik:GridBoundColumn>
                                      <telerik:GridBoundColumn  DataField="G_Stok" DataFormatString="{0:,0}" FilterControlAltText="Filter column5 column" HeaderText="G_Stok" UniqueName="G_Stok">
                                          <ColumnValidationSettings>
                                              <ModelErrorMessage Text="" />
                                          </ColumnValidationSettings>
                                          <ItemStyle Font-Size="8pt" />
                                            <HeaderStyle HorizontalAlign="Right" />
                                          <ItemStyle Font-Size="8pt" HorizontalAlign="Right" />
                                      </telerik:GridBoundColumn>
                                      <telerik:GridBoundColumn  DataField="F_Stok" DataFormatString="{0:,0}" FilterControlAltText="Filter column6 column" HeaderText="F_Stok" UniqueName="column6">
                                          <ColumnValidationSettings>
                                              <ModelErrorMessage Text="" />
                                          </ColumnValidationSettings>
                                          <ItemStyle Font-Size="8pt" />
                                            <HeaderStyle HorizontalAlign="Right" />
                                          <ItemStyle Font-Size="8pt" HorizontalAlign="Right" />
                                      </telerik:GridBoundColumn>
                                      <telerik:GridBoundColumn  DataField="Top_Satıs" Visible="false" DataFormatString="{0:,0}" FilterControlAltText="Filter column7 column" HeaderText="Yıl.Satış" UniqueName="column7">
                                          <ColumnValidationSettings>
                                              <ModelErrorMessage Text="" />
                                          </ColumnValidationSettings>
                                          <ItemStyle Font-Size="8pt" />
                                            <HeaderStyle HorizontalAlign="Right" />
                                          <ItemStyle Font-Size="8pt" HorizontalAlign="Right" />
                                      </telerik:GridBoundColumn>
                                      <telerik:GridBoundColumn  DataField="CODE" FilterControlAltText="Filter column8 column" HeaderText="Birim" UniqueName="column8">
                                          <ColumnValidationSettings>
                                              <ModelErrorMessage Text="" />
                                          </ColumnValidationSettings>
                                          <ItemStyle Font-Size="8pt" />
                                            <HeaderStyle HorizontalAlign="Right" />
                                          <ItemStyle Font-Size="8pt" HorizontalAlign="Right" />
                                      </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn  DataField="LOGICALREF" Visible="true" FilterControlAltText="Filter column8 column" HeaderText="" UniqueName="LOGICALREF">
                                          <ColumnValidationSettings>
                                              <ModelErrorMessage Text="" />
                                          </ColumnValidationSettings>
                                            <HeaderStyle Font-Size="1pt" Width="1px" />
                                          <ItemStyle Font-Size="1pt" Width="1px" />
                                      </telerik:GridBoundColumn>
                                         <telerik:GridBoundColumn  DataField="UREF" Visible="true" FilterControlAltText="Filter column8 column" HeaderText="" UniqueName="UREF">
                                          <ColumnValidationSettings>
                                              <ModelErrorMessage Text="" />
                                          </ColumnValidationSettings>
                                            <HeaderStyle Font-Size="1pt" Width="1px" />
                                          <ItemStyle Font-Size="1pt" Width="1px" />
                                      </telerik:GridBoundColumn>
                                         <telerik:GridBoundColumn  DataField="VAT" Visible="true" FilterControlAltText="Filter column8 column" HeaderText="" UniqueName="VAT">
                                          <ColumnValidationSettings>
                                              <ModelErrorMessage Text="" />
                                          </ColumnValidationSettings>
                                            <HeaderStyle Font-Size="1pt" Width="1px" />
                                          <ItemStyle Font-Size="1pt" Width="1px" />
                                      </telerik:GridBoundColumn>
                                       <telerik:GridBoundColumn  DataField="SETREF" Visible="true" FilterControlAltText="Filter column8 column" HeaderText="" UniqueName="SETREF">
                                          <ColumnValidationSettings>
                                              <ModelErrorMessage Text="" />
                                          </ColumnValidationSettings>
                                            <HeaderStyle Font-Size="0px" Width="0px" />
                                          <ItemStyle Font-Size="0px" Width="0px" />
                                      </telerik:GridBoundColumn>
                                  </Columns>

<PagerStyle PageSizeControlType="None" Mode="NumericPages"></PagerStyle>
                              </MasterTableView>

<PagerStyle PageSizeControlType="None"></PagerStyle>
                  </telerik:RadGrid>
                          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TIGER2ConnectionString %>" SelectCommand="SELECT SPECODE as Urun_Ozel FROM LG_015_ITEMS GROUP BY SPECODE where NAME like % @NAME  % or CODE like % @CODE %">
                              <SelectParameters>
                                  <asp:ControlParameter ControlID="TextBox1" Name="NAME" PropertyName="Text" />
                                  <asp:ControlParameter ControlID="TextBox2" Name="CODE" PropertyName="Text" />
                              </SelectParameters>
                              
                          </asp:SqlDataSource>
                    <asp:HiddenField ID="sipseq" runat="server" />
                  <asp:HiddenField ID="plsipseq" runat="server" />
                    <asp:HiddenField ID="G_STOK" runat="server" />
                    <asp:HiddenField ID="VAT" runat="server" />
                  <asp:HiddenField ID="USREF1" runat="server" />
                  <asp:HiddenField ID="UOMREF1" runat="server" />
                    <telerik:RadWindow ID="RadWindow1" OnClientShow="myfocus2"  runat="server" Skin="Telerik" Title="Miktarı Giriniz"  Width="400px" Behaviors="Close" Height="200px" OnLoad="RadWindow1_Load">
                        <ContentTemplate>
                        <table  style="background:#5494b9;width:100%;height:100%;"><tr><td colspan="2" style="text-align:center;" >
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td></tr>
                            <tr><td colspan="1">Miktar:</td>
                             
                                   <td><telerik:RadNumericTextBox ID="RadNumericTextBox1"  Skin="Telerik"   Type="Number"  MinValue="0" runat="server"></telerik:RadNumericTextBox>
                                   </td><td>
                                       <telerik:RadComboBox ID="RadComboBox1" OnSelectedIndexChanged="RadComboBox1_SelectedIndexChanged"  AutoPostBack="true" Width="100%" runat="server" Text="Birim Seçiniz..."></telerik:RadComboBox>
                                         </td></tr>
                                <tr><td rowspan="2"  >&nbsp;Fiyat:</td><td>
                                    <telerik:RadNumericTextBox ID="RadNumericTextBox2"  Skin="Telerik"   Type="Number"  MinValue="0" runat="server"></telerik:RadNumericTextBox></td><td rowspan="2">
                                   
                                        <asp:TextBox ID="BirimTXT" runat="server" Visible="false" Width="100%" Enabled="False"></asp:TextBox>
                                    </td></tr>
                              <tr>
                                  <td>
                                      <style>
                                          .ortayazi {
                                          text-align:center;
                                          }
                                      </style>
                                       <telerik:RadTextBox ID="LastPrice2" Enabled="false" Width="100%" CssClass="ortayazi" runat="server"  Skin="Telerik" ></telerik:RadTextBox>
                                  </td>
                            </tr>
                              <tr><td  >Açıklama:</td><td>
                                  <telerik:RadTextBox ID="RadTextBox1" runat="server"  Skin="Telerik" ></telerik:RadTextBox></td><td>
                              

                                 
                                      <telerik:RadButton ID="RadButton1" OnClick="RadButton1_Click" Width="80" runat="server" Skin="Telerik" Text="Ekle"></telerik:RadButton> 
                            </td></tr>

                        </table>
                        </ContentTemplate>
                        
                  </telerik:RadWindow>
               
                    </td>
             
        </tr>
         
            
    </table>


                         <dx:ASPxTextBox ID="ASPxTextBox2" ClientInstanceName="bfiyat" runat="server" Width="1px" Visible="true" Height="1px" BackColor="White">
                             <Border BorderColor="White" />
        </dx:ASPxTextBox> 
			               <dx:ASPxTextBox ID="ASPxTextBox3" ClientInstanceName="sipref" runat="server" Width="1px" Visible="true" Height="1px">
                               <Border BorderColor="White" />
        </dx:ASPxTextBox> 
        <dx:ASPxTextBox ID="ASPxTextBox1" ClientInstanceName="DetailNotes" runat="server" Width="1px" Visible="true" Height="1px" BackColor="White" ForeColor="Black">
                          <Border BorderColor="White" />
        </dx:ASPxTextBox>
    </div>
    </form>
</body>
</html>
