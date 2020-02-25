<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/LTEMASTER2.Master" CodeBehind="ZZsepet.aspx.cs" Inherits="seyhandagitim.ZZsepet" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxRoundPanel" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<%@ Register TagPrefix="dx" Namespace="DevExpress.Web.ASPxCallbackPanel" Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxPopupControl" TagPrefix="dx" %>



<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxPanel" TagPrefix="dx" %>



<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <script type="text/javascript">
        function ShowDetailPopup() {
            popup1.SetContentUrl('ZZSiparis.aspx');
            popup1.Show();
        }
    </script>
    <script type="text/javascript">

        function EditorOnInit(urunId, Ukod, rowIndex, SipRef) {
            // this.style.backgroundColor = "red";
            popup1.SetContentUrl('zzzurungec.aspx?stref=' + urunId + '&ISADD=0&SipRef=' + SipRef + '');
            window.parent.popup1.SetHeaderText(Ukod);
            popup1.ShowAtPos((window.innerWidth / 2) - 450, window.innerHeight / 2 - 160);

        };
        function EditorDOWNInit() {
            popup1.Hide();
        };
        function HidePopupAndShowInfo(closedBy, returnValue) {

            popup1.Hide();
            window.location.href = 'gsip.aspx';
        }
        function HidePopupAndShowInfoOneri2(closedBy, returnValue) {

            popup1.Hide();

        }
    </script>
    <style>
        .ustsuz {
            margin-top: -20px;
        }
    </style>
    <script type="text/javascript">
        function printPage() {
            window.print();
        }
    </script>


    <br />
    <div style="margin-left: 20%; float: left; width: 30%;">
    </div>

    <dx:ASPxPopupControl ID="ASPxPopupControl1" Font-Size="15pt" ForeColor="#d10000" CssClass="orta" Width="900" Height="400" runat="server" ClientInstanceName="popup1" Maximized="True" Theme="Office2010Blue" CloseAction="None" PopupAnimationType="Slide">
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


    <div style="float: right; display: inline-block; margin-right: 0px;">
        <div style="display: inline-block">
            <dx:ASPxButton ID="BTNIrsOnay" runat="server" Width="90px" Height="55px" CssClass="sol" OnClick="BTNIrsOnay_Click" Text="İrsaliye " Visible="false">
            </dx:ASPxButton>
        </div>
        <div style="display: inline-block">
            <dx:ASPxButton ID="BtnSipOnay" runat="server" Width="90px" Height="55px" CssClass="sol" OnClick="BtnSipOnay_Click" Text=" " Border-BorderColor="Transparent" BackColor="Transparent">
                <BackgroundImage ImageUrl="siponayı.png" />
                <Border BorderColor="Transparent" />
            </dx:ASPxButton>
        </div>
        <div style="display: inline-block">
            <dx:ASPxButton ID="BtnCIKTI" CssClass="sol" runat="server" Width="90px" Height="55px" Text="" OnClick="BtnCIKTI_Click" BackColor="Transparent" BackgroundImage-ImageUrl="~/rimg/yaz.png"></dx:ASPxButton>
        </div>
        <div style="display: inline-block">
            <dx:ASPxButton ID="BtnSipSil" OnClick="BtnSipSil_Click" runat="server" Width="90px" Height="55px" Text="" RightToLeft="False" BackColor="Transparent" BackgroundImage-ImageUrl="~/rimg/temizle.png"></dx:ASPxButton>
        </div>
    </div>

    <div style="height: 10px;"></div>

    <style>
        .rftupdt {
            color: blue;
        }

            .rftupdt:hover {
                color: red;
            }
    </style>

    <asp:Label ID="Label8" ForeColor="Red" runat="server" Text=""></asp:Label>
    <dx:ASPxGridView ID="GridSepet" OnHtmlDataCellPrepared="GridSepet_HtmlDataCellPrepared" runat="server" Width="100%" AutoGenerateColumns="False" KeyFieldName="LOGICALREF" Theme="Office2010Silver" OnCustomButtonCallback="GridSepet_CustomButtonCallback" OnLoad="GridSepet_Load" DataSourceID="SqlDataSource1" OnRowUpdating="GridSepet_RowUpdating">
        <SettingsText ConfirmDelete="Ürün Silinecektir Eminmisiniz ?" />
        <Styles>
            <SelectedRow BackColor="Silver">
            </SelectedRow>
            <FocusedRow BackColor="#CCFFCC">
            </FocusedRow>

        </Styles>

        <Columns>
            <dx:GridViewDataMemoColumn Width="10px" FieldName="LOGICALREF" Caption="Satır No" VisibleIndex="0" Visible="False">
                <CellStyle Font-Names="Tahoma" Font-Size="9px">
                </CellStyle>
                <EditFormSettings Visible="False" />
            </dx:GridViewDataMemoColumn>
            <dx:GridViewDataMemoColumn Width="250px" FieldName="UrunAd" Caption="Ürün Adı" VisibleIndex="1">
                <EditFormSettings Visible="False" />
                <HeaderStyle HorizontalAlign="Center" />
                <CellStyle Font-Names="Tahoma" Font-Size="10pt" HorizontalAlign="Left">
                </CellStyle>
                <FooterTemplate>
                </FooterTemplate>
            </dx:GridViewDataMemoColumn>
            <dx:GridViewDataMemoColumn Width="50px" FieldName="Miktar" Caption="Miktarı" PropertiesMemoEdit-DisplayFormatString="{0:0}" VisibleIndex="4">


                <PropertiesMemoEdit DisplayFormatString="{0:0}"></PropertiesMemoEdit>


                <HeaderStyle HorizontalAlign="Center" />


                <CellStyle Font-Names="Tahoma" Font-Size="9pt" HorizontalAlign="Center">
                </CellStyle>
                <FooterCellStyle HorizontalAlign="Center">
                </FooterCellStyle>
            </dx:GridViewDataMemoColumn>
            <dx:GridViewDataMemoColumn Width="70px" PropertiesMemoEdit-DisplayFormatString="{0:0,0.00} TL" FieldName="Bfiyat" Caption="Br.Fiyatı" VisibleIndex="6">
                <HeaderStyle HorizontalAlign="Center" />
                <CellStyle Font-Names="Tahoma" Font-Size="9pt" HorizontalAlign="Center">
                </CellStyle>
                <PropertiesMemoEdit DisplayFormatString="#,0.#0 TL"></PropertiesMemoEdit>
                <EditFormSettings Visible="False" />
                <FooterTemplate>
                </FooterTemplate>
            </dx:GridViewDataMemoColumn>
            <dx:GridViewDataMemoColumn Width="140px" PropertiesMemoEdit-DisplayFormatString="{0:0,0.00} " Caption="Toplam" VisibleIndex="8">
                <HeaderStyle HorizontalAlign="Center" />
                <CellStyle Font-Names="Tahoma" Font-Size="9pt" HorizontalAlign="Center">
                </CellStyle>
                <PropertiesMemoEdit DisplayFormatString="#,0.#0 "></PropertiesMemoEdit>
                <DataItemTemplate>
                    <%#Convert.ToDecimal(Eval("TFiyat")).ToString("N") %>
                      &nbsp
                     TL
                </DataItemTemplate>



                <EditFormSettings Visible="False" />
                <FooterCellStyle HorizontalAlign="Center">
                </FooterCellStyle>

            </dx:GridViewDataMemoColumn>

            <dx:GridViewCommandColumn VisibleIndex="13" CellStyle-Font-Size="12pt" Width="70px">
                <EditButton Visible="false" Text="Düzenle">
                    <Image Height="15" Width="15" Url="/image/add.png"></Image>
                </EditButton>
                <ClearFilterButton Visible="True">
                </ClearFilterButton>
                <DeleteButton Image-Url="/image/delete.png" Image-Width="20" Image-Height="20" Visible="True" Text="Satırı Sil">
                    <Image Height="15" Width="15" Url="/image/delete.png"></Image>
                </DeleteButton>

                <CellStyle Font-Size="12pt"></CellStyle>

            </dx:GridViewCommandColumn>

            <dx:GridViewDataTextColumn Caption="Ürün Kodu" FieldName="CODE" VisibleIndex="2" Width="10%">
                <HeaderStyle HorizontalAlign="Center" />
                <CellStyle Font-Size="10pt" HorizontalAlign="Left">
                </CellStyle>
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>

            <dx:GridViewDataTextColumn Caption="İskonto" Visible="false" VisibleIndex="16" Width="70px">
            </dx:GridViewDataTextColumn>

            <dx:GridViewDataTextColumn Caption="" Name="UPDATECOL" Width="80px" VisibleIndex="15">
                <%--   <DataItemTemplate>
                                <img src="/rimg/sipegec.png" width="200" height="30" />
                            </DataItemTemplate>--%>
                <HeaderStyle HorizontalAlign="Center" />
                <CellStyle Cursor="pointer" Font-Size="11pt" CssClass="rftupdt">
                </CellStyle>
            </dx:GridViewDataTextColumn>



            <dx:GridViewDataTextColumn FieldName="STOCKREF" Visible="false" VisibleIndex="14">
            </dx:GridViewDataTextColumn>



            <dx:GridViewDataTextColumn Caption="Açıklama" FieldName="LINEEXP" VisibleIndex="3" Width="15%">
            </dx:GridViewDataTextColumn>


            <dx:GridViewDataTextColumn Caption="Ekleme" FieldName="ADDDATE" VisibleIndex="11" Width="80px">
                <PropertiesTextEdit DisplayFormatString="{0:dd/MM/yyyy hh:mm}">
                </PropertiesTextEdit>
                <HeaderStyle HorizontalAlign="Center" />
                <CellStyle HorizontalAlign="Center">
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Güncelleme" FieldName="EDITDATE" VisibleIndex="12" Width="80px" Visible="False">
                <PropertiesTextEdit DisplayFormatString="{0:dd/MM/yyyy hh:mm}">
                </PropertiesTextEdit>
                <HeaderStyle HorizontalAlign="Center" />
                <CellStyle HorizontalAlign="Center">
                </CellStyle>
            </dx:GridViewDataTextColumn>


            <dx:GridViewDataTextColumn Caption="Kdv" FieldName="VAT" VisibleIndex="9" Visible="False">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Kdv Dahil Br.Fiyat" VisibleIndex="7" Width="100px">
                <PropertiesTextEdit DisplayFormatString="#,0.#0 "></PropertiesTextEdit>
                <DataItemTemplate>
                    <%#Convert.ToDecimal(Eval("KDVTutar")).ToString("N") %>
                      &nbsp
                     TL
                </DataItemTemplate>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Kdv Dahil Toplam" FieldName="KDVDahil" VisibleIndex="10" Width="140px">
                <PropertiesTextEdit DisplayFormatString="#,0.#0 "></PropertiesTextEdit>
                <DataItemTemplate>
                    <%#Convert.ToDecimal(Eval("KDVDahil")).ToString("N") %>
                      &nbsp
                     TL
                </DataItemTemplate>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Döv.Br.Fiyatı" VisibleIndex="5" Width="90px">
                <PropertiesTextEdit DisplayFormatString="#,0.#0 "></PropertiesTextEdit>
                <DataItemTemplate>
                    <%#Convert.ToDecimal(Eval("PRICE")).ToString("N") %>
                      &nbsp
                      <%#Eval("CURRSYM") %>
                </DataItemTemplate>
            </dx:GridViewDataTextColumn>


        </Columns>


        <SettingsBehavior ConfirmDelete="True" />


        <SettingsEditing Mode="EditForm" />

        <Settings ShowFooter="True" />
        <ClientSideEvents SelectionChanged="function(s, e) { OnGridFocusedRowChanged(); }" RowClick="function(s, e) { OnGridFocusedRowChanged(); }" FocusedRowChanged="function(s, e) { OnGridFocusedRowChanged(); }" />
        <TotalSummary>

            <dx:ASPxSummaryItem FieldName="Miktar" DisplayFormat="{0:0}" SummaryType="Sum" />
            <dx:ASPxSummaryItem FieldName="TFiyat" DisplayFormat="{0:,0.00} " SummaryType="Sum" />

        </TotalSummary>
    </dx:ASPxGridView>
    <style>
        .sol {
            float: left;
            background: url(/rimg/siponayı.png) no-repeat;
        }
    </style>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KOZAConnectionString %>" SelectCommand="select S.LOGICALREF,U.NAME as UrunAd,U.CODE as CODE,S.AMOUNT as Miktar,S.TLFIYAT as Bfiyat,(S.AMOUNT*S.TLFIYAT) as TFiyat,((S.AMOUNT*S.TLFIYAT*18)/100)+S.AMOUNT*S.TLFIYAT as KDV,S.LINEEXP,S.STOCKREF,S.ADDDATE,S.EDITDATE  from LOGOKAMP..Z_SipLine as S inner join LG_206_ITEMS as U on S.STOCKREF=U.LOGICALREF  where  S.DURUM=0 and S.CLIENTREF=@CLIENTREF" UpdateCommand="UPDATE ZTbL_Siparisler SET [Miktar] = @Miktar WHERE [LogicalReF] = @LOGICALREF" DeleteCommand="DELETE FROM LOGOKAMP..Z_SipLine WHERE [LOGICALREF] = @LOGICALREF">
        <SelectParameters>
            <asp:ControlParameter ControlID="Label1" Name="CLIENTREF" PropertyName="Text" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Miktar" Type="Int32" />
            <asp:Parameter Name="Logicalref" Type="Int32" />
            <asp:Parameter Name="İskonto" Type="Double" />
        </UpdateParameters>
        <DeleteParameters>
            <asp:Parameter Name="LOGICALREF" Type="Int32" />
        </DeleteParameters>
    </asp:SqlDataSource>
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>

    <style>
        .aciklar {
            background: url(/rimg/sepetbg.png) no-repeat;
            float: left;
            display: inline-block;
            width: 280px;
            margin-left: -2px;
            height: 140px;
        }

            .aciklar td {
                font: bold 12px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
                color: #373737;
                height: 17px;
            }

        .auto-style1 {
            height: 19px;
        }
    </style>

    <div style="margin-top: 20px;">

        <div class="col-lg-4 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-gray text-black">
                <div class="inner">

                    <table style="width: 100%; font-family: Tahoma; margin-top: 15px;">
                        <tr>
                            <td>Açıklama 1</td>
                            <td>
                                <asp:TextBox ID="TXTSPE" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>Açıklama 2</td>
                            <td>
                                <asp:TextBox ID="TXTSPE2" runat="server"></asp:TextBox></td>
                        </tr>

                    </table>
                </div>
                <div class="icon">
                    <i class="ion ion-pie"></i>
                </div>
                <a href="#" class="small-box-footer">Açıklamalar  <i class="fa fa-arrow-circle-right"></i>
                </a>
            </div>
        </div>







        <%--  <div class="col-lg-4 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-red">
                <div class="inner">
                 
