<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ZZFatura2.aspx.cs" MasterPageFile="~/MasterAna.Master" Inherits="seyhandagitim.ZZFatura2" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>


<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <asp:Panel ID="Panel1" runat="server">
        
    <table border="1" style="width:100%;border:dotted 1px;"><tr style="background:#dcdcdc;font-family:Verdana;font-size:11pt;text-align:center;"><td> Ürün Adı </td><td>Ürün Kodu</td><td> Ürün Miktarı </td><td> Birim Fiyat(Kdv Hariç) </td><td> Net Tutar </td></tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                    <tr style="font-family:Tahoma;font-size:10pt;"><td>  <%# Eval("URUNADI") %></td><td>  <%# Eval("URUNKODU") %></td> <td style="text-align:right;">  <%# Eval("URUNMIKTARI") %></td> <td style="text-align:right;">  <%# Convert.ToDecimal(Eval("BIRIMFIYAT")).ToString("N") %></td>   <td style="text-align:right;">  <%# Convert.ToDecimal(Eval("VATMATRAH")).ToString("N") %></td></tr>
                <asp:HiddenField ID="HFBIRIMFIYAT" value='<%#Eval("BIRIMFIYAT") %>' runat="server" />
                <asp:HiddenField ID="HFVATMATRAH" value='<%#Eval("VATMATRAH") %>' runat="server" />
            </ItemTemplate>
        </asp:Repeater>
       
            <tr><td></td> <td></td> <td></td> <td style="background:#dcdcdc;font-family:Verdana;font-size:11pt;">Toplam</td> <td style="text-align:right;background:#dcdcdc;"><asp:Label ID="LBLTOPLAM" runat="server" Text=""></asp:Label></td></tr>
             <tr> <td></td> <td></td> <td></td> <td style="background:#dcdcdc;font-family:Verdana;font-size:11pt;">KDV</td> <td style="text-align:right;background:#dcdcdc;"> <asp:Label ID="LBLKDV" runat="server" Text=""></asp:Label></td></tr>
            <tr> <td></td> <td></td> <td></td> <td style="background:#dcdcdc;font-family:Verdana;font-size:11pt;">Genel Toplam</td> <td style="text-align:right;background:#dcdcdc;"><asp:Label ID="LBLKDVTOPLAM" runat="server" Text=""></asp:Label></td></tr>
          
    </table>
          </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Visible="false">
          <dx:ASPxGridView ID="detailGrid" runat="server" Theme="DevEx" Width="100%" AutoGenerateColumns="False" EnableTheming="True">
                     <Columns>
                         <dx:GridViewDataMemoColumn FieldName="URUNADI" Caption="Ürün Adı" VisibleIndex="2">
                         </dx:GridViewDataMemoColumn>
                         <dx:GridViewDataMemoColumn FieldName="URUNMIKTARI"  Caption="Miktarı" VisibleIndex="3" PropertiesMemoEdit-DisplayFormatString="{0:0}">
                             <PropertiesMemoEdit DisplayFormatString="">
                             </PropertiesMemoEdit>
                         </dx:GridViewDataMemoColumn>
                         <dx:GridViewDataMemoColumn FieldName="BIRIMFIYAT"  Caption="BR.Fiyat" VisibleIndex="4" PropertiesMemoEdit-DisplayFormatString="{0:0}">
                             <PropertiesMemoEdit DisplayFormatString="{0:,0.00} TL">
                             </PropertiesMemoEdit>
                         </dx:GridViewDataMemoColumn>
                                      <dx:GridViewDataMemoColumn FieldName="SATIRTUTARI"  Caption="Top.Tutar" VisibleIndex="5" PropertiesMemoEdit-DisplayFormatString="{0:0}">
                             <PropertiesMemoEdit DisplayFormatString="{0:,0.00} TL">
                             </PropertiesMemoEdit>
                         </dx:GridViewDataMemoColumn>
                          <dx:GridViewDataMemoColumn FieldName="INDOR"  Caption="İnd.Or" VisibleIndex="6" PropertiesMemoEdit-DisplayFormatString="{0:0}">
                             <PropertiesMemoEdit DisplayFormatString="%{0:,0} ">
                             </PropertiesMemoEdit>
                         </dx:GridViewDataMemoColumn>
                         <dx:GridViewDataMemoColumn FieldName="VATMATRAH"  Caption="Net.Tutar" VisibleIndex="7" PropertiesMemoEdit-DisplayFormatString="{0:0}">
                             <PropertiesMemoEdit DisplayFormatString="{0:,0.00} TL">
                             </PropertiesMemoEdit>
                         </dx:GridViewDataMemoColumn>
                         <dx:GridViewDataTextColumn Caption="Fatura No" FieldName="FICHENO" VisibleIndex="0">
                         </dx:GridViewDataTextColumn>
                         <dx:GridViewDataTextColumn Caption="Fat. Tarihi" FieldName="DATE_" VisibleIndex="1">
                             <PropertiesTextEdit DisplayFormatString="dd/MM/yyyy">
                             </PropertiesTextEdit>
                         </dx:GridViewDataTextColumn>
                    </Columns>
                    <Settings ShowFooter="True" />
                    <TotalSummary>
                        <dx:ASPxSummaryItem DisplayFormat="{0:0,0.00} TL" FieldName="SATIRTUTARI" SummaryType="Sum" />
                         <dx:ASPxSummaryItem DisplayFormat="{0:0,0.00} TL" FieldName="VATMATRAH" SummaryType="Sum" />
                    </TotalSummary> 
                </dx:ASPxGridView>

    </asp:Panel>
</asp:Content> 


