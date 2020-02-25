<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ZZZUAlternate.aspx.cs" Inherits="seyhandagitim.ZZZUAlternate" %>


<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<%@ Register TagPrefix="dx" Namespace="DevExpress.Web.ASPxCallbackPanel" Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxPopupControl" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <script type="text/javascript">
                function EditorOnInit(urunId, Ukod) {
                    
                    popup1.SetContentUrl('zzzurungec.aspx?stref=' + urunId+'&ISADD=1');
                    popup1.SetHeaderText(Ukod);
                    popup1.ShowAtPos((window.innerWidth / 2) - 450, window.innerHeight / 2 - 160);
                 
                };
                function EditorDOWNInit() {
                    popup1.Hide();
                };
                function HidePopupAndShowInfo(closedBy, returnValue) {
                    popup1.Hide();
                    window.parent.location.href="gsip.aspx";
                    window.parent.popup3.Hide();
                }
    </script>

            <script type="text/javascript">
                function EditorOnInit2(urunId) {
                    popup2.SetContentUrl('ZZZUdetay.aspx?urunid=' + urunId);
                    popup2.ShowAtPos(event.clientX, event.clientY + 15);

                };
                function EditorDOWNInit2() {
                    popup2.Hide();

                };
                function HidePopupAndShowInfoOneri2(closedBy, returnValue) {
                    popup1.Hide();
                    
                }
    </script>

        <style>
               .orta {
            margin-left: auto;
            margin-right: auto;
            text-align: center;
            vertical-align: central;
        }
        </style>


        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <dx:ASPxPopupControl ID="ASPxPopupControl1" Font-Size="15pt" ForeColor="#d10000"  CssClass="orta" Width="900" Height="320" PopupHorizontalAlign="Center"  runat="server" ClientInstanceName="popup1" Maximized="True" Theme="Office2010Blue">
        <ClientSideEvents Shown="popup_Shown" />
        <ContentCollection>
            <dx:PopupControlContentControl Width="100%" ID="PopupControlContentControl1" runat="server" SupportsDisabledAttribute="True">
                <dx:ASPxCallbackPanel ID="ASPxCallbackPanel1" runat="server" Width="100%" ClientInstanceName="callbackPanel"
                  >
                    <PanelCollection>
               
                    </PanelCollection>
                </dx:ASPxCallbackPanel>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>


     <dx:ASPxPopupControl ID="ASPxPopupControl2" Width="400" CssClass="orta" Height="500" runat="server" ClientInstanceName="popup2" HeaderText="Ürün Bilgisi" Maximized="True" Theme="Glass">
        <ClientSideEvents Shown="popup_Shown" />
        <ContentCollection>
            <dx:PopupControlContentControl ID="PopupControlContentControl2" runat="server" SupportsDisabledAttribute="True">
                <dx:ASPxCallbackPanel ID="ASPxCallbackPanel2" runat="server" Width="100%" ClientInstanceName="callbackPanel">
                    <PanelCollection>
                    </PanelCollection>
                </dx:ASPxCallbackPanel>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>

        <asp:Label ID="Label1" Font-Size="15pt"  runat="server" Text=""></asp:Label>

          <asp:UpdatePanel runat="server" ID="up1Grid"><ContentTemplate>
     
        </ContentTemplate></asp:UpdatePanel>






           <dx:ASPxGridView ID="GridItem" runat="server" KeyFieldName="LOGICALREF" AutoGenerateColumns="False" Width="100%" Styles-Cell-Font-Size="13pt" OnLoad="GridItem_Load" OnPageIndexChanged="GridItem_PageIndexChanged" OnPageSizeChanged="GridItem_PageSizeChanged" OnCustomButtonCallback="GridItem_CustomButtonCallback" OnHtmlDataCellPrepared="GridItem_HtmlDataCellPrepared" Theme="Office2003Blue" OnCustomButtonInitialize="GridItem_CustomButtonInitialize" OnProcessColumnAutoFilter="GridItem_ProcessColumnAutoFilter">
            <Columns>

                <dx:GridViewDataTextColumn FieldName="Ürün_Adı"  Caption="Ürün Adı" VisibleIndex="3"  >
                    <Settings AllowSort="False" AutoFilterCondition="Contains" />
                    <HeaderStyle HorizontalAlign="Center" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Ürün_Kodu" Caption="Kodu" VisibleIndex="0" Width="140px">
                    <Settings AllowSort="False" AutoFilterCondition="Contains" />
                    <HeaderStyle HorizontalAlign="Center" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="G_Stok" Caption="Gerç.Stok"  VisibleIndex="4" Visible="False">
                    <Settings AllowSort="False" AllowAutoFilter="False" />
                    <HeaderStyle HorizontalAlign="Center" />
                </dx:GridViewDataTextColumn>
                  <dx:GridViewDataTextColumn FieldName="F_Stok" Caption="Fiili Stok" VisibleIndex="9" Visible="False">
                      <Settings AllowSort="False" AllowAutoFilter="False" />
                      <HeaderStyle HorizontalAlign="Center" />
                </dx:GridViewDataTextColumn>
                
                <dx:GridViewDataImageColumn  FieldName="G_Stok" Caption="Stok"  VisibleIndex="10" Width="50px" Visible="False">
                    <Settings AllowSort="False" AllowAutoFilter="False" />
                    <HeaderStyle HorizontalAlign="Center" />
                </dx:GridViewDataImageColumn>
              
                 <dx:GridViewDataTextColumn Caption="Miktar" Width="50px" VisibleIndex="11" Visible="False">
                     <Settings AllowSort="False" AllowAutoFilter="False" />
                     <DataItemTemplate>
                         <asp:TextBox ID="TextBox1" BackColor="#ffffcc" onkeydown="return onlyNumber(event)"   Width="100%" runat="server"></asp:TextBox>
                     </DataItemTemplate>
                     <HeaderStyle HorizontalAlign="Center" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewCommandColumn ButtonType="Image" Width="15px"  VisibleIndex="16" Visible="False">
                    <ClearFilterButton Visible="True">
                    </ClearFilterButton>
                    <CustomButtons>
                        
                        <dx:GridViewCommandColumnCustomButton ID="CBtnSepet"  Visibility="AllDataRows">
                            <Image Height="15px" Url="~/rimg/sc.ico" Width="20px">
                            </Image>
                        </dx:GridViewCommandColumnCustomButton>
                    </CustomButtons>
                </dx:GridViewCommandColumn>
              
                <dx:GridViewDataTextColumn FieldName="LOGICALREF"  VisibleIndex="14" Visible="False">
                    <Settings AllowSort="False" />
                </dx:GridViewDataTextColumn>
                
              <dx:GridViewDataTextColumn FieldName="UREF" Visible="false" VisibleIndex="12">
                  <Settings AllowSort="False" AllowAutoFilter="False" />
                </dx:GridViewDataTextColumn>
              
             
              
                <dx:GridViewDataTextColumn Caption="Sipariş" CellStyle-Cursor="pointer" Width="210" VisibleIndex="18">
                      <DataItemTemplate>
                     <img src="/rimg/sipegec.png" width="200" height="25"/>
                     </DataItemTemplate>
                     <HeaderStyle HorizontalAlign="Center" />
                      <CellStyle Cursor="pointer">
                      </CellStyle>
                </dx:GridViewDataTextColumn>
              
                <dx:GridViewDataTextColumn Caption="Marka" FieldName="STGRPCODE" VisibleIndex="1" Width="150px">
                    <Settings AutoFilterCondition="Contains" />
                </dx:GridViewDataTextColumn>
     
                <dx:GridViewDataTextColumn Caption="Özel Kod2" Width="100" FieldName="SPECODE2" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
               <dx:GridViewDataTextColumn Caption="Özel Kod3" Width="100" FieldName="SPECODE3" VisibleIndex="2">
                </dx:GridViewDataTextColumn>

                  <dx:GridViewDataTextColumn Caption="Kampanya" FieldName="ISKAMPANYA" VisibleIndex="6" Width="100px">
                            <Settings AllowAutoFilter="False" />
                           <CellStyle Cursor="pointer"  Font-Size="12pt" ForeColor="#1FB62B">
                            </CellStyle>
                        </dx:GridViewDataTextColumn>

                        <dx:GridViewDataTextColumn Caption="Stok Durumu" FieldName="ACIKLAMA" VisibleIndex="7" Width="100px">
                            <Settings AllowAutoFilter="False" />
                        </dx:GridViewDataTextColumn>


                  <dx:GridViewDataTextColumn Caption="#" VisibleIndex="8" Width="50px">
                            <DataItemTemplate>
                             <img src="icons/cameraicon.png" onmouseover="EditorOnInit2(<%#Eval("LOGICALREF") %>);" onmouseout="EditorDOWNInit2();" />   
                            </DataItemTemplate>
                        </dx:GridViewDataTextColumn>

            </Columns>

             <Settings ShowGroupPanel="False" VerticalScrollBarMode="Visible" VerticalScrollableHeight="500" />
        

            <SettingsPager AlwaysShowPager="True" RenderMode="Classic" PageSize="500" Mode="ShowAllRecords">
                <PageSizeItemSettings AllItemText="Tümü" Caption="Sayfa" Visible="True">
                </PageSizeItemSettings>
            </SettingsPager>
          
            <Settings ShowFilterRow="True" />
          
            <Styles>
                <Cell Font-Size="13pt">
                </Cell>
            </Styles>
          
        </dx:ASPxGridView>

    </div>
    </form>
</body>
</html>