<table style="width:100%;font-family:Tahoma;margin-top:5px;">
        <tr><td>Teslimat </td><td>
            <dx:ASPxComboBox ID="CMBTeslimat" runat="server" EnableTheming="True" SelectedIndex="3" Theme="Office2010Silver" Font-Names="Tahoma" Font-Size="11pt">
                <Items>
                    <dx:ListEditItem Text="Yurtiçi Kargo" Value="Yurtiçi KArgo"  />
                    <dx:ListEditItem Text="Aras Kargo" Value="Aras Kargo"  />
                    <dx:ListEditItem Text="MNG KARGO" Value="MNG KARGO"  />
                      <dx:ListEditItem Selected="True" Text="TERMİNAL" Value="TERMİNAL"  />
                </Items>
            </dx:ASPxComboBox>
        </td></tr>
       
    </table>
                </div>
                <div class="icon">
                  <i class="ion ion-pie-graph"></i>
                </div>
                <a href="#" class="small-box-footer">
                  Günlük Kurlar <i class="fa fa-arrow-circle-right"></i>
                </a>
              </div>
            </div>--%>










        <div class="col-lg-4 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-gray text-black">
                <div class="inner">

                    <asp:Repeater ID="RPTAltToplam" runat="server">
                        <ItemTemplate>

                            <table style="width: 100%; font-family: Tahoma; font-size: 10pt; margin-left: 5px; margin-top: 5px;">
                                <tr style="border-bottom: outset; border-width: 0.5px;">
                                    <td style="font-size: 10pt;">Sipariş Toplamı</td>
                                    <td style="text-align: right; padding-right: 10px; font-size: 10pt;"><%#Convert.ToDecimal(Eval("TOPTLFIYAT")).ToString("#,##.##") %>&nbsp TL</td>
                                </tr>
                                <%--<tr style="border-bottom:outset;border-width:0.5px;"><td style="font-size:10pt;">İndirim Toplamı</td><td style="text-align:right;padding-right:10px;font-size:10pt;"><%#Convert.ToDecimal(Eval("GenelI")).ToString("#,##.##") %></td></tr>--%>
                                <%--<tr style="border-bottom:outset;border-width:0.5px;"><td style="font-size:10pt;">Kdvsiz Toplam</td><td style="text-align:right;padding-right:10px;font-size:10pt;"><%#Convert.ToDecimal(Eval("LineTutar")).ToString("#,##.##")%></t></tr>--%>
                                <tr style="border-bottom: outset; border-width: 0.5px;">
                                    <td style="font-size: 10pt;">Toplam Kdv</td>
                                    <td style="text-align: right; padding-right: 10px; font-size: 10pt;"><%#Convert.ToDecimal(Eval("TOPKDV")).ToString("#,##.##")%> &nbsp TL</td>
                                </tr>
                                <tr style="border-bottom: outset; border-width: 0.5px;">
                                    <td style="font-size: 10pt;">Net Toplam</td>
                                    <td style="text-align: right; padding-right: 10px; font-size: 10pt;"><%#Convert.ToDecimal(Eval("TOPKDVTUTAR")).ToString("#,##.##") %> &nbsp TL </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <div class="icon">
                    <i class="ion-ios"></i>
                </div>
                <a href="#" class="small-box-footer">Alt Toplamlar <i class="fa fa-arrow-circle-right"></i>
                </a>
            </div>
        </div>



        <div class="col-lg-4 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-gray text-black">
                <div class="inner">

                    <table style="width: 100%; font-family: Tahoma; margin-top: 15px;">

                        <tr>
                            <td class="auto-style1">€</td>
                            <td class="auto-style1">
                                <asp:Label ID="LBLEURORate" runat="server" Text="Label"></asp:Label></td>
                        </tr>


                        <tr>
                            <td>$</td>
                            <td>
                                <asp:Label ID="LBLUSDRate" runat="server" Text="Label"></asp:Label></td>
                        </tr>

                    </table>
                </div>
                <div class="icon">
                    <i class="ion ion-pie-graph"></i>
                </div>
                <a href="#" class="small-box-footer">Günlük Kurlar <i class="fa fa-arrow-circle-right"></i>
                </a>
            </div>
        </div>





    </div>
</asp:Content>


<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="SayfaAdi">
    &nbsp;
</asp:Content>



