<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterAna.Master" CodeBehind="ZZSiparis.aspx.cs" Inherits="seyhandagitim.ZZSiparis" %>


<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>



<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder2">
   
  
</style>
    
       <table style="width:auto; float:right; background-color:; border:2px outset #808080; font-family:Tahoma; font-weight:400; font-size:15px;" 
       
       
       <tr><td>Sipariş No</td><td style="text-align:center; width:10px;">:</td><td>SP10000003</td></tr>
       <tr><td>Sipariş Tarihi</td><td style="text-align:center;">:</td><td>20.02.2016</td></tr>


      </div>
    
    <table border="0" style="width:auto; border:2px outset #808080; float:left;  font-family:Tahoma; font-weight:400; font-size:15px;" >


       <tr><td>Cari Ünvanı</td><td style="text-align:center; width:10px;">:</td><td>MENTALSOFT BİLİŞİM VE DANIŞMANLIK</td></tr>
       <tr><td>Cari Kodu</td><td style="text-align:center;">:</td><td>320.02.1.254</td></tr>


   </table>
  
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KOZAConnectionString %>" SelectCommand="select S.LogicalREF,U.NAME as UrunAd,U.CODE as CODE,S.Miktar as Miktar,S.BFiyat as Bfiyat,(S.Miktar*S.BFiyat) as TFiyat,((S.Miktar*S.BFiyat*18)/100)+S.Miktar*S.BFiyat as KDV,S.Aciklama  from ZTbL_Siparisler as S left outer join LG_052_ITEMS as U on S.UrunId=U.LOGICALREF where  S.Durum=0 and S.CariId=@CLIENTREF"  UpdateCommand="UPDATE ZTbL_Siparisler SET [Miktar] = @Miktar WHERE [LogicalReF] = @LogicalReF" DeleteCommand="DELETE FROM [ZTbL_Siparisler] WHERE [LogicalReF] = @LogicalReF" >
        <SelectParameters>
            <asp:ControlParameter ControlID="Label1" Name="CLIENTREF" PropertyName="Text" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Miktar" Type="Int32" />
            <asp:Parameter Name="Logicalref" Type="Int32" />
            <asp:Parameter Name="İskonto" Type="Double" />
        </UpdateParameters>
        <DeleteParameters>
            <asp:Parameter Name="LogicalReF" Type="Int32" />
        </DeleteParameters>
    </asp:SqlDataSource>
      <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
      <dx:ASPxGridView ID="GridSepet" runat="server" Width="100%"  AutoGenerateColumns="False" KeyFieldName="LogicalREF" Theme="Default" DataSourceID="SqlDataSource1" >
        <Columns>
            <dx:GridViewDataMemoColumn  Width="10px" FieldName="LogicalREF" Caption="Satır No" VisibleIndex="0" Visible="False">
                <CellStyle Font-Names="Tahoma" Font-Size="9px">
                </CellStyle>
                <EditFormSettings Visible="False" />
            </dx:GridViewDataMemoColumn>
            <dx:GridViewDataMemoColumn  Width="250px" FieldName="UrunAd" Caption="Ürün Adı" VisibleIndex="1">
                <EditFormSettings Visible="False" />
                <HeaderStyle HorizontalAlign="Center" />
                <CellStyle Font-Names="Tahoma" Font-Size="10pt" HorizontalAlign="Left">
                </CellStyle>
                <FooterTemplate>
                </FooterTemplate>
            </dx:GridViewDataMemoColumn>
            <dx:GridViewDataMemoColumn  Width="50px" FieldName="Miktar" Caption="Miktarı" PropertiesMemoEdit-DisplayFormatString="{0:0}" VisibleIndex="4">
                <PropertiesMemoEdit DisplayFormatString="{0:0}">
                </PropertiesMemoEdit>
                <HeaderStyle HorizontalAlign="Center" />
                <CellStyle Font-Names="Tahoma" Font-Size="9pt" HorizontalAlign="Center">
                </CellStyle>
                <FooterCellStyle HorizontalAlign="Center">
                </FooterCellStyle>
            </dx:GridViewDataMemoColumn>
            <dx:GridViewDataMemoColumn  Width="50px" PropertiesMemoEdit-DisplayFormatString="{0:0,0.00} TL" FieldName="Bfiyat" Caption="Br.Fiyatı" VisibleIndex="3">
                <HeaderStyle HorizontalAlign="Center" />
                <CellStyle Font-Names="Tahoma" Font-Size="9pt" HorizontalAlign="Center">
                </CellStyle>
                <PropertiesMemoEdit DisplayFormatString="#,0.#0 TL">
                </PropertiesMemoEdit>
                <EditFormSettings Visible="False" />
                <FooterTemplate>
                </FooterTemplate>
            </dx:GridViewDataMemoColumn>
            <dx:GridViewDataMemoColumn  Width="50px" PropertiesMemoEdit-DisplayFormatString="{0:0,0.00} TL" FieldName="TFiyat" Caption="Toplam" VisibleIndex="6">
                <HeaderStyle HorizontalAlign="Center" />
                <CellStyle Font-Names="Tahoma" Font-Size="9pt" HorizontalAlign="Center">
                </CellStyle>
                <PropertiesMemoEdit DisplayFormatString="#,0.#0 TL">
                </PropertiesMemoEdit>
                <EditFormSettings Visible="False" />
                <FooterCellStyle HorizontalAlign="Center">
                </FooterCellStyle>
            </dx:GridViewDataMemoColumn>
            <dx:GridViewCommandColumn VisibleIndex="8" Width="20px" ButtonType="Image" Visible="False">
                <EditButton Visible="True" Text="Düzenle">
                    <Image Height="15" Width="15" Url="/image/add.png">
                    </Image>
                </EditButton>
                <ClearFilterButton Visible="True">
                </ClearFilterButton>
                <DeleteButton  Image-Url="/image/delete.png" Image-Width="20" Image-Height="20" Visible="True" Text="Kaldır">
                    <Image Height="15" Width="15" Url="/image/delete.png">
                    </Image>
                </DeleteButton>
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn Caption="Ürün Kodu" FieldName="CODE" VisibleIndex="2" Width="200px">
                <HeaderStyle HorizontalAlign="Center" />
                <CellStyle Font-Size="10pt" HorizontalAlign="Left">
                </CellStyle>
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="İskonto" Visible="false" VisibleIndex="5" Width="70px">
            </dx:GridViewDataTextColumn>
        </Columns>
        <SettingsEditing Mode="EditForm" />
        <Settings ShowFooter="True" />
        <ClientSideEvents SelectionChanged="function(s, e) { OnGridFocusedRowChanged(); }" RowClick="function(s, e) { OnGridFocusedRowChanged(); }" FocusedRowChanged="function(s, e) { OnGridFocusedRowChanged(); }" />
        <TotalSummary >
            <dx:ASPxSummaryItem FieldName="Miktar" DisplayFormat="{0:0}"  SummaryType="Sum"/>
            <dx:ASPxSummaryItem FieldName="TFiyat" DisplayFormat="{0:,0.00} TL"  SummaryType="Sum"/>
        </TotalSummary>
    </dx:ASPxGridView>
    <script type="text/javascript">
        function yazdir() {
            window.print();
        }
    </script>
    <dx:ASPxButton ID="ASPxButton1" runat="server" AutoPostBack="false" ClientSideEvents-Click="yazdir" Text="Ekranı Yazdır" Width="200"></dx:ASPxButton>
    
    
    <table border="0" style="border:2px outset #808080; width:500px; font-family:Tahoma; font-size:15px; float:right; margin-top:50px; ">
        
        <tr>

            <td style="border:none;"> </td>
            <th style="border:none;"></th>
            <th>Yerel Para Birimi</th>
            <th>İşlem Dövizi</th>

        </tr>


        <tr>
            <td style="width:130px;">Toplam indirim</td>
            <td style="width:10px; text-align:center;">:</td>
            <td style="text-align:center;">12.00</td>
            <td style="text-align:center;">12.00</td>

        </tr>
        
        <tr>
            <td style="width:130px;">Toplam</td>
            <td style="width:10px; text-align:center;">:</td>
            <td style="text-align:center;">25.00</td>
            <td style="text-align:center;">25.00</td>

        </tr>
        
        <tr>
            <td style="width:130px;">Toplam KDV</td>
            <td style="width:10px; text-align:center;">:</td>
            <td style="text-align:center;">4.50</td>
            <td style="text-align:center;">4.50</td>

        </tr>

         <tr>
            <td style="width:130px;">Net</td>
            <td style="width:10px; text-align:center;">:</td>
            <td style="text-align:center;">29.50</td>
            <td style="text-align:center;">29.50</td>

        </tr>

    </table>
</asp:Content>



