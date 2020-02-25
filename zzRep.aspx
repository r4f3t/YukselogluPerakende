<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/LTEMASTER.Master" CodeBehind="zzRep.aspx.cs" Inherits="seyhandagitim.zzRep" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder2">
   <table style="display:inline-block;float:left;">
       <tr><td>Raporlar</td></tr>
       <tr><td>
           <dx:ASPxComboBox ID="CMBReps" Height="30" Font-Size="12pt" runat="server">
               <Items>
                   <dx:ListEditItem Text="Genel Durum" Value="0" />
                   <dx:ListEditItem Text="Genel Tahsilat" Value="1" />
                 
                   <dx:ListEditItem Text="Alış-Satış(Plasiyer)" Value="2" />
                      <dx:ListEditItem Text="Alış-Satış(Genel)" Value="3" />
                    <dx:ListEditItem Text="Kar Raporu" Value="5" />
                     <dx:ListEditItem Text="Mizan Raporu" Value="4" />
                 
               </Items>
           </dx:ASPxComboBox>
       </td></tr>
   </table>
     <table border="0" style="display:inline-block;float:left;margin-left:20px">
        <tr><th colspan="2" style="text-align:center;">İşlem Tarihi</th><th style="text-align:center;">Cari adı</th></tr>
        <tr><td>
            <dx:ASPxDateEdit ID="DTPBas"  Height="30" runat="server"></dx:ASPxDateEdit>
        </td>
        <td>
            <dx:ASPxDateEdit ID="DTPBit" Height="30" runat="server"></dx:ASPxDateEdit>
        </td>
            <td>
                <asp:TextBox ID="TXTCAri"  Height="30" runat="server"></asp:TextBox>
            </td>
            <td>
            <asp:Button ID="Button1" runat="server"  Height="30" Text="Raporla" OnClick="Button1_Click" />
            </td>
             <td>
            <asp:Button ID="BTNCLEAR" runat="server"  Height="30" Text="Temizle" OnClick="BTNCLEAR_Click" />
            </td>
        </tr>
        </table>
   
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <style>
        .Ustten {
        margin-top:15px;
        }

    </style>
   <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="True" Width="350px" Height="50px" OnDataBinding="CrystalReportViewer1_DataBinding" OnLoad="CrystalReportViewer1_Load" OnReportRefresh="CrystalReportViewer1_ReportRefresh" SeparatePages="False" ToolPanelWidth="150px" />
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="SayfaAdi">
</asp:Content>


