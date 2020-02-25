<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/LTEMASTER2.Master" CodeBehind="ZZPlcbilg.aspx.cs" Inherits="seyhandagitim.ZZPlcbilg" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">

</asp:Content>


<asp:Content ID="Content3" runat="server" contentplaceholderid="SayfaAdi">
   
</asp:Content>



<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder2">
    
     <div class="col-md-6">
   <div class="box">
          <telerik:RadHtmlChart ID="RadHtmlChart1" runat="server" Skin="Windows7" Width="500px" Height="400px">
              <PlotArea>
                  <Series>
                     
                      <telerik:AreaSeries DataFieldY="BAKIYE" Name="Bakiye">
                          <MarkersAppearance MarkersType="Square" />
                          <Appearance>
                              <FillStyle BackgroundColor="#ffff66" />
                          </Appearance>
                      </telerik:AreaSeries>
                      <telerik:AreaSeries DataFieldY="ALACAK" Name="Alacak">
                          <Appearance>
                              <FillStyle BackgroundColor="#ff0000" />
                          </Appearance>
                      </telerik:AreaSeries>
                      <telerik:AreaSeries DataFieldY="BORC" Name="Borç">
                          <Appearance>
                              <FillStyle BackgroundColor="#000099" />
                          </Appearance>
                      </telerik:AreaSeries>
                  </Series>
                          <XAxis DataLabelsField="Tarih" Step="5">
                    <LabelsAppearance RotationAngle="90">
                    </LabelsAppearance>
                    <TitleAppearance Text="Aylar">
                    </TitleAppearance>
                </XAxis>
              </PlotArea>
          </telerik:RadHtmlChart>

  </div>
    </div>
 
      
     <div class="col-md-6">
         
                <asp:HiddenField ID="HFVADE"  runat="server" />
                <asp:HiddenField ID="HFRISK" runat="server" />
                <asp:HiddenField ID="HFACIK" runat="server" />
                <asp:HiddenField ID="HFGECIKEN" runat="server" />
                <asp:HiddenField ID="HFBAKIYE" runat="server" />
                <asp:HiddenField ID="HFAYT" runat="server" />

     



    
    


   <div class="box">
          <dx:ASPxGridView ID="grid1" Settings-ShowTitlePanel="true" SettingsText-Title="Son 10 Alınan Ürün" runat="server" Width="100%" AutoGenerateColumns="False" Theme="Office2003Blue">
            <Columns>
                <dx:GridViewDataTextColumn FieldName="URUNADI" VisibleIndex="1" Caption="Ürün Adı">
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle Font-Names="Tahoma" Font-Size="9pt">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="URUNMIKTARI" VisibleIndex="3" Caption="Miktar">
                
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle Font-Names="Tahoma" Font-Size="9pt" HorizontalAlign="Right">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="BIRIMFIYAT" VisibleIndex="4" Caption="Br.Fiyat">
                    <PropertiesTextEdit DisplayFormatString="#,0.#0 TL">
                    </PropertiesTextEdit>
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle Font-Names="Tahoma" Font-Size="9pt" HorizontalAlign="Right">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="CODE" VisibleIndex="0" Caption="Stok Kodu">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Tarih" FieldName="DATE_" VisibleIndex="2">
                    <PropertiesTextEdit DisplayFormatString="{0:dd/MM/yyyy}">
                    </PropertiesTextEdit>
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle Font-Names="Tahoma" Font-Size="9pt" HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Tutar" FieldName="SATIRTUTARI" VisibleIndex="5">
                     <PropertiesTextEdit DisplayFormatString="#,0.#0 TL">
                    </PropertiesTextEdit>
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle Font-Names="Tahoma" Font-Size="9pt" HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
            </Columns>
            <SettingsPager Visible="False">
            </SettingsPager>

<Settings ShowTitlePanel="True"></Settings>

<SettingsText Title="Son 10 Alınan &#220;r&#252;n"></SettingsText>
        </dx:ASPxGridView>
       </div>
         </div>
    <div class="row">

   <div class="col-md-6">

     <div class="col-md-4">
         <asp:Panel ID="PNLMenu"  runat="server">
            <div class="small-box bg-red">
            <div class="inner">
              <h6>  <asp:Label ID="LBLHata" runat="server" ></asp:Label> TL</h6>

              <p>Vadesi Geçmiş Tutar</p>
            </div>
            <div class="icon">
              <i class="ion ion-pie-graph"></i>
            </div>
            <a href="#" class="small-box-footer">
              <i class="fa fa-arrow-circle-right"></i>
            </a>
          </div>
         </asp:Panel>
      </div>


       <div class="col-md-4">
       
            <div class="small-box bg-green">
            <div class="inner">
              <h6>  <asp:Label ID="LBLVGelen" runat="server" ></asp:Label> TL</h6>

              <p>Vadesi Gelecek Tutar</p>
            </div>
            <div class="icon">
              <i class="ion ion-pie-graph"></i>
            </div>
            <a href="#" class="small-box-footer">
              <i class="fa fa-arrow-circle-right"></i>
            </a>
          </div>
     
      </div>

       <div class="col-md-4">
         <asp:Panel ID="Panel2"  runat="server">
            <div class="small-box bg-blue">
            <div class="inner">
              <h6>  <asp:Label ID="LBLBakiye" runat="server" ></asp:Label> TL</h6>

              <p>Toplam Bakiye</p>
            </div>
            <div class="icon">
              <i class="ion ion-pie-graph"></i>
            </div>
            <a href="#" class="small-box-footer">
              <i class="fa fa-arrow-circle-right"></i>
            </a>
          </div>
         </asp:Panel>
      </div>
    
   </div>
    </div>

</asp:Content>




