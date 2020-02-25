<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ZZZUdetay.aspx.cs" Inherits="seyhandagitim.ZZZUdetay" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>

                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <img src="urunpics/<%#Eval("PICURL") %>" width="250" height="200" />
                            </ItemTemplate>
                        </asp:Repeater>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="LBLMAx" runat="server" Font-Names="Trebuchet MS" Font-Size="10pt"></asp:Label>
                    </td>
                </tr>


                <tr>
                    <td>
                        <asp:Label ID="Label1" Visible="false" runat="server" Font-Names="Trebuchet MS" Font-Size="11pt" ForeColor="Red" Text="Ekler :"></asp:Label>
                        <asp:Label ID="LBLNAME3" runat="server" Font-Names="Trebuchet MS" Font-Size="11pt"></asp:Label></td>
                </tr>
                <tr>
                    <td>
                   <asp:Label ID="LBLB2B" runat="server" Font-Names="Trebuchet MS" Font-Size="11pt"></asp:Label></td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="LBLB2B2" Visible="true" runat="server" Font-Names="Trebuchet MS" Font-Size="11pt"></asp:Label></td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="LBLB2B3" Visible="true" runat="server" Font-Names="Trebuchet MS" Font-Size="11pt"></asp:Label></td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="LBLB2B4" Visible="true" runat="server" Font-Names="Trebuchet MS" Font-Size="11pt"></asp:Label></td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="LBLB2B5" Visible="true" runat="server" Font-Names="Trebuchet MS" Font-Size="11pt"></asp:Label></td>
                </tr>
            </table>

            <dx:ASPxGridView ID="GridList" runat="server" Settings-ShowTitlePanel="true" SettingsText-Title="Bu Ürünün Son 3 Alım Fiyatları"></dx:ASPxGridView>

            <asp:HiddenField ID="HFVade" runat="server" />
            <asp:HiddenField ID="HFMik" runat="server" />
            <asp:HiddenField ID="HFCURRATE" runat="server" />
            <asp:HiddenField ID="HFPRCPRICE" runat="server" />
            <asp:HiddenField ID="HFYetkiOran" runat="server" Value="0" />
            <asp:TextBox ID="TXTBRF" runat="server" Visible="false"></asp:TextBox>
        </div>
    </form>
</body>
</html>
