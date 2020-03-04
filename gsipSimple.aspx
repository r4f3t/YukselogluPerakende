<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/LTEMASTER2.Master" CodeBehind="gsipSimple.aspx.cs" Inherits="seyhandagitim.gsipSimple" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<%@ Register TagPrefix="dx" Namespace="DevExpress.Web.ASPxCallbackPanel" Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxPopupControl" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>


<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxPanel" TagPrefix="dx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>



<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <script src="js/CMBNULLTEXT.js"></script>
    <script type="text/javascript">

        function onlyNumber(e) {
            var keyCode = event.keyCode;
            if ((keyCode < 44 || keyCode > 57) && keyCode != 8 && keyCode != 9 && keyCode != 0 && keyCode != 47 && (keyCode < 96 || keyCode > 105)) { return false; }
        }
    </script>
    <style>
        .sol {
            float: left;
        }

        .sag {
            float: right;
        }

        .orta {
            margin-left: auto;
            margin-right: auto;
        }
    </style>

    <script type="text/javascript">
        function ShowDetailPopup(customerID) {
            popup3.SetContentUrl('zzzualternate.aspx?domref=' + customerID);
            popup3.Show();
        }
        function ShowDetailPopup2(customerID, cariref) {
            popup1.SetContentUrl('zzssips.aspx?stref=' + customerID);
            popup1.Show();
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
    </script>
    <style>
        .textbox {
            background: #FFF url(/icons/enter-icon.png) no-repeat 4px 4px;
            border: 1px solid #848484;
            -webkit-border-top-left-radius: 30px;
            -moz-border-radius: 30px;
            border-top-left-radius: 30px;
            border-bottom-left-radius: 30px;
            outline: 0;
            height: 35px;
            width: 275px;
            padding-left: 30px;
            padding-right: 10px;
            float: right;
        }

        .textbox2 {
            background: #FFF url(/icons/enter-icon.png) no-repeat 4px 4px;
            border: 1px solid #848484;
            outline: 0;
            height: 35px;
            width: 275px;
            padding-left: 30px;
            padding-right: 10px;
            float: right;
        }

        .sol {
            float: left;
        }

        .sag {
            float: right;
        }

        .btndgn {
            height: 35px;
            width: 40px;
            text-align: center;
            background: url(/icons/zoom.png) no-repeat;
            border-radius: 10px;
            margin-top: 18px;
        }

        .btnClear {
            height: 35px;
            width: 40px;
            text-align: center;
            background: url(/icons/temizle.png) no-repeat;
            border-radius: 3px;
        }
    </style>

    <style type="text/css">
        /*AutoComplete flyout */
        .completionList {
            border: none 1px #444444;
            margin: 0px;
            padding: 2px;
            height: 200px;
            overflow: auto;
            background-color: rgba(236,236,236,0.9);
            font-size: 15px;
            list-style-type: none;
        }

        .listItem {
            color: #1C1C1C;
            margin-left: 5px;
        }

        .sag {
            float: right;
        }

        .itemHighlighted {
            background-color: #8fc8f8;
        }

        .gizli {
            display: none;
        }

        .orta {
            margin-left: auto;
            margin-right: auto;
            text-align: center;
            vertical-align: central;
        }
    </style>

    <script type="text/javascript">

        function EditorOnInit(urunId, Ukod, MenuType) {

            var guncelle = "1";
            try {
                guncelle = (ClientCMBAITOZ.GetValue() == null) ? "1" : "0";
            } catch (e) {
                guncelle = "1";
            }
            // alert(guncelle);
            popup1.SetContentUrl('zzzurungec.aspx?stref=' + urunId + '&ISADD=1&menutype=' + MenuType + '&sayfaYenile=' + guncelle);
            window.parent.popup1.SetHeaderText(Ukod);
            popup1.ShowAtPos((window.innerWidth / 2) - 500, window.innerHeight / 2 - 160);
        };
        function EditorDOWNInit() {
            popup1.Hide();
        };
        function HidePopupAndShowInfo(closedBy, returnValue, stockref, sayfaYenile) {
            popup1.Hide();
            popup3.Hide();
            // alert(sayfaYenile);
            var url_string = window.location.href;
            var url = new URL(url_string);
            var c = url.searchParams.get("1923");
            if (returnValue > 0) {
                pcLogin.SetContentUrl('zzzoneri.aspx?LOWLEVELREF=' + returnValue + '&URUNID=' + stockref + '&sayfaYenile=' + sayfaYenile);
                pcLogin.ShowAtPos((window.innerWidth / 2) - 445, window.innerHeight / 2 - 250);
            } else if (sayfaYenile == '1') {
                window.location.href = 'gsipsimple.aspx';
            } else {
                __doPostBack('CMBAITOZ', '')
            }
            //else if (c != 1) {
            //    window.location.href = 'gsipsimple.aspx';
            //} 
        }

        function HidePopupAndShowInfoOneri(closedBy, returnValue, Ukod) {


            if (returnValue > 0) {
                popup1.SetContentUrl('zzzurungec.aspx?stref=' + returnValue + '&ISADD=1');
                window.parent.popup1.SetHeaderText(Ukod);
                popup1.ShowAtPos((window.innerWidth / 2) - 450, window.innerHeight / 2 - 160);
            }
        }
        function HidePopupAndShowInfoOneri2(closedBy, returnValue) {
            popup1.Hide();
        }


    </script>
    <script type="text/javascript">
        function ItemSelected(sender, args) {
            __doPostBack(sender.get_element().name, "");
        }
    </script>
    <dx:ASPxPopupControl ID="pcLogin" Font-Size="15pt" ForeColor="#d10000" runat="server" Width="1000" Height="500" CloseAction="CloseButton" CloseOnEscape="true" Modal="True"
        PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" ClientInstanceName="pcLogin"
        HeaderText="Ürün Sepete Eklenmiştir." AllowDragging="True" PopupAnimationType="None" EnableViewState="False">
        <ClientSideEvents Shown="popup_Shown" />
        <ContentCollection>
            <dx:PopupControlContentControl Width="100%" ID="PopupControlContentControl4" runat="server" SupportsDisabledAttribute="True">
                <dx:ASPxCallbackPanel ID="ASPxCallbackPanel4" runat="server" Width="100%" ClientInstanceName="callbackPanel"
                    OnCallback="ASPxCallbackPanel1_Callback">
                    <PanelCollection>
                    </PanelCollection>
                </dx:ASPxCallbackPanel>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>






    <dx:ASPxPopupControl ID="ASPxPopupControl1" Font-Size="15pt" ForeColor="#d10000" CssClass="orta" Width="1200" Height="400" runat="server" ClientInstanceName="popup1" Maximized="True" Theme="Office2010Blue" CloseAction="None" PopupAnimationType="Slide">
        <ClientSideEvents Shown="popup_Shown" />
        <ContentCollection>
            <dx:PopupControlContentControl Width="100%" ID="PopupControlContentControl1" runat="server" SupportsDisabledAttribute="True">
                <dx:ASPxCallbackPanel ID="ASPxCallbackPanel1" runat="server" Width="100%" ClientInstanceName="callbackPanel"
                    OnCallback="ASPxCallbackPanel1_Callback">
                    <PanelCollection>
                    </PanelCollection>
                </dx:ASPxCallbackPanel>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    <dx:ASPxPopupControl ID="ASPxPopupControl2" Width="400" Height="500" runat="server" ClientInstanceName="popup2" HeaderText="Ürün Bilgisi" Maximized="True" Theme="Glass">
        <ClientSideEvents Shown="popup_Shown" />
        <ContentCollection>
            <dx:PopupControlContentControl ID="PopupControlContentControl2" runat="server" SupportsDisabledAttribute="True">
                <dx:ASPxCallbackPanel ID="ASPxCallbackPanel2" runat="server" Width="100%" ClientInstanceName="callbackPanel"
                    OnCallback="ASPxCallbackPanel1_Callback">
                    <PanelCollection>
                    </PanelCollection>
                </dx:ASPxCallbackPanel>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    <dx:ASPxPopupControl ID="ASPxPopupControl3" Width="100%" Height="700px" runat="server" ClientInstanceName="popup3" HeaderText="Ürün Bilgisi" Maximized="True" Theme="Glass" CloseAction="None">
        <ClientSideEvents Shown="popup_Shown" />
        <CloseButtonImage Height="65px" Width="90px" Url="dogan/btngeri.png" />
        <ContentCollection>
            <dx:PopupControlContentControl ID="PopupControlContentControl3" runat="server" SupportsDisabledAttribute="True">
                <dx:ASPxCallbackPanel ID="ASPxCallbackPanel3" runat="server" Width="100%" ClientInstanceName="callbackPanel"
                    OnCallback="ASPxCallbackPanel1_Callback">
                    <PanelCollection>
                    </PanelCollection>
                </dx:ASPxCallbackPanel>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>


    <div style="width: 100%;">


        <%-- PNLBagli Başla--%>

        <style>
            .rrBigcol {
                width: 25%;
            }

            .rrSmcol {
                width: 8%;
            }
        </style>
        <%-- PNLBagli bitir--%>
        <%-- PanelNOrmal Başla--%>
        <asp:Panel ID="PNLNormal" runat="server">
            <asp:Panel ID="PNLTXTler" runat="server">
                <asp:Panel ID="Panel1" runat="server">
                    <table>
                        <tr>

                            <asp:Panel ID="Panel2" runat="server" DefaultButton="btSearch">
                                <td>

                                    <label>Koda Göre Arama </label>
                                    <asp:UpdatePanel runat="server" ID="UpdatePanel6">
                                        <ContentTemplate>
                                            <asp:TextBox ID="TXTGSEarchCode" CssClass="textbox" Width="450px" placeholder="Malzeme Kodu" runat="server"></asp:TextBox>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>

                                </td>
                                <td class="rrSmcol">
                                    <asp:Button ID="btSearch" runat="server" CssClass="btndgn" Text="" OnClick="btSearch_Click" />
                                </td>
                                <td></td>
                            </asp:Panel>
                        </tr>
                    </table>





                    <a href="gsipSimple.aspx" class="btn btn-danger pull-right">Temizle</a>
                   


                </asp:Panel>

            </asp:Panel>
        </asp:Panel>
        <%-- PanelNOrmal Bitir--%>
    </div>
    <script>
        function urunAdiGenislet(cIndex) {
            document.getElementById('itemUrunAdi' + cIndex).setAttribute("class", "gizli");
            document.getElementById('itemUrunUzunAdi' + cIndex).removeAttribute("class");
        }
        function urunAdiDaralt(cIndex) {
            document.getElementById('itemUrunUzunAdi' + cIndex).setAttribute("class", "gizli");
            document.getElementById('itemUrunAdi' + cIndex).removeAttribute("class");
        }
    </script>

    <div style="margin-top: 10px; width: 100%;">
        <asp:UpdatePanel runat="server" ID="up1Grid">
            <ContentTemplate>
                <dx:ASPxGridView ID="GridItem" runat="server" Settings-ShowTitlePanel="true" KeyFieldName="LOGICALREF" AutoGenerateColumns="False" Width="100%" Styles-Cell-Font-Size="11pt" OnPageIndexChanged="GridItem_PageIndexChanged" OnPageSizeChanged="GridItem_PageSizeChanged" OnCustomButtonCallback="GridItem_CustomButtonCallback" OnHtmlDataCellPrepared="GridItem_HtmlDataCellPrepared" Theme="Office2003Blue" OnCustomButtonInitialize="GridItem_CustomButtonInitialize" OnProcessColumnAutoFilter="GridItem_ProcessColumnAutoFilter" OnLoad="GridItem_Load">
                    <Columns>

                        <dx:GridViewDataTextColumn Caption="Ürün Adı" VisibleIndex="7" Width="170px">
                            <Settings AllowSort="False" AutoFilterCondition="BeginsWith" />
                            <HeaderStyle HorizontalAlign="Center" />
                            <CellStyle Font-Size="8pt">
                            </CellStyle>
                            <DataItemTemplate>
                                <span id="itemUrunAdi<%#Container.ItemIndex %>" onmouseover="urunAdiGenislet(<%#Container.ItemIndex %>)">
                                    <%#Eval("Ürün_Adı") %>
                                </span>
                                <span id="itemUrunUzunAdi<%#Container.ItemIndex %>" onmouseout="urunAdiDaralt(<%#Container.ItemIndex %>)" class="gizli">
                                    <%#Eval("Ürün_Adı") %>
                                    <%#Eval("NAME3") %>
                                </span>
                            </DataItemTemplate>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Ürün_Kodu" Caption="Kodu" VisibleIndex="0" Width="120px">
                            <Settings AllowSort="False" AutoFilterCondition="BeginsWith" />
                            <HeaderStyle HorizontalAlign="Center" />
                        </dx:GridViewDataTextColumn>


                        <dx:GridViewDataTextColumn FieldName="LOGICALREF" VisibleIndex="10" Visible="False">
                            <Settings AllowSort="False" />
                        </dx:GridViewDataTextColumn>

                        <dx:GridViewDataTextColumn FieldName="UREF" Visible="False" VisibleIndex="9">
                            <Settings AllowSort="False" AllowAutoFilter="False" />
                        </dx:GridViewDataTextColumn>



                        <dx:GridViewDataTextColumn Caption="Sipariş" CellStyle-Cursor="pointer" Width="210px" VisibleIndex="12">
                            <DataItemTemplate>
                                <img src="/rimg/sipegec.png" width="200" height="30" />
                            </DataItemTemplate>
                            <HeaderStyle HorizontalAlign="Center" />
                            <CellStyle Cursor="pointer">
                            </CellStyle>
                        </dx:GridViewDataTextColumn>



                        <dx:GridViewDataTextColumn Caption="Alternatifi" FieldName="ALTERNATE" Settings-AllowAutoFilter="False" CellStyle-Cursor="pointer" Width="80" VisibleIndex="4">

                            <Settings AllowAutoFilter="False" />

                            <HeaderStyle HorizontalAlign="Center" />
                            <CellStyle Cursor="pointer" ForeColor="Red" Font-Size="10pt">
                            </CellStyle>
                        </dx:GridViewDataTextColumn>


                        <dx:GridViewDataTextColumn FieldName="DOMINANTREFS5" Visible="False" VisibleIndex="11">
                            <Settings AllowAutoFilter="False" />
                        </dx:GridViewDataTextColumn>


                        <dx:GridViewDataTextColumn Caption="Marka" Settings-AllowAutoFilter="False" FieldName="STGRPCODE" VisibleIndex="1" Width="110px">
                            <Settings SortMode="Custom" AllowAutoFilter="True" AutoFilterCondition="BeginsWith" />
                        </dx:GridViewDataTextColumn>


                        <dx:GridViewDataTextColumn Caption="Filtre Türü" Width="60px" FieldName="SPECODE3" VisibleIndex="3">
                            <Settings AllowAutoFilter="True" AutoFilterCondition="Contains" />
                        </dx:GridViewDataTextColumn>

                        <dx:GridViewDataTextColumn Caption="Araç Sınıfı" Width="80px" FieldName="SPECODE2" VisibleIndex="2" Visible="False">
                            <Settings AllowAutoFilter="True" AutoFilterCondition="Contains" />
                        </dx:GridViewDataTextColumn>

                        <dx:GridViewDataTextColumn Caption="Kampanya" FieldName="ISKAMPANYA" VisibleIndex="5" Width="100px">
                            <Settings AllowAutoFilter="False" />
                            <CellStyle Cursor="pointer" Font-Size="12pt" ForeColor="#1FB62B">
                            </CellStyle>
                        </dx:GridViewDataTextColumn>

                        <dx:GridViewDataTextColumn Caption="Stok Durumu" FieldName="ACIKLAMA" VisibleIndex="6" Width="90px">
                            <Settings AllowAutoFilter="False" />
                        </dx:GridViewDataTextColumn>

                        <dx:GridViewDataTextColumn Caption="#" VisibleIndex="8" Width="50px">
                            <DataItemTemplate>
                                <img src="icons/cameraicon.png" onclick="EditorOnInit2(<%#Eval("LOGICALREF") %>);" style="cursor: pointer;" />
                            </DataItemTemplate>
                        </dx:GridViewDataTextColumn>



                    </Columns>
                    <Settings ShowGroupPanel="False" VerticalScrollBarMode="Visible" VerticalScrollableHeight="400" />
                    <SettingsPager PageSize="300">
                        <PageSizeItemSettings AllItemText="Tümü" Caption="Sayfa" Visible="True">
                        </PageSizeItemSettings>
                    </SettingsPager>

                    <SettingsPager AlwaysShowPager="True" RenderMode="Classic" PageSize="200">
                        <PageSizeItemSettings AllItemText="Tümü" Caption="Sayfa" Visible="True">
                        </PageSizeItemSettings>
                    </SettingsPager>

                    <Settings ShowFilterRow="True" />

                    <Styles>
                        <Cell Font-Size="11pt">
                        </Cell>
                    </Styles>

                </dx:ASPxGridView>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>


    <asp:UpdatePanel ID="UpdatePanel16" runat="server">
        <ContentTemplate>
            <asp:HiddenField ID="HFAramaDeger" runat="server" />
        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KOZAConnectionString %>"></asp:SqlDataSource>



</asp:Content>




<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="SayfaAdi">
</asp:Content>





