<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profil.aspx.cs" Inherits="seyhandagitim.Profil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center;">
            <asp:Label ID="lblKullanıcıAdSoyad" runat="server" BorderColor="Black" BorderStyle="Dotted" Font-Bold="True" ForeColor="#CC0000"></asp:Label>
            <table width="50%" align="center">
                <tr>
                    <td>ID</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblID" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Kullanıcı Adı</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblKullaniciAdi" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>E-Posta</td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblEPosta" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Profil Resmi</td>
                    <td>:</td>
                    <td>
                        <asp:Image ID="imgProfilResmi" runat="server" /></td>
                </tr>
            </table>
        </div>

    </form>
</body>
</html>
