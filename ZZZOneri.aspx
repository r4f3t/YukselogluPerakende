<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ZZZOneri.aspx.cs" Inherits="seyhandagitim.ZZZOneri" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <style>
     .veriGirisi {
      float:left;display:inline-block; height:auto;
      margin-left:5px;
      margin-bottom:10px;
      box-shadow:1px 2px 3px #666;
      width:900px;
     }
     .sipBack {
      margin:auto;
      background:url(/dogan/iptal.png) no-repeat ;
      margin-top:7px;
   
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
               function EditorOnInit(urunId, Ukod) {
                   popup1.SetContentUrl('zzzurungec.aspx?stref=' + urunId + '&ISADD=1');
                   window.parent.popup1.SetHeaderText(Ukod);
                   popup1.ShowAtPos((window.innerWidth / 2) - 450, window.innerHeight / 2 - 160);
               };
               function EditorDOWNInit() {
                   popup1.Hide();
               };
               function HidePopupAndShowInfo(closedBy, returnValue, stockref) {
                   popup1.Hide();
                   popup3.Hide();
                   if (returnValue > 0) {
                       pcLogin.SetContentUrl('zzzoneri.aspx?LOWLEVELREF=' + returnValue + '&URUNID=' + stockref);
                       pcLogin.ShowAtPos((window.innerWidth / 2) - 405, window.innerHeight / 2 - 250);
                   }
                   else {
                       window.location.reload();
                   }
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
        <div class="veriGirisi">
            <table style="width:100%;">
                <tr><td colspan="2"><asp:Label ID="LBLUyari" runat="server" Font-Size="18pt" ForeColor="Red"  Text="Bu Ürünün Kullanıldığı Araçta Kullanılan Diğer Filtreler."></asp:Label></td>
                    <td>
                           <asp:Button ID="Button4" OnClick="Button4_Click" CssClass="sipBack"  runat="server"  Height="60" Width="120" BackColor="Transparent" BorderColor="Transparent" />
                    </td>
                </tr>
                <asp:Repeater ID="RPTONERi" runat="server">
                    <ItemTemplate>
                        <tr style="border-bottom:outset;border-width:0.5px;">
                    <td style="font-family:'Trebuchet MS';font-size:10pt;border-bottom:outset;border-width:0.5px;"><%#Eval("CODE") %></td> <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td style="text-align:center;font-family:'Trebuchet MS';font-size:10pt;border-bottom:outset;border-width:0.5px;"><%#Eval("SPECODE3") %></td> <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td style="text-align:center;font-family:'Trebuchet MS';font-size:10pt;border-bottom:outset;border-width:0.5px;"><%#Eval("ACIKLAMA") %></td> <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                              <td style="border-bottom:outset;border-width:0.5px;color:#f00;"><a href="?URUNID=<%#Request.QueryString["URUNID"] %>&domref=<%#Eval("DOMINANTREFS5") %>&UCODE=<%#Eval("CODE")%>&LOWLEVELREF=<%#Request.QueryString["LOWLEVELREF"] %>&stockref=<%#Eval("LOGICALREF") %>"><%#Eval("VY")%></a></td>
                            <td style="border-bottom:outset;border-width:0.5px;"><a href="?URUNID=<%#Request.QueryString["URUNID"] %>&LOWLEVELREF=<%#Request.QueryString["LOWLEVELREF"] %>&stockref=<%#Eval("LOGICALREF") %>&UCODE=<%#Eval("CODE")%>"><img src="/rimg/sipegec.png" width="200" height="30" /></a></td>
                </tr>
                    </ItemTemplate>
                </asp:Repeater>
        <tr><td colspan="8" style="text-align:center;">  
            
        </td></tr>

            </table>

        </div>







    </div>
    </form>
</body>
</html>
