<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gsip2.aspx.cs" MasterPageFile="~/NSipMaster.Master" Inherits="seyhandagitim.gsip2" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxPopupControl" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>


<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>


<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
     <dx:ASPxGridView ID="GridItem" runat="server" KeyFieldName="LOGICALREF" AutoGenerateColumns="False" Width="100%" >
            <Columns>
                <dx:GridViewDataTextColumn FieldName="Ürün_Adı" Caption="Ürün Adı" VisibleIndex="0">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Ürün_Kodu" Caption="Kodu" VisibleIndex="1">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Urun_Ozel" Caption="Özellik" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="SatisFiyati" Caption="Satış Fiyatı"  VisibleIndex="3">
                </dx:GridViewDataTextColumn>
                  <dx:GridViewDataTextColumn FieldName="G_Stok" Caption="Gerç.Stok" VisibleIndex="4">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="F_Stok" Caption="Fiili Stok"  VisibleIndex="5">
                </dx:GridViewDataTextColumn>
                
                <dx:GridViewDataImageColumn  FieldName="G_Stok" Caption="Stok"  VisibleIndex="6">
                </dx:GridViewDataImageColumn>
                  <dx:GridViewDataTextColumn FieldName="Top_Satıs" Caption="Toptan Satış" VisibleIndex="7">
                </dx:GridViewDataTextColumn>
               
              
                 <dx:GridViewDataTextColumn FieldName="LOGICALREF" Visible="false"   VisibleIndex="10">
                </dx:GridViewDataTextColumn>
              
              
            </Columns>
            <SettingsPager AlwaysShowPager="True" RenderMode="Classic">
                <PageSizeItemSettings AllItemText="Tümü" Caption="Sayfa" Visible="True">
                </PageSizeItemSettings>
            </SettingsPager>
        </dx:ASPxGridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ADAGUNCONSTR %>"         SelectCommand="SELECT ITM.LOGICALREF, ITM.CODE AS Ürün_Kodu,ITM.NAME as Ürün_Adı,ITM.SPecode as Urun_Ozel,ISNULL(SAF.OAT,0) AS SAFiyatı,SAF.TARIH as SATarihi,ISNULL(PR1.PRICE,0)AS SatisFiyati,isnull(st.onhand,0)as G_Stok,(isnull(st.onhand,0)-isnull(st.RESERVED,0))AS F_Stok,ISNULL(SATILAN,0)AS Top_Satıs,R.CODE,R.UREF,ITM.VAT,R.SETREF FROM (SELECT LOGICALREF,CODE,NAME,SPECODE,PRODUCERCODE,VAT,UNITSETREF FROM LG_002_ITEMS WHERE ACTIVE=0 AND CLASSTYPE = 0) as ITM left outer join (SELECT STOCKREF,SUM(ONHAND)AS ONHAND,SUM(RESERVED) AS RESERVED,SUM(SALAMNT) AS SATILAN FROM       LG_002_01_STINVTOT WHERE INVENNO=-1 GROUP BY STOCKREF) as ST ON ITM.LOGICALREF=ST.STOCKREF LEFT OUTER JOIN ASRG_SONALISFIYATI AS SAF ON ITM.LOGICALREF=SAF.STOCKREF LEFT OUTER JOIN (SELECT PRICE,CARDREF,PTYPE,BEGDATE,ENDDATE,UOMREF,CLIENTCODE FROM dbo.LG_002_PRCLIST) AS PR1 ON ITM.LOGICALREF=PR1.CARDREF AND PR1.PTYPE=2 AND PR1.BEGDATE&lt;=GETDATE() AND PR1.ENDDATE&gt;=GETDATE() AND LEN(PR1.CLIENTCODE)=0 left outer JOIN (SELECT isnull(LOGICALREF,0) AS UREF,CODE, NAME AS BIRIM,UNITSETREF AS SETREF  FROM LG_002_UNITSETL where MAINUNIT=1) as R ON ITM.UNITSETREF=R.SETREF where ITM.LOGICALREF=@LOGICALREF">
            <SelectParameters>
                <asp:QueryStringParameter Name="LOGICALREF" QueryStringField="LOGICALREF" />
            </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>


