<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stok.aspx.cs" Inherits="seyhandagitim.stok1" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<!DOCTYPE HTML>
<html>
<head>
<title>Seyhan Dağıtım Kurumsal Web Sitesi</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="js/jquery.min.js"></script>

 </head>
<body>
	 
                        <style>
                          .caribilg
                          {
                               background:#da251c;
                              opacity:0.5;
                              float:right;
                              width:65%;
                              border:solid;
                              border-color:#000;
                          }
                          .rcol1,rcol2,rcol3
                          {
                             
                              float:left;
                              width:33%;
                          }
                              .rcol1 titler, rcol2 titler, rcol3 titler
                              {
                                  font-size:11px;
                                  color:#fff;
                              }
                                 .rcol1 p, rcol2 p, rcol3 p
                              {
                                  font-size:9px;
                                  color:#fff;
                              }
                               .dikey
                         {
                             float:left;
                             list-style-type:none;
                             margin-left:0px;
                             margin-right:10px;
                             display:inline-block;
                             
                         }
                         .rtable
                         {
                             width:960px;
                             margin-left:auto;
                             margin-right:auto;
                         }
                         .rpeattd
                         {
                             float:left;
                             background-color:bisque;
                             border:solid;
                             border-width:1px;
                             border-color:#da251c;
                            
                            
                         }
                         .urungrid{
	
		margin-top:10px;
        
		}
                             .btn2
                     {
                      
                        margin-right:10px;
                     }
                      .btn1
                     {
                         
                 background:url("/image/find.png"); 
                 background-repeat:no-repeat;
                     }
                            .sepetbtn
                            {
  background:url("/image/sepet.png"); 
   background-repeat:no-repeat;
   width:200px;
   height:48px;
                            }
                      </style>
                                <form id="form1"  runat="server" >          
                       <table class="rtable" border="1" >
                             <tr style="background-color:bisque;"><td colspan="7">

                                 
                          <asp:Repeater ID="Repeater1" runat="server">
                     <ItemTemplate>
                         <table  style="background-color:bisque;" >
                             <tr>
                             <td class="rpeattd" style="float:left;">
      <%#DataBinder.Eval(Container.DataItem,"CariAd") %>
                             </td>
                              <td  class="">

                             </td>
                                    <td class="rpeattd" style="float:left;">
                                          </ItemTemplate>
                          </asp:Repeater>
                               <asp:Label ID="Label3" runat="server" Text=""></asp:Label>   
                             </td>
                                </tr>
                         </table>
                                 
                           

                   
                                 </td></tr>
                             <tr>
                                 <td colspan="7">                 
                         <div class="menu">
					 <ul class="nav" id="nav">
                            <li>
                                <asp:Button ID="Button3" runat="server" Text="Peşin Hesabı" BorderColor="#DA251C" BorderStyle="Solid" BorderWidth="1px" OnClick="Button3_Click" Width="180px"  /></li>
						    	<li><asp:Button ID="Button4" runat="server" Text="Vadeli Hesabı" BorderColor="#DA251C" BorderStyle="Solid" BorderWidth="1px" OnClick="Button4_Click" Width="180px"  /></li>
						    	<li><asp:Button ID="Button5" runat="server" Text="Sezon Hesabı" BorderColor="#DA251C" BorderStyle="Solid" BorderWidth="1px" OnClick="Button5_Click" Width="180px" /></li>
						    	
						    	<li><asp:Button ID="Button6" runat="server" Text="Protesto Hesabı" BorderColor="#DA251C" BorderStyle="Solid" BorderWidth="1px" OnClick="Button6_Click" Width="180px" /></li>
						    	
						 		<li><asp:Button ID="Button7" runat="server" Text="Önceki Menü" BorderColor="#DA251C" BorderStyle="Solid" BorderWidth="1px" OnClick="Button7_Click" Width="180px" /></li>
						    	
						 							
							

							</ul>
                             </div>
                                           
                                 </td>
                             </tr>
                             <tr>
                              <td style="vertical-align: top;width:200px;" >
                           <ul class="nav" id="Ul1">
                            <li>
                                <asp:Button ID="Button8" Visible="true" runat="server" Text="Ürün Arama" BorderColor="#DA251C" BorderStyle="Solid" BorderWidth="1px" OnClick="Button8_Click" Width="180px" /></li>
						    	<li><asp:Button ID="Button9" runat="server" Visible="true" Text="Cari Hareketler" BorderColor="#DA251C" BorderStyle="Solid" BorderWidth="1px" OnClick="Button9_Click" Width="180px" /></li>
						    	<li><asp:Button ID="Button10" runat="server" Text="Faturalar" Visible="true" BorderColor="#DA251C" BorderStyle="Solid" BorderWidth="1px" Width="180px" /></li>
						    	
						    	<li><asp:Button ID="Button11" runat="server" Text="Bekleyen Siparişler" Visible="true" BorderColor="#DA251C" BorderStyle="Solid" BorderWidth="1px" Width="180px" OnClick="Button11_Click" /></li>
				<li>  <asp:Button CssClass="sepetbtn"  ID="Button12" runat="server" Text="Sepet" TabIndex="0" BorderColor="#DA251C" BorderStyle="Solid" BorderWidth="1px" BackColor="White" Width="180px" OnClick="Button12_Click" />
                             </li>
							</ul>
                                    <script type="text/javascript">
                                        function OnClickButtonDel(s, e) {
                                            sepgrid.PerformCallback('Delete');
                                        }
    </script>
                                      <dx:ASPxGridView ID="sepgrid" Visible="false" KeyFieldName="LogicalREF" runat="server" Width="300px" OnCustomCallback="sepgrid_CustomCallback" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" >
                            <Columns>
                                <dx:GridViewCommandColumn VisibleIndex="0" Width="20" ButtonType="Button">
                                                            <DeleteButton  Image-Url="/image/delete.png" Image-Width="20" Image-Height="20" Visible="True" Text="Kaldır">

                                                            </DeleteButton>
                                                            </dx:GridViewCommandColumn>
                                <dx:GridViewDataMemoColumn  Width="10px" FieldName="LogicalREF" Caption="SipNo" VisibleIndex="1">
                  <CellStyle Font-Names="Tahoma" Font-Size="9px">
                  </CellStyle>
              </dx:GridViewDataMemoColumn>
               <dx:GridViewDataMemoColumn  Width="150px" FieldName="UrunAd" Caption="Ürün Adı" VisibleIndex="1">
                  <CellStyle Font-Names="Tahoma" Font-Size="9px">
                  </CellStyle>
              </dx:GridViewDataMemoColumn>
             <dx:GridViewDataMemoColumn  Width="50px" FieldName="Miktar" Caption="Miktarı" VisibleIndex="1">
                  <CellStyle Font-Names="Tahoma" Font-Size="9px">
                  </CellStyle>
              </dx:GridViewDataMemoColumn>
                                  <dx:GridViewDataMemoColumn  Width="50px" FieldName="Bfiyat" Caption="Fiyatı" VisibleIndex="1">
                  <CellStyle Font-Names="Tahoma" Font-Size="9px">
                  </CellStyle>
              </dx:GridViewDataMemoColumn>


                            </Columns>

                           
                            <Settings ShowFooter="True" />
                        </dx:ASPxGridView>  
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MY2ConnectionString %>" DeleteCommand="DELETE FROM [ZTbL_Siparisler] WHERE [LogicalReF] = @LogicalReF" SelectCommand="select S.LogicalREF,U.NAME as UrunAd,S.Miktar as Miktar,S.BFiyat as Bfiyat  from ZTbL_Siparisler as S left outer join LG_015_ITEMS as U on S.UrunId=U.LOGICALREF where S.CariID= @CariID">
                       
                             <DeleteParameters>
                              <asp:Parameter Name="LogicalReF" Type="Int32" />
                          </DeleteParameters>
                          <SelectParameters>
                            <asp:ControlParameter Name="CariID" ControlID="label5" Type="String" />
                             </SelectParameters>
                    </asp:SqlDataSource>
						
				    </td>
                                  <td colspan="7"> 
   
               <h3>Ürünler</h3>
                 
               
                 <label for="modlgn_username" style="width:75px;" >Ürün Adı</label>
                 <input id="urunadi" runat="server"  type="text" style="width:100px;"  name="email" class="inputbox" size="5" autocomplete="off">&nbsp;
                  <label for="modlgn_username" style="width:90px;">Ürün Kodu</label>
                 <input id="urunkod"  runat="server" type="text" style="width:100px;" name="email" class="inputbox" size="5" autocomplete="off">&nbsp;
                    					
                		    
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

    </script>
                                      <asp:Button CssClass="btn1" ID="Button1" runat="server" OnClick="Button1_Click" Width="25px" Text="" TabIndex="0" BorderColor="#DA251C" BorderStyle="Solid" BorderWidth="1px" BackColor="White" />
                <asp:Button CssClass="btn2" ID="Button2"  runat="server" Text="Sepete Ekle" OnClick="Button2_Click" Visible="False" BorderColor="#DA251C" BorderStyle="Solid" BorderWidth="1px" BackColor="White" />

                                  
                      
                <dx:ASPxGridView   CssClass="urungrid" ID="grid" ClientInstanceName="grid" runat="server"
         KeyFieldName="LOGICALREF" AutoGenerateColumns="False" Width="600px" Theme="Default" SummaryText="Toplam" Visible="False" OnPageIndexChanged="grid_PageIndexChanged">
   <Columns>
           
            <dx:GridViewCommandColumn VisibleIndex="0" >
                 
                  <ClearFilterButton Visible="True" Text="Temizle">
                  </ClearFilterButton>
              </dx:GridViewCommandColumn>
           
          
              <dx:GridViewDataMemoColumn PropertiesMemoEdit-FocusedStyle-BackColor="#000" Width="150px" FieldName="Ürün_Adı" Caption="Ürün Adı" VisibleIndex="1">
