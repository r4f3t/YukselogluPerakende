<%@ Page Language="C#" MasterPageFile="~/LTEMASTER2.Master" AutoEventWireup="true" CodeBehind="A_Kisiler.aspx.cs" Inherits="seyhandagitim.A_Kisiler" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
<div class="panel panel-default">
				<div class="panel-body status">
					<div class="who clearfix">
						<h4>Müşteri Temsilcilerimize Merhaba Deyin...</h4>
					</div>
					<div class="row">
						<div class="text">
						    
                            <asp:Repeater ID="RTPTemsilci" runat="server">
                                <ItemTemplate>

                          
                            <div class="col-lg-4">
								<div class="well text-center connect">
									<img src="img/avatars/male.png" alt="img" class="margin-bottom-5 margin-top-5">
									<br>
									<span class="font-xs"><b><%#Eval("CariAdi") %></b></span>
                                    <br />
                                    <span class="font-sm"><b><%#Eval("ACIKLAMA") %></b></span>
                                    </br>
									<a href="a_sohbet.aspx?kime=<%#Eval("UserId") %>&kimeSTR=<%#Eval("CariAdi") %>" class="btn btn-xs btn-success margin-top-5 margin-bottom-5"> <span class="font-xs">Sohbete Başlayın</span> </a>
                                    <a href="tel:<%#Eval("TELNO") %>" class="btn btn-xs btn-primary margin-top-5 margin-bottom-5"> <span class="font-xs">Arama Yapın</span> </a>
                                    <a href="mailto:<%#Eval("EMAIL") %>" class="btn btn-xs btn-success margin-top-5 margin-bottom-5"> <span class="font-xs">Mail Atın</span> </a>
								</div>
							</div>

                                   </ItemTemplate>
                            </asp:Repeater>
							
						</div>
					</div>
					<ul class="links text-right">
						<li class="">
							<a href="mailto:rafet@mentalsoft.net">Kimse Geri Dönüş Yapmıyor Mu ? <i class="fa fa-arrow-right"></i> </a>
						</li>
					</ul>
				</div>
			</div>

</asp:Content>


