﻿<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/LTEMASTER2.Master" CodeBehind="gsip.aspx.cs" Inherits="seyhandagitim.gsip" %>

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
            if ((keyCode < 44 || keyCode > 57) && keyCode != 8 && keyCode != 9 && keyCode != 0 && keyCode != 47 && (keyCode < 96 || keyCode > 105))
            { return false; }
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
        function EditorOnInit(urunId, Ukod) {
            popup1.SetContentUrl('zzzurungec.aspx?stref=' + urunId+'&ISADD=1');
            window.parent.popup1.SetHeaderText(Ukod);
            popup1.ShowAtPos((window.innerWidth / 2) - 450, window.innerHeight / 2 - 160);
        };
        function EditorDOWNInit() {
            popup1.Hide();
        };
        function HidePopupAndShowInfo(closedBy, returnValue,stockref) {
            popup1.Hide();
            popup3.Hide();
            if (returnValue > 0) {
                pcLogin.SetContentUrl('zzzoneri.aspx?LOWLEVELREF='+returnValue+'&URUNID='+stockref);
                pcLogin.ShowAtPos((window.innerWidth / 2) - 445, window.innerHeight / 2 - 250);
            }
            else
            {
                window.location.href='gsip.aspx';
            }
        }

        function HidePopupAndShowInfoOneri(closedBy, returnValue,Ukod) {
           
            
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
     <dx:ASPxPopupControl  ID="pcLogin"  Font-Size="15pt" ForeColor="#d10000"  runat="server" Width="890" Height="500" CloseAction="CloseButton" CloseOnEscape="true" Modal="True"
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






    <dx:ASPxPopupControl ID="ASPxPopupControl1" Font-Size="15pt" ForeColor="#d10000" CssClass="orta" Width="900" Height="320" runat="server" ClientInstanceName="popup1" Maximized="True" Theme="Office2010Blue" CloseAction="None" PopupAnimationType="Slide">
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
        <table style="width: 80%; margin: auto;">
            <tr>
                <td colspan="3" style="text-align: center;">
                    <p style="font-family: Tahoma; font-size: 8pt; color: #848484">
                        Aramada Soru Varsa Temizle Tuşunu Kullanınız.
                    </p>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: center;">
                    <table style="margin: auto;">
                        <tr>
                            
                            <td style="padding: 5px; background: #1fb62b; border-radius: 8px;">
                                <a href="?kind=1&SEGMENT=Otomobil--HF Ticari">
                                    <img src="rimg/arac.png" /></a>
                            </td>
                            <td style="width: 10px;">
                                <img src="rimg/ayrac1.png" />
                            </td>
                            <td style="padding: 5px; background: #1fb62b; border-radius: 8px;">
                                <a href="?kind=1&SEGMENT=Agir Vasita">
                                    <img src="rimg/avasita.png" /></a>
                            </td>
                            <td style="width: 10px;">
                                <img src="rimg/ayrac1.png" />
                            </td>
                            <td style="padding: 5px; background: #1fb62b; border-radius: 8px;">
                                <a href="?kind=1&SEGMENT=Motorsiklet">
                                    <img src="rimg/motor.png" /></a>
                            </td>
                            <td style="width: 10px;">
                                <img src="rimg/ayrac1.png" />
                            </td>
                            <td style="padding: 5px; background: #1fb62b; border-radius: 8px;">
                                <a href="?kind=1&SEGMENT=Endüst%İş Makine">
                                    <img src="rimg/ismak.png" /></a>
                            </td>
                            <td style="width: 10px;">
                                <img src="rimg/ayrac1.png" />
                            </td>
                            <td style="padding: 5px; background: #fff; border-radius: 8px;">
                                <a href="gsip.aspx?kind=0">
                                    <img src="rimg/aageri.png" /></a>
                            </td>
                        </tr>

                    </table>




                </td>
            </tr>
        </table>
        <%--  <script type="text/javascript">
            var nullText = "Üretici";

            function OnLostFocus(s, e) {
                if (s.GetValue() != "" && s.GetValue() != null)
                    return;

                var input = s.GetInputElement();
                input.style.color = "gray";
                input.value = nullText;
            }

            function OnGotFocus(s, e) {
                var input = s.GetInputElement();
                if (input.value == nullText) {
                    input.value = "";
                    input.style.color = "black";
                }
            }

            function OnInit(s, e) {
                OnLostFocus(s, e);
            }

        </script>--%>
        <%-- PNLBagli Başla--%>
        <asp:Panel ID="PNLBagli" runat="server" Visible="false">
            <table style="width: 100%; margin-top: 10px;">
                <tr style="margin-top: 10px;">
                    <td style="text-align: center; font-size: 13pt;">
                        <asp:UpdatePanel runat="server" ID="UpdatePanel8">
                            <ContentTemplate>
                                <dx:ASPxComboBox ID="UCMBUretici" OnSelectedIndexChanged="UCMBUretici_SelectedIndexChanged" AutoPostBack="true" Height="30" runat="server" DropDownStyle="DropDown" IncrementalFilteringMode="StartsWith"
                                    Width="95%" Font-Names="Tahoma" Font-Size="11pt" Theme="Office2003Blue" IncrementalFilteringDelay="0">
                                    <ClientSideEvents Init="OnInit" LostFocus="OnLostFocus" GotFocus="OnGotFocus" />
                                </dx:ASPxComboBox>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>

                    <td>
                        <asp:UpdatePanel runat="server" ID="UpdatePanel9">
                            <ContentTemplate>
                                <dx:ASPxComboBox ID="UCMBModel" OnSelectedIndexChanged="UCMBModel_SelectedIndexChanged" Visible="false" AutoPostBack="true" Height="30" runat="server" DropDownStyle="DropDown" IncrementalFilteringMode="StartsWith"
                                    Width="95%" Font-Names="Tahoma" Font-Size="11pt" Theme="Office2003Blue">
                                    <ClientSideEvents Init="OnInit2" LostFocus="OnLostFocus2" GotFocus="OnGotFocus" />
                                </dx:ASPxComboBox>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>

                    <td>
                        <asp:UpdatePanel runat="server" ID="UpdatePanel10">
                            <ContentTemplate>
                                <dx:ASPxComboBox ID="UCMBMType" OnSelectedIndexChanged="UCMBMType_SelectedIndexChanged" Visible="false" AutoPostBack="true" Height="30" runat="server" DropDownStyle="DropDown" IncrementalFilteringMode="StartsWith"
                                    Width="95%" Font-Names="Tahoma" Font-Size="11pt" Theme="Office2003Blue">
                                    <ClientSideEvents Init="OnInit3" LostFocus="OnLostFocus3" GotFocus="OnGotFocus" />
                                </dx:ASPxComboBox>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>

                    <td>
                        <asp:UpdatePanel runat="server" ID="UpdatePanel11">
                            <ContentTemplate>
                                <dx:ASPxComboBox ID="UCMBMotorG" OnSelectedIndexChanged="UCMBMotorG_SelectedIndexChanged" Visible="false" AutoPostBack="true" Height="30" runat="server" DropDownStyle="DropDown" IncrementalFilteringMode="StartsWith"
                                    Width="95%" Font-Names="Tahoma" Font-Size="11pt" Theme="Office2003Blue">
                                    <ClientSideEvents Init="OnInit4" LostFocus="OnLostFocus4" GotFocus="OnGotFocus" />
                                </dx:ASPxComboBox>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>

                    <td>
                        <asp:UpdatePanel runat="server" ID="UpdatePanel12">
                            <ContentTemplate>
                                <dx:ASPxComboBox ID="UCMBMANUFF" OnSelectedIndexChanged="UCMBMANUFF_SelectedIndexChanged" Visible="false" AutoPostBack="true" Height="30" runat="server" DropDownStyle="DropDown" IncrementalFilteringMode="StartsWith"
                                    Width="95%" Font-Names="Tahoma" Font-Size="11pt" Theme="Office2003Blue">
                                    <ClientSideEvents Init="OnInit5" LostFocus="OnLostFocus5" GotFocus="OnGotFocus" />
                                </dx:ASPxComboBox>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>
                    <td>
                        <asp:UpdatePanel runat="server" ID="UpdatePanel13">
                            <ContentTemplate>
                                <dx:ASPxComboBox ID="UCMBFType" OnSelectedIndexChanged="UCMBFType_SelectedIndexChanged" Visible="false" AutoPostBack="true" Height="30" runat="server" DropDownStyle="DropDown" IncrementalFilteringMode="StartsWith"
                                    Width="95%" Font-Names="Tahoma" Font-Size="11pt" Theme="Office2003Blue">
                                    <ClientSideEvents Init="OnInit6" LostFocus="OnLostFocus6" GotFocus="OnGotFocus" />
                                </dx:ASPxComboBox>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>
                    <td style="text-align: center;">
                       
                    </td>

                </tr>

            </table>

        </asp:Panel>
        <%-- PNLBagli bitir--%>
        <%-- PanelNOrmal Başla--%>
        <asp:Panel ID="PNLNormal"  runat="server">
            <asp:Panel ID="PNLTXTler"  runat="server">
                     <asp:Panel ID="Panel1" runat="server" >
                <div class="row">
                    <div class="col-lg-12">
                        <asp:Panel ID="Panel2" runat="server" DefaultButton="btSearch">
                        <div class="col-lg-3 text-center">
                            <label >Koda Göre Arama </label>
                             <asp:UpdatePanel runat="server" ID="UpdatePanel6">
                                <ContentTemplate>
                                    <asp:TextBox ID="TXTGSEarchCode"  CssClass="textbox" Width="250px" placeholder="Malzeme Kodu" runat="server"></asp:TextBox>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                        <div class="col-lg-1">
                           
                            <br />
                             <asp:Button ID="btSearch" runat="server" CssClass="btndgn" Text="" OnClick="btSearch_Click" />
                        </div>
                        </asp:Panel>
                        <asp:Panel ID="Panel3" runat="server" DefaultButton="BTNGenel">
                        <div class="col-lg-3 text-center">
                               <label>Genel Arama </label>
                             <asp:UpdatePanel runat="server" ID="UpdatePanel7">
                                <ContentTemplate>
                                    <asp:TextBox ID="TXTGSEarch"  CssClass="textbox2" Width="250px" placeholder="Ürün Açıklaması,İmalatçı Kodu " runat="server"></asp:TextBox>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                        <div class="col-lg-1">
                              <br />
                             <asp:Button ID="BTNGenel" runat="server" CssClass="btndgn" Text="" OnClick="BTNGenel_Click" />
                        </div>
                        </asp:Panel>
                        <asp:Panel ID="Panel4" runat="server" DefaultButton="Button2">
                        <div class="col-lg-3 text-center">
                            <label>Uluslararası Kataloglarından Arama</label>
                                  <asp:UpdatePanel runat="server" ID="UpdatePanel14">
                                <ContentTemplate>
                                    <asp:updateprogress id="UpdateProgress1" runat="server" associatedupdatepanelid="UpdatePanel1" dynamiclayout="true">
                                        <progresstemplate>

                                           <img src="rimg/loader.gif" style="float:left" height="30">

                                        </progresstemplate>
                                    </asp:updateprogress>
                                                    <asp:TextBox ID="TXTGSEarchDifCode" AutoPostBack="false" OnTextChanged="TXTGSEarchCode_TextChanged1" CssClass="textbox2" Width="250px" placeholder="Farklı Firma Kodları İçin... " runat="server"></asp:TextBox>
                                                     <cc1:AutoCompleteExtender ID="autoComplete1" runat="server"
                                                        TargetControlID="TXTGSEarchDifCode"
                                                        ServiceMethod="SearchCustomersCODE"
                                                        MinimumPrefixLength="1"
                                                        EnableCaching="true" 
                                                        CompletionSetCount="12" CompletionListCssClass="completionList"      CompletionListHighlightedItemCssClass="itemHighlighted"    CompletionListItemCssClass="listItem"  >
                                                     </cc1:AutoCompleteExtender>
                                                </ContentTemplate>
                                      </asp:UpdatePanel>
                           <%-- OnClientItemSelected="ItemSelected"--%>
                        </div>
                        <div class="col-lg-1">
                            <br />
                             <asp:Button ID="Button2" runat="server" CssClass="btndgn" Text="" OnClick="Button2_Click" />
                        </div>
                    </asp:Panel>
                    </div>
                </div>
       

              
               
               
                       
                            <a href="?1923=1" class="btn btn-success">
                                Detaylı Arama
                            </a> 
                               <a href="?1923=1" class="btn btn-success">
                                Kampanyalar
                            </a> 
                      
                    
                           
                                               <a href="gsip.aspx" class="btn btn-danger pull-right" >Temizle</a>
                   
                    </asp:Panel>
              
                </asp:Panel>
            <asp:Panel ID="PNLCombolar" visible="false" runat="server">
            <table>
                <tr>
                    <td style="text-align: center; font-size: 13pt;">Filtre Markası </td>
                    <td style="text-align: center; font-size: 13pt;">Araç Sınıfı</td>
                    <td style="text-align: center; font-size: 13pt;">Filtre Tipi</td>
                    <td style="text-align: center; font-size: 13pt;">&nbsp;</td>
                    <td style="text-align: center; font-size: 13pt;">&nbsp;</td>
                    <td style="text-align: center; font-size: 13pt;">Araç Markası</td>
                    <td style="text-align: center; font-size: 13pt;">Kampanya Seç</td>
                    <td style="text-align: center; font-size: 13pt;"></td>
                </tr>
                <tr style="margin-top: 10px;">
                    <td style="text-align: center; font-size: 13pt;">
                       
                        <asp:UpdatePanel runat="server" ID="upCMB1">
                            <ContentTemplate>
                                <dx:ASPxComboBox ID="CMBMARKA" OnSelectedIndexChanged="CMBMARKA_SelectedIndexChanged2" AutoPostBack="true" Height="30" runat="server" DropDownStyle="DropDown" IncrementalFilteringMode="StartsWith"
                                    Width="95%" Font-Names="Tahoma" Font-Size="11pt" Theme="Default" IncrementalFilteringDelay="0" OnCallback="CMBMARKA_Callback" OnInit="CMBMARKA_Init" >
                             
                                </dx:ASPxComboBox>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>

                    <td>
                        <asp:UpdatePanel runat="server" ID="UpdatePanel1">
                            <ContentTemplate>
                                <dx:ASPxComboBox ID="CMBASPE2" OnSelectedIndexChanged="CMBASPE2_SelectedIndexChanged1" AutoPostBack="true" Height="30" runat="server" DropDownStyle="DropDown" IncrementalFilteringMode="StartsWith"
                                    Width="95%" Font-Names="Tahoma" Font-Size="11pt" Theme="Default" />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>

                    <td>
                        <asp:UpdatePanel runat="server" ID="UpdatePanel2">
                            <ContentTemplate>
                                <dx:ASPxComboBox ID="CMBASPE3" OnSelectedIndexChanged="CMBASPE3_SelectedIndexChanged1" AutoPostBack="true" Height="30" runat="server" DropDownStyle="DropDown" IncrementalFilteringMode="StartsWith"
                                    Width="95%" Font-Names="Tahoma" Font-Size="11pt" Theme="Default" />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>

                    <td>
                        <asp:UpdatePanel runat="server" ID="UpdatePanel3">
                            <ContentTemplate>
                                <dx:ASPxComboBox ID="CMBASPE4" OnSelectedIndexChanged="CMBASPE4_SelectedIndexChanged1" AutoPostBack="true" Height="30" runat="server" DropDownStyle="DropDown" IncrementalFilteringMode="StartsWith"
                                    Width="95%" Font-Names="Tahoma" Font-Size="11pt" Theme="Office2003Blue" Visible="False" />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>

                    <td>
                        <asp:UpdatePanel runat="server" ID="UpdatePanel4">
                            <ContentTemplate>
                                <dx:ASPxComboBox ID="CMBASPE5" OnSelectedIndexChanged="CMBASPE5_SelectedIndexChanged1" AutoPostBack="true" Height="30" runat="server" DropDownStyle="DropDown" IncrementalFilteringMode="StartsWith"
                                    Width="95%" Font-Names="Tahoma" Font-Size="11pt" Theme="Office2003Blue" Visible="False" />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>
                    <td>
                        <asp:UpdatePanel runat="server" ID="UpdatePanel5">
                            <ContentTemplate>
                                <dx:ASPxComboBox ID="CMBAITOZ" OnSelectedIndexChanged="CMBAITOZ_SelectedIndexChanged1" AutoPostBack="true" Height="30" runat="server" DropDownStyle="DropDown" IncrementalFilteringMode="StartsWith"
                                    Width="95%" Font-Names="Tahoma" Font-Size="11pt" Theme="SoftOrange" />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>
                    <td >
                        <asp:UpdatePanel runat="server" ID="UpdatePanel15">
                            <ContentTemplate>
                                <dx:ASPxComboBox ID="CMBKAMP" OnSelectedIndexChanged="CMBKAMP_SelectedIndexChanged" AutoPostBack="true" Height="30" runat="server" DropDownStyle="DropDown" IncrementalFilteringMode="StartsWith"
                                    Width="95%" Font-Names="Tahoma" Font-Size="11pt" Theme="Office2003Olive" />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>
                 <td>
                     <a href="?1923=1" class="btn btn-danger" >Temizle</a>
                 </td>
                </tr>
            </table>
                </asp:Panel>
        </asp:Panel>
        <%-- PanelNOrmal Bitir--%>
    </div>
    <div style="margin-top: 10px;">
        <asp:UpdatePanel runat="server" ID="up1Grid">
            <ContentTemplate>
                <dx:ASPxGridView ID="GridItem" runat="server" Settings-ShowTitlePanel="true" KeyFieldName="LOGICALREF" AutoGenerateColumns="False" Width="100%" Styles-Cell-Font-Size="11pt" OnPageIndexChanged="GridItem_PageIndexChanged" OnPageSizeChanged="GridItem_PageSizeChanged" OnCustomButtonCallback="GridItem_CustomButtonCallback" OnHtmlDataCellPrepared="GridItem_HtmlDataCellPrepared" Theme="Office2003Blue" OnCustomButtonInitialize="GridItem_CustomButtonInitialize" OnProcessColumnAutoFilter="GridItem_ProcessColumnAutoFilter" DataSourceID="SqlDataSource1" OnLoad="GridItem_Load">
                    <Columns>

                        <dx:GridViewDataTextColumn FieldName="Ürün_Adı" Caption="Ürün Adı" VisibleIndex="7" Width="100px">
                            <Settings AllowSort="False" AutoFilterCondition="BeginsWith" />
                            <HeaderStyle HorizontalAlign="Center" />
                            <CellStyle Font-Size="7pt">
                            </CellStyle>
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



                        <dx:GridViewDataTextColumn Caption="Alternatif" FieldName="ALTERNATE" Settings-AllowAutoFilter="False" CellStyle-Cursor="pointer"  Width="120" VisibleIndex="4">
                         
                            <Settings AllowAutoFilter="False" />
                         
                            <HeaderStyle HorizontalAlign="Center" />
                            <CellStyle Cursor="pointer" ForeColor="Red" Font-Size="12pt">
                            </CellStyle>
                        </dx:GridViewDataTextColumn>


                        <dx:GridViewDataTextColumn FieldName="DOMINANTREFS5" Visible="False" VisibleIndex="11">
                            <Settings AllowAutoFilter="False" />
                        </dx:GridViewDataTextColumn>


                        <dx:GridViewDataTextColumn Caption="Marka" Settings-AllowAutoFilter="False" FieldName="STGRPCODE" VisibleIndex="1" Width="110px">
                            <Settings SortMode="Custom" AllowAutoFilter="True" AutoFilterCondition="BeginsWith" />
                        </dx:GridViewDataTextColumn>


                        <dx:GridViewDataTextColumn Caption="Filtre Türü" Width="100" FieldName="SPECODE3" VisibleIndex="3">
                            <Settings AllowAutoFilter="True" AutoFilterCondition="Contains" />
                        </dx:GridViewDataTextColumn>

                        <dx:GridViewDataTextColumn Caption="Araç Sınıfı" Width="100" FieldName="SPECODE2" VisibleIndex="2">
                              <Settings AllowAutoFilter="True" AutoFilterCondition="Contains" />
                        </dx:GridViewDataTextColumn>

                        <dx:GridViewDataTextColumn Caption="Kampanya" FieldName="ISKAMPANYA" VisibleIndex="5" Width="100px">
                            <Settings AllowAutoFilter="False" />
                           <CellStyle Cursor="pointer"  Font-Size="12pt" ForeColor="#1FB62B">
                            </CellStyle>
                        </dx:GridViewDataTextColumn>

                        <dx:GridViewDataTextColumn Caption="Stok Durumu" FieldName="ACIKLAMA" VisibleIndex="6" Width="100px">
                            <Settings AllowAutoFilter="False" />
                        </dx:GridViewDataTextColumn>

                        <dx:GridViewDataTextColumn Caption="#" VisibleIndex="8" Width="50px">
                            <DataItemTemplate>
                             <img src="icons/cameraicon.png" onmouseover="EditorOnInit2(<%#Eval("LOGICALREF") %>);" onmouseout="EditorDOWNInit2();" />   
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
      <asp:SqlDataSource ID="SqlDataSource1"  runat="server" ConnectionString="<%$ ConnectionStrings:KOZAConnectionString %>" ></asp:SqlDataSource>
      


</asp:Content>




<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="SayfaAdi">
</asp:Content>