<PropertiesMemoEdit>
<FocusedStyle BackColor="#000000"></FocusedStyle>
</PropertiesMemoEdit>

                
                  <CellStyle Font-Names="Tahoma" Font-Size="9px">
                  </CellStyle>

                
              </dx:GridViewDataMemoColumn>
        <dx:GridViewDataMemoColumn PropertiesMemoEdit-FocusedStyle-BackColor="#000" FieldName="Ürün_Kodu" Caption="Ürün Kodu" VisibleIndex="1">
<PropertiesMemoEdit>

<FocusedStyle BackColor="#000000"></FocusedStyle>

</PropertiesMemoEdit>
                <CellStyle Font-Names="Tahoma" Font-Size="9px">
                  </CellStyle>
              </dx:GridViewDataMemoColumn>
        <dx:GridViewDataMemoColumn FieldName="Urun_Ozel" Caption="Özellik" VisibleIndex="2">
                <CellStyle Font-Names="Tahoma" Font-Size="9px">
                  </CellStyle>
                
              <Settings AllowAutoFilter="False" />
              </dx:GridViewDataMemoColumn>
        <dx:GridViewDataMemoColumn FieldName="SatisFiyati" Caption="Ürün Fiyatı" VisibleIndex="3">
          
             <Settings AllowAutoFilter="False" />
            <PropertiesMemoEdit DisplayFormatString="{0:0,0} TL"></PropertiesMemoEdit>
              </dx:GridViewDataMemoColumn>
        <dx:GridViewDataMemoColumn FieldName="G_Stok"  VisibleIndex="4">
               <CellStyle Font-Names="Tahoma" Font-Size="9px">
                  </CellStyle>
             <Settings AllowAutoFilter="False" /> 
             </dx:GridViewDataMemoColumn>
        <dx:GridViewDataMemoColumn FieldName="F_Stok" VisibleIndex="5">
                 <CellStyle Font-Names="Tahoma" Font-Size="9px">
                  </CellStyle>
         <Settings AllowAutoFilter="False" />      
        </dx:GridViewDataMemoColumn>
        <dx:GridViewDataMemoColumn FieldName="Top_Satıs" VisibleIndex="6">
              <CellStyle Font-Names="Tahoma" Font-Size="9px">
                  </CellStyle>
         <Settings AllowAutoFilter="False" />      
        </dx:GridViewDataMemoColumn>
       
             
             
             
             
        </Columns>
                     <ClientSideEvents RowClick="function(s, e) { OnGridFocusedRowChanged(); }" FocusedRowChanged="function(s, e) { OnGridFocusedRowChanged(); }" />     
        <SettingsEditing EditFormColumnCount="3" Mode="PopupEditForm" />
        <SettingsPopup>
            <EditForm Width="600" />
        </SettingsPopup>
        <SettingsPager AlwaysShowPager="True" />
                          <Settings ShowFooter="True" />
                    <SettingsBehavior AllowFocusedRow="True"  />
    
    </dx:ASPxGridView>
                    <style>
                 

                 </style>
                       
                    
                        
                     
                    
                      <dx:ASPxTextBox ID="ASPxTextBox1" ClientInstanceName="DetailNotes" runat="server" Width="1px" Visible="true" Height="1px"></dx:ASPxTextBox>
                         <dx:ASPxTextBox ID="ASPxTextBox2" ClientInstanceName="bfiyat" runat="server" Width="1px" Visible="true" Height="1px"></dx:ASPxTextBox> 
			               <dx:ASPxTextBox ID="ASPxTextBox3" ClientInstanceName="sipref" runat="server" Width="1px" Visible="true" Height="1px"></dx:ASPxTextBox> 
			                  </td>
                             </tr>
                         </table> 
			        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
			                 
			        <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
			                 
			        <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
			                 
			        <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
			                 
			</form>
			

</body>	
</html>
