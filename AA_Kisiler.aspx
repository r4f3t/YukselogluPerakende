<%@ Page Language="C#" MasterPageFile="~/LTEMASTER2.Master" AutoEventWireup="true" CodeBehind="AA_Kisiler.aspx.cs" Inherits="seyhandagitim.AA_Kisiler" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
<div class="panel panel-default">
				<div class="panel-body status">
					<div class="who clearfix">
						<h4> Gelen Mesajlar...</h4>
					</div>
					<div class="row">
						<div class="text">
						    
                            <asp:Repeater ID="RTPTemsilci" runat="server">
                                <ItemTemplate>

                          
                            <div class="col-sm-12 col-md-6 col-lg-4">
								<div class="well text-center connect">
									<img src="img/avatars/male.png" alt="img" class="margin-bottom-5 margin-top-5">
									<br>
									<span class="font-xs"><b><%#Eval("KIMDENSTR") %></b></span>
                                    <br />
									<a href="aa_sohbettem.aspx?kime=<%#Eval("KIMDEN") %>&kimeSTR=<%#Eval("KIMDENSTR") %>" class="btn btn-xs btn-success margin-top-5 margin-bottom-5"> <span class="font-xs">Sohbete Başlayın</span> </a>
                                 
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



