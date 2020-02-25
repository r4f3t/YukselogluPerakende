<%@ Page Language="C#" MasterPageFile="~/LTEMASTER2.Master" AutoEventWireup="true" CodeBehind="AA_SohbetTem.aspx.cs" Inherits="seyhandagitim.AA_SohbetTem" %>


<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <script type="text/javascript">
        function TXTSilRafet() {
            var MSG = document.getElementById(<%=TXTMesaj.ClientID%>);
            MSG.value = 'rafet';
        }
    </script>
    
    
    <style>
#parentDiv
 {
  width:100%;
  height:300px;
  overflow:auto;
  border: 0px black solid;
  overflow-y:scroll;   
  display:flex;
  flex-direction: column-reverse;
 }
 </style>

    <div class="row">
        <div class="col-lg-12">
            

            <div class="panel panel-default">
				<div class="panel-body status">
					<div class="who clearfix">
						<h4>Canlı Konuşma</h4>
					</div>
					
			   <div id="parentDiv"  >
                   <asp:Timer runat="server" id="UpdateTimer" interval="500" ontick="UpdateTimer_Tick" /> 
 
                   <asp:UpdatePanel ID="UpdatePanel2" runat="server" updatemode="Conditional">
                       <Triggers>
 
                          <asp:AsyncPostBackTrigger controlid="UpdateTimer" eventname="Tick" />
 
                      </Triggers>
                       <ContentTemplate>
                   <asp:Repeater ID="RPTMessages" runat="server">
                       <ItemTemplate>
                <div class="row">
                   <div class="col-lg-6 <%#Eval("BoxFloat") %>">
                     <div class="alert alert-<%#Eval("BoxBColor") %>">
                         <span class="label bg-color-<%#Eval("BoxHeadColor") %>" ><%#Eval("KIMDENSTR") %>:</span>
                         <h4 > <%#Eval("MESAJ") %> </h4>
                         <span class="label bg-color-orange pull-right" ><%#Convert.ToDateTime(Eval("ADDDATE")).ToString("dd/MM/yyyy HH:mm")  %></span>
                     </div>
			       </div>
				</div>     

        <%--        <div class="row">
                   <div class="col-lg-6 pull-right">
                     <div class="alert alert-success">
                         <span class="label bg-color-green" >Rafet:</span>
                         <h4 class=""> Insert buttons to header manually or dynamically </h4>
                         <span class="label bg-color-orange pull-right" >16.17.2017 17:36</span>
                     </div>
			       </div>
				</div>     
                    --%>
                           </ItemTemplate>
                   </asp:Repeater>
                        </ContentTemplate>
                   </asp:UpdatePanel>   
                               
               	</div>

					<div class="chat-footer">

							<!-- CHAT TEXTAREA -->
							<div class="textarea-div">

								<div class="typearea">
                                  <asp:UpdatePanel ID="UPDPanelTXT" runat="server" UpdateMode="Conditional">
                                        <ContentTemplate>
									<textarea placeholder="Cevap Yazın...." runat="server" id="TXTMesaj" class="custom-scroll"></textarea>
                                            </ContentTemplate>
                                    </asp:UpdatePanel>
								</div>

							</div>

							<!-- CHAT REPLY/SEND -->
							<span class="textarea-controls">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <asp:Button ID="BTNSend" CssClass="btn btn-sm btn-primary pull-right" OnClick="BTNSend_Click" OnClientClick="TXTSilRafet();" runat="server" Text="Gönder" />
                                    </ContentTemplate>
                                </asp:UpdatePanel>
								</span>

						</div>
				</div>
			</div>













        </div>
    </div>



</asp:Content>


<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
</asp:Content>
