<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterAna.Master"  CodeBehind="adDegerlendirme.aspx.cs" Inherits="seyhandagitim.adDegerlendirme_" %>


<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder2">
       <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
       <telerik:RadMenu ID="RadMenu1" CssClass="orta" Runat="server" Skin="WebBlue" Width="100%">
        <Items>
         
            <telerik:RadMenuItem runat="server" NavigateUrl="~/aduye.aspx" Text="Plasiyerler" Visible="true">
            </telerik:RadMenuItem>
             <telerik:RadMenuItem runat="server" NavigateUrl="~/allSips.aspx" Text="Tüm Siparişler" Visible="true">
            </telerik:RadMenuItem>
            <telerik:RadMenuItem runat="server" NavigateUrl="~/adDegerlendirme.aspx" Text="Plasiyer Değerlendirme" Visible="true">
            </telerik:RadMenuItem>
            <telerik:RadMenuItem runat="server" NavigateUrl="~/plmain.aspx" Text="Müşteriler" Visible="False">
            </telerik:RadMenuItem>
            <telerik:RadMenuItem runat="server" NavigateUrl="~/uyelog.aspx" Text="ÜyeLOG" Visible="False">
            </telerik:RadMenuItem>
            <telerik:RadMenuItem runat="server" NavigateUrl="~/aduye.aspx" Text="Üye İşlemleri" Visible="False">
            </telerik:RadMenuItem>
            <telerik:RadMenuItem runat="server" NavigateUrl="~/cikis.aspx" Text="Çıkış">
            </telerik:RadMenuItem>
        </Items>
    </telerik:RadMenu>
    </asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">

      <table style="width:600px;">
                    <tr>
                        <td style="width:50px;">
                            <asp:Label ID="Label8" runat="server" Text="Başlangıç" Font-Size="9pt"></asp:Label>                   </td>
                        <td style="width:5px;">
                            :
                        </td>
                        <td style="width:80px;">
                            <style>
                                .gizli
                                {
                                    display:none;
                                }
                            </style>
                                   <telerik:RadDatePicker ID="RadDatePicker1" Runat="server" WrapperTableCaption="" AutoPostBack="True" Culture="tr-TR">
                                       <Calendar EnableWeekends="True" FastNavigationNextText="&amp;lt;&amp;lt;" UseColumnHeadersAsSelectors="False" UseRowHeadersAsSelectors="False">
                                       </Calendar>
                                       <DateInput DateFormat="dd.MM.yyyy" DisplayDateFormat="dd.MM.yyyy"  LabelWidth="40%"  AutoPostBack="True">
                                           <EmptyMessageStyle Resize="None" />
                                           <ReadOnlyStyle Resize="None" />
                                           <FocusedStyle Resize="None" />
                                           <DisabledStyle Resize="None" />
                                           <InvalidStyle Resize="None" />
                                           <HoveredStyle Resize="None" />
                                           <EnabledStyle Resize="None" />
                                       </DateInput>
                                       <DatePopupButton HoverImageUrl="" ImageUrl="" />
                            </telerik:RadDatePicker>
                       
                        </td>
                        <td style="width:30px;">
 <asp:Label ID="Label9" runat="server" Text="Bitiş" Font-Size="9pt"></asp:Label>                   </td>
                    
                        </td>
                        <td style="width:5px;">
 :
                        </td>
                        <td style="width:90px;">
                            <telerik:RadDatePicker ID="RadDatePicker2" Runat="server" WrapperTableCaption="" AutoPostBack="True" Culture="tr-TR">
                                <Calendar EnableWeekends="True" FastNavigationNextText="&amp;lt;&amp;lt;" UseColumnHeadersAsSelectors="False" UseRowHeadersAsSelectors="False">
                                </Calendar>
                                <DateInput AutoPostBack="True" DateFormat="dd.MM.yyyy" DisplayDateFormat="dd.MM.yyyy" LabelWidth="40%">
                                    <EmptyMessageStyle Resize="None" />
                                    <ReadOnlyStyle Resize="None" />
                                    <FocusedStyle Resize="None" />
                                    <DisabledStyle Resize="None" />
                                    <InvalidStyle Resize="None" />
                                    <HoveredStyle Resize="None" />
                                    <EnabledStyle Resize="None" />
                                </DateInput>
                                <DatePopupButton HoverImageUrl="" ImageUrl="" />
                            </telerik:RadDatePicker>
                        </td>
              <td style="width:100px; text-align:left;">
                  <style>
                      .gizli
                      {
                          display:none;
                      }
                  </style>
                   <asp:Button ID="Button10" runat="server" CssClass="gizli" Text="Sorgula" BorderColor="#DA251C" BorderStyle="Solid" BorderWidth="1px"  Width="100px" OnClick="Button10_Click" />
                  <telerik:RadButton ID="RadButton1" OnClick="Button10_Click" Width="100" runat="server" Text="Sorgula"></telerik:RadButton>
						    
                    
						    	
                        </td>
                    </tr>
                 </asp:Panel>	
                </table>

        <dx:ASPxGridView ID="grid" ClientInstanceName="grid" KeyFieldName="PlasiyerAdi" runat="server" AutoGenerateColumns="False" Width="100%" Theme="DevEx" SummaryText="Toplam">
   <Columns>
