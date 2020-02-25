<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ZZZUrunGec.aspx.cs" Inherits="seyhandagitim.ZZZUrunGec" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxPopupControl" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>


<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function OnBtnClientClick(s, e) {
            window.parent.HidePopupAndShowInfo('Client', 0);
        }
    </script>

</head>
<body>

    <style>
        .solblocklu {
            float: left;
            display: inline-block;
            border: none;
        }

        .sepetyeri {
            float: left;
            display: inline-block;
            height: 190px;
            overflow: scroll;
            overflow-x: hidden;
            margin-left: 50px;
            margin-top: 0px;
            margin-bottom: 10px;
        }

        .bilgi {
            float: left;
            display: inline-block;
            height: 185px;
            box-shadow: 1px 2px 3px #666;
            background: url(/rimg/bgı.png) no-repeat;
            /*border-radius:5px;*/
            padding: 2px;
            width: 345px;
            margin-bottom: 10px;
            margin-left: 10px;
        }

        .veriGirisi {
            float: left;
            display: inline-block;
            height: 270px;
            /*background:url(/rimg/bgı.png) no-repeat;*/
            margin-left: 5px;
            margin-bottom: 10px;
            box-shadow: 1px 2px 3px #666;
            width: 950px;
        }
    </style>
    <form id="form1" runat="server">
        <asp:HiddenField ID="HFKAMPORAN" Value="0" runat="server" />
        <style>
            .eText {
                font: bold 12px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
                color: #373737;
                border-bottom: 1px solid #8390a9;
                border-right: 1px solid #8390a9;
                border-top: 1px solid #8390a9;
                border-left: 1px solid #8390a9;
                height: 17px;
                text-align: right;
                background: #fff url(images/tablo_baslik_zr.gif) repeat-x;
            }

            .autoTr1 {
                height: 25px;
            }

            .sipBtn {
                margin: auto;
                background: url(/dogan/addsepet.png) no-repeat;
                margin-top: 7px;
                float: right;
            }

            .sipBack {
                margin: auto;
                background: url(/dogan/iptal.png) no-repeat;
                margin-top: 7px;
                float: left;
            }

            .rsag {
                float: right;
                text-align: right;
            }

            .rsol {
                float: left;
                text-align: right;
            }

            .textOrta {
                text-align: center;
            }
        </style>

        <script type="text/javascript">

            function onlyNumber(e) {
                var keyCode = event.keyCode;
                if ((keyCode < 44 || keyCode > 57) && keyCode != 8 && keyCode != 9 && keyCode != 0 && keyCode != 47 && (keyCode < 96 || keyCode > 105)) { return false; }
            }
        </script>

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>



        <div class="veriGirisi ">

            <table border="0">
                <tr style="text-align: center;">
                    <td style="width: 100px;">
                        <asp:Label ID="LBLMiktar" runat="server" Text="Miktar Seçeneği" Font-Names="Verdana" Font-Size="10pt" ForeColor="#6666FF"></asp:Label>
                    </td>
                    <td style="width: 250px;">
                        <asp:Label ID="LBLVADE" runat="server" Text="Vade Seçeneği" Font-Names="Verdana" Font-Size="10pt" ForeColor="#6666FF"></asp:Label>
                    </td>
                    <td style="text-align: center; width: 100px;">
                        <asp:Label ID="Label10" runat="server" Text="Dövizli Fiyat" Font-Names="Verdana" Font-Size="10pt" ForeColor="#6666FF"></asp:Label></td>
                    <td style="text-align: center; width: 100px;" class="auto-style1">
                        <asp:Label ID="Label11" runat="server" Text="Kdv Hariç TL" Font-Names="Verdana" Font-Size="10pt" ForeColor="#6666FF"></asp:Label></td>
                    <td style="text-align: center;">
                        <asp:Label ID="Label1" runat="server" Text="Kdv Dahil TL" Font-Names="Verdana" Font-Size="10pt" ForeColor="#6666FF"></asp:Label></td>
                    <td style="text-align: center;">
                        <asp:Label ID="Label5" runat="server" Text="Miktar" Font-Names="Verdana" Font-Size="10pt" ForeColor="#6666FF"></asp:Label></td>
                    <td style="text-align: center;">
                        <asp:Label ID="Label6" runat="server" Text="Toplam TL Tutar" Font-Names="Verdana" Font-Size="10pt" ForeColor="#6666FF"></asp:Label></td>
                    <td style="text-align: center;">
                        <asp:Label ID="Label2" runat="server" Text="Toplam KDV'li Tutar" Font-Names="Verdana" Font-Size="10pt" ForeColor="#6666FF"></asp:Label></td>

                </tr>



                <tr>
                    <td>
                        <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                            <ContentTemplate>
                                <dx:ASPxComboBox ID="CMBMiktar" AutoPostBack="true" Font-Size="13pt" Font-Names="Verdana" Width="100%" runat="server" OnSelectedIndexChanged="CMBMiktar_SelectedIndexChanged" Theme="Glass"></dx:ASPxComboBox>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>
                    <td rowspan="2" style="padding-bottom: -15px;">

                        <asp:UpdatePanel ID="UPDRPTVade" UpdateMode="Conditional" runat="server">
                            <ContentTemplate>
                                <table style="border: 1px solid #dbdbdb; width: 100%;">

                                    <asp:Repeater ID="RPTVade" runat="server" OnItemCommand="RPTVade_ItemCommand">
                                        <ItemTemplate>
                                            <tr style="border-bottom: 1px solid #666; <%#Eval("TRBG") %>">
                                                <td><%#Eval("VADESTR") %></td>
                                                <td><%#Convert.ToDecimal(Eval("Fiyat")).ToString("N") %>
                                                    <%#Eval("CURRSYMB") %>
                                                </td>
                                                <td><%#Convert.ToDecimal(Eval("TLFiyat")).ToString("N") %>
                                                    <span style="font-size: 15px; font-family: Arial">₺</span>
                                                </td>
                                                <td>
                                                    <asp:Button ID="BTNVadeSec" Style="background: #008aff; color: #ffffff;" CommandArgument='<%#Eval("VADESTR")%>' runat="server" Text="Seç" />
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </table>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                                <dx:ASPxComboBox ID="CMBVade" Visible="false" runat="server" Font-Size="13pt" Font-Names="Verdana" Width="100%" AutoPostBack="true" OnSelectedIndexChanged="CMBVade_SelectedIndexChanged" Theme="Glass"></dx:ASPxComboBox>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>
                    <td>
                        <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                            <ContentTemplate>
                                <asp:TextBox ID="TXTBRF" CssClass="textOrta" BackColor="#ffffcc" Font-Names="Verdana" Font-Size="13pt" AutoPostBack="true" Enabled="false" ReadOnly="true" Width="100%" runat="server" BorderColor="#6666FF" BorderStyle="None" Visible="False"></asp:TextBox>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>
                    <td class="auto-style1">
                        <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                            <ContentTemplate>
                                <asp:TextBox ID="TXTTLFiyat" CssClass="textOrta" BackColor="#ffffcc" Font-Names="Verdana" Font-Size="13pt" AutoPostBack="true" ReadOnly="true" Width="100%" runat="server" BorderColor="#6666FF" BorderStyle="None" Visible="False"></asp:TextBox>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>
                    <td>
                        <asp:UpdatePanel ID="UpdatePanel13" runat="server">
                            <ContentTemplate>
                                <asp:TextBox ID="TXTTLKDVliFiyat" CssClass="textOrta" BackColor="#CCFFCC" Font-Names="Verdana" Font-Size="13pt" AutoPostBack="true" ReadOnly="true" Width="100%" runat="server" BorderColor="#6666FF" BorderStyle="None" Visible="False"></asp:TextBox>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>
                    <td>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:TextBox ID="TXTMik" CssClass="eText" AutoPostBack="true" onkeydown="return onlyNumber(event)" Width="100%" OnTextChanged="TXTMik_TextChanged" runat="server" Font-Size="13pt"></asp:TextBox>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>
                    <td>
                        <asp:UpdatePanel ID="UpdatePanel7" runat="server">
                            <ContentTemplate>
                                <asp:TextBox ID="TXTTopTut" CssClass="eText" AutoPostBack="true" ReadOnly="true" onkeydown="return onlyNumber(event)" Width="98%" runat="server" Font-Size="13pt"></asp:TextBox>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>
                    <td>
                        <asp:UpdatePanel ID="UpdatePanel14" runat="server">
                            <ContentTemplate>
                                <asp:TextBox ID="TXTTLKDVliToplam" CssClass="textOrta" BackColor="#CCFFCC" AutoPostBack="true" ReadOnly="true" onkeydown="return onlyNumber(event)" Width="98%" runat="server" Font-Size="13pt"></asp:TextBox>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>

                </tr>
                <tr>
                    <td style="text-align: right;" colspan="4">
                        <style>
                            .LBlKoliSol {
                                float: left;
                                margin-top: 20px;
                            }
                        </style>
                        <asp:UpdatePanel ID="UpdatePanel12" runat="server">
                            <ContentTemplate>
                                <asp:Label ID="LBLKoli" CssClass="LBlKoliSol" ForeColor="#990000" runat="server" Font-Names="Trebuchet MS" Font-Size="12pt" Text=""></asp:Label>
                            </ContentTemplate>
                        </asp:UpdatePanel>

                        <asp:Button ID="Button1" CssClass="sipBtn" OnClick="Button1_Click" runat="server" Text="" Height="60" Width="120" BackColor="Transparent" BorderColor="Transparent" />
                    </td>
                    <td style="text-align: left;" colspan="3">
                        <asp:Button ID="Button4" OnClick="Button2_Click" CssClass="sipBack" runat="server" Height="60" Width="120" BackColor="Transparent" BorderColor="Transparent" />
                        <style>
                            .LblKazancSag {
                                float: right;
                                margin-top: 20px;
                            }

                            .auto-style1 {
                                width: 73px;
                            }
                        </style>



                    </td>


                </tr>
                <tr>
                    <td colspan="8">
                        <asp:UpdatePanel ID="UpdatePanel10" runat="server">
                            <ContentTemplate>
                                <asp:Label ID="LBLKazanc" Visible="true"  ForeColor="#990000" Font-Bold="true" runat="server" Font-Names="Trebuchet MS" Font-Size="12pt" Text="Miktarı Çok Seçerek Daha Ucuza Alabilirsiniz!!!"></asp:Label>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                         <asp:Label ID="LBLFiyatUyar" Visible="false"  ForeColor="#990000" Font-Bold="true" runat="server" Font-Names="Trebuchet MS" Font-Size="12pt" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="8">
 <asp:Label ID="LBLMikKampanyasi" Visible="false"  ForeColor="#0000ff" Font-Bold="true" runat="server" Font-Names="Trebuchet MS" Font-Size="18pt" Text="Bu Üründe Miktar Kampanyası Vardır!!!"></asp:Label>
                    </td>
                </tr>
                <tr style="height: 5px; text-align: center;">

                    <asp:Panel ID="PNLListe" runat="server">
                        <td colspan="4" style="text-align: right; padding-right: 10px;">
                            <asp:Label ID="LBLListe" runat="server" Text="Liste Fiyatı:" Font-Names="Verdana" Font-Size="10pt" ForeColor="#6666FF"></asp:Label>
                        </td>
                        <td colspan="4" style="text-align: left; padding-left: 10px;">
                            <asp:Label ID="LBLListeTl" runat="server" Text="Liste TL:" Font-Names="Verdana" Font-Size="10pt" ForeColor="#6666FF"></asp:Label>
                        </td>

                    </asp:Panel>

                </tr>
                <tr>
                    <td colspan="7" style="text-align: center;">

                        <asp:Label ID="Label7" Visible="false" ForeColor="#990000" runat="server" Font-Names="Trebuchet MS" Font-Size="12pt"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="6" style="text-align: center;">
                        <asp:Label ID="LBLMAx" Visible="false" ForeColor="#990000" runat="server" Font-Names="Trebuchet MS" Font-Size="12pt"></asp:Label>
                    </td>
                    <td>&nbsp;</td>

                </tr>
                <tr>
                    <td colspan="6" style="text-align: center;">
                        <asp:UpdatePanel ID="UpdatePanel8" runat="server">
                            <ContentTemplate>
                                <asp:Label ID="LBLUyar" Visible="false" ForeColor="Blue" runat="server" Font-Names="Trebuchet MS" Font-Size="12pt"></asp:Label>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>
                </tr>

                <tr>
                    <td colspan="6" style="text-align: center;">
                        <asp:UpdatePanel ID="UpdatePanel11" runat="server">
                            <ContentTemplate>
                                <asp:Label ID="LBLOrfLine" Visible="false" ForeColor="Blue" runat="server" Font-Names="Trebuchet MS" Font-Size="12pt"></asp:Label>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>
                </tr>


                <tr>
                    <td colspan="6" style="text-align: center;">
                        <asp:UpdatePanel ID="UpdatePanel9" runat="server">
                            <ContentTemplate>
                                <asp:Label ID="LBLSepet" ForeColor="Red" runat="server" Font-Names="Trebuchet MS" Font-Size="12pt"></asp:Label>
                                <asp:HiddenField ID="HFBRFiyat" runat="server" />
                                <asp:UpdatePanel ID="UpdatePanel16" runat="server">
                                    <ContentTemplate>
                                        <asp:HiddenField ID="HFVadeSTR" runat="server" />
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>
                </tr>


            </table>


        </div>

        <%#Eval("VADESTR") %>
        <asp:HiddenField ID="HFUCODE" runat="server" />
        <asp:HiddenField ID="HFUNAME" runat="server" />
        <asp:HiddenField ID="HFUP114" runat="server" />
        <asp:HiddenField ID="HFUP118" runat="server" />
        <asp:HiddenField ID="HFUP119" runat="server" />
        <asp:HiddenField ID="HFCYPHCODE" runat="server" />
        <asp:HiddenField ID="HFUREF" runat="server" />
        <asp:HiddenField ID="HFPRCPRICE" runat="server" />

        <asp:HiddenField ID="HFCKOD" runat="server" />

        <asp:HiddenField ID="HFCOND" runat="server" />
        <asp:HiddenField ID="HFFORMULA" runat="server" />
        <asp:HiddenField ID="HFVade" runat="server" />
        <asp:HiddenField ID="HFMik" runat="server" />

        <asp:HiddenField ID="HFCURRATE" runat="server" />
        <asp:HiddenField ID="HFCURRSYM" runat="server" />
        <asp:HiddenField ID="HFCURR" runat="server" />

        <asp:HiddenField ID="HFVadeOran" runat="server" />
        <asp:HiddenField ID="HFYetkiOran" runat="server" />
        <asp:UpdatePanel ID="UpdatePanel15" runat="server">
            <ContentTemplate>
                <asp:HiddenField ID="HFMikOran" runat="server" />
            </ContentTemplate>
        </asp:UpdatePanel>

        <asp:HiddenField ID="HFGenelOran" runat="server" />
        <asp:HiddenField ID="HFCURROran" runat="server" />
        <asp:HiddenField ID="HFVAT" runat="server" />

        <asp:HiddenField ID="HFTRADINGGRP" runat="server" />
        <asp:HiddenField ID="HFDIVISION" runat="server" />
        <asp:HiddenField ID="HFVATINC" runat="server" />

        <asp:HiddenField ID="HFSONFIYAT" Value="0" runat="server" />
        <asp:HiddenField ID="HFSONFIYATORAN" Value="0" runat="server" />

        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
            <ContentTemplate>
                <asp:HiddenField ID="HFVFiyat" runat="server" />

            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:HiddenField ID="HFISADD" Value="1" runat="server" />
         <asp:HiddenField ID="HFSipLineRef"  runat="server" />
        <%#Convert.ToDecimal(Eval("Fiyat")).ToString("N") %>
    </form>
</body>
</html>