<dx:GridViewDataTextColumn FieldName="PlasiyerAdi" VisibleIndex="0" ReadOnly="True">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="HEDEF" PropertiesTextEdit-DisplayFormatString="{0:0,0} TL" VisibleIndex="1" ReadOnly="True">
<PropertiesTextEdit DisplayFormatString="{0:0,0} TL"></PropertiesTextEdit>
        </dx:GridViewDataTextColumn>
           
          
             
             
        </Columns>
                    
        <SettingsEditing EditFormColumnCount="3" Mode="PopupEditForm" />
        <SettingsPopup>
            <EditForm Width="600" />
        </SettingsPopup>
        <SettingsPager AlwaysShowPager="True"  />
                          <Settings ShowFooter="True" />
                    <SettingsBehavior AllowFocusedRow="True" />
    
            <Templates>
                <DetailRow>
                    <dx:ASPxGridView ID="ASPxGridView1" KeyFieldName="INVOICEREF" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableTheming="True" OnBeforePerformDataSelect="ASPxGridView1_BeforePerformDataSelect" Theme="Office2010Silver" Width="100%">
                        <Columns>
                            <dx:GridViewCommandColumn VisibleIndex="0">
                                <ClearFilterButton Visible="True">
                                </ClearFilterButton>
                            </dx:GridViewCommandColumn>
                            <dx:GridViewDataTextColumn FieldName="PlasiyerAdi" ReadOnly="True" VisibleIndex="1">
                                <Settings AllowAutoFilter="False" />
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="Cari Adı" VisibleIndex="2">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="Miktar" ReadOnly="True" VisibleIndex="3">
                                <Settings AllowAutoFilter="False" />
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="NET_TUT" VisibleIndex="4">
                                <Settings AllowAutoFilter="False" />
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="TOP_ISK" VisibleIndex="5">
                                <Settings AllowAutoFilter="False" />
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="TOP_MASRAF" VisibleIndex="6">
                                <Settings AllowAutoFilter="False" />
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="TOP" VisibleIndex="7">
                                <Settings AllowAutoFilter="False" />
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="Fat.Mal" ReadOnly="True" VisibleIndex="8">
                                <Settings AllowAutoFilter="False" />
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataMemoColumn FieldName="Kar" PropertiesMemoEdit-DisplayFormatString="{0:0,0.00} TL" VisibleIndex="9">
                                <PropertiesMemoEdit DisplayFormatString="{0:0,0.00} TL">
                                </PropertiesMemoEdit>
                                <Settings AllowAutoFilter="False" />
                            </dx:GridViewDataMemoColumn>
                             <dx:GridViewDataMemoColumn FieldName="Kar(%)" PropertiesMemoEdit-DisplayFormatString="{0:0,0.00} TL" VisibleIndex="9">
                                <PropertiesMemoEdit DisplayFormatString="{0:0,0.00}">
                                </PropertiesMemoEdit>
                                 <Settings AllowAutoFilter="False" />
                            </dx:GridViewDataMemoColumn>
                        </Columns>
                        <Templates>
                            <DetailRow>
                                 <dx:ASPxGridView ID="detailGrid" runat="server" Theme="Office2010Blue" DataSourceID="SqlDataSource1"
                    Width="100%" AutoGenerateColumns="False" OnBeforePerformDataSelect="detailGrid_BeforePerformDataSelect" >
                     <Columns>
                         <dx:GridViewDataMemoColumn FieldName="URUNADI" Caption="Ürün Adı" VisibleIndex="0">
                         </dx:GridViewDataMemoColumn>
                        
                      
                         <dx:GridViewDataMemoColumn FieldName="URUNMIKTARI"  Caption="Miktarı" VisibleIndex="1" PropertiesMemoEdit-DisplayFormatString="{0:0}">
                             <PropertiesMemoEdit DisplayFormatString="">
                             </PropertiesMemoEdit>
                         </dx:GridViewDataMemoColumn>
                         <dx:GridViewDataMemoColumn FieldName="BIRIMFIYAT"  Caption="BR.Fiyat" VisibleIndex="2" PropertiesMemoEdit-DisplayFormatString="{0:0}">
                             <PropertiesMemoEdit DisplayFormatString="{0:,0.00} TL">
                             </PropertiesMemoEdit>
                         </dx:GridViewDataMemoColumn>
                                      <dx:GridViewDataMemoColumn FieldName="SATIRTUTARI"  Caption="Top.Tutar" VisibleIndex="3" PropertiesMemoEdit-DisplayFormatString="{0:0}">
                             <PropertiesMemoEdit DisplayFormatString="{0:,0.00} TL">
                             </PropertiesMemoEdit>
                         </dx:GridViewDataMemoColumn>
                          <dx:GridViewDataMemoColumn FieldName="INDOR"  Caption="İnd.Or" VisibleIndex="4" PropertiesMemoEdit-DisplayFormatString="{0:0}">
                             <PropertiesMemoEdit DisplayFormatString="%{0:,0} ">
                             </PropertiesMemoEdit>
                         </dx:GridViewDataMemoColumn>
                         <dx:GridViewDataMemoColumn FieldName="VATMATRAH"  Caption="Net.Tutar" VisibleIndex="5" PropertiesMemoEdit-DisplayFormatString="{0:0}">
                             <PropertiesMemoEdit DisplayFormatString="{0:,0.00} TL">
                             </PropertiesMemoEdit>
                         </dx:GridViewDataMemoColumn>
                        
                    </Columns>
                    
                    <Settings ShowFooter="True" />
                    <TotalSummary>
                
                        <dx:ASPxSummaryItem DisplayFormat="{0:0,0.00} TL" FieldName="SATIRTUTARI" SummaryType="Sum" />
                         <dx:ASPxSummaryItem DisplayFormat="{0:0,0.00} TL" FieldName="VATMATRAH" SummaryType="Sum" />
                        
                    </TotalSummary> 
                </dx:ASPxGridView>
                                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Password='1Qaz2wsx';User ID='Alpay';Initial Catalog=GODB;Data Source=78.188.25.84" SelectCommand="SELECT *,CASE WHEN VATMATRAH <>0 THEN ((SATIRTUTARI/VATMATRAH)-1)*100 END AS INDOR FROM [ISRG_FaturaDetaY_001] WHERE ([INVOICEREF] = @INVOICEREF) AND VATMATRAH<>0">
                      <SelectParameters>
                          <asp:SessionParameter Name="INVOICEREF" SessionField="LOGICALREF" Type="Int32" />
                      </SelectParameters>
                  </asp:SqlDataSource>
                            </DetailRow>
                        </Templates>
                        <Settings ShowFilterRow="True" />
                        <SettingsDetail ShowDetailRow="true" />
                         <Settings ShowFooter="True" />
                    <TotalSummary>
                
                        <dx:ASPxSummaryItem DisplayFormat="{0:0,0.00} TL" FieldName="Kar" SummaryType="Sum" />
                         <dx:ASPxSummaryItem DisplayFormat="{0:0,0.00}" FieldName="Kar(%)" SummaryType="Average" />
                        
                    </TotalSummary> 
                    </dx:ASPxGridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ADAGUNCONSTR %>" SelectCommand="select (case  when CODE like '120.01%' then 'İLKER' when CODE like '120.02%' then 'BAHRİ' when CODE like '120.04%' then 'DİLEK' when CODE like '120.03%' then 'UĞUR'  END) as PlasiyerAdi,CL.DEFINITION_ as [Cari Adı],sum(RL.URUNMIKTARI) as [Miktar],RC.YEKUN as [NET_TUT],RC.INDIRIM as [TOP_ISK],RC.MASRAF as [TOP_MASRAF],RC.NETTOTAL as [TOP],sum((RL.URUNMIKTARI*RL.BIRIMFIYAT)) as[Fat.Mal],left((RC.YEKUN-sum(RL.URUNMIKTARI*RL.BIRIMFIYAT)),5) as [Kar],LEFT((RC.YEKUN-sum(RL.URUNMIKTARI* RL.BIRIMFIYAT ))*100/sum(RL.URUNMIKTARI*(case RL.BIRIMFIYAT when 0 then 1 else  RL.BIRIMFIYAT END)),5) as [Kar(%)],RL.INVOICEREF from ISRG_FaturaDetaY_001 as RL inner join (select CODE,LOGICALREF,NETTOTAL,CariRef,INDIRIM,MASRAF,YEKUN from ISRG_Faturalar_001) as RC on RL.INVOICEREF=RC.LOGICALREF inner join ( select DEFINITION_,LOGICALREF from LG_001_CLCARD) as CL on RC.CariRef=CL.LOGICALREF
where  (case  when CODE like '120.01%' then 'İLKER' when CODE like '120.02%' then 'BAHRİ' when CODE like '120.04%' then 'DİLEK' when CODE like '120.03%' then 'UĞUR'  END)=@PlasiyerAdi

 group by RC.CODE,CL.DEFINITION_ ,RC.YEKUN,RC.INDIRIM,RC.MASRAF,RC.NETTOTAL,RL.INVOICEREF 
">
                        <SelectParameters>
                            <asp:SessionParameter Name="PlasiyerAdi" SessionField="PlasiyerAdi" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </DetailRow>
            </Templates>
     <SettingsDetail ShowDetailRow="true" />
    </dx:ASPxGridView>
                   


        <br />
                   


</asp:Content>



