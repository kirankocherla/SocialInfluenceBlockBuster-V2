<%@ Page Title="" Language="C#" MasterPageFile="~/SurveyMaster.Master" AutoEventWireup="true" CodeBehind="PrizeSelection.aspx.cs" Inherits="BBSurvey.PrizeSelection" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="DIV_81">
		<div id="DIV_82">			
			<div id="DIV_138" style="height:600px;">
				<div id="DIV_139" style="height: 500px;width: 100%;">
					<h1>
					    Prize selection and contact permission
					</h1>
                    <br />
                    <br />
                    <p></p>
                    <h3>Q: You are now almost done – we just need to know which prize you would like to win, if you’re one of the lucky winners. You will automatically enter the draw for an iPad/Giftcard, but we will also have a draw for either movie tickets or vouchers for free films at Blockbuster.dk. In case, you’re one of the winners, please indicate whether you would rather win a cinema ticket or a voucher for two free film vouchers for Blockbuster.dk. </h3>
                     <asp:radiobuttonlist runat="server" id="rdChooseGift">
                        <asp:ListItem text="CinemaTicket" value="Cinema Ticket"></asp:ListItem>   
                         <asp:ListItem text="BBVoucher" value="Vouchers for two films at Blockbuster.dk"></asp:ListItem>   
                         <asp:ListItem text="None" value="None of the above"></asp:ListItem>                            
                      </asp:radiobuttonlist>
                    <br />
                    <br />
                    
                    <h3>Q: Finally, we may want to contact randomly selected participants to elaborate further on their experience of the site. Please check box if you do not want to be contacted afterwards. </h3>
                     <asp:checkbox runat="server" id="checkContactNotAllowed" text="I do not wish to be contacted after this survey" />                                        
				</div>
			<div id="DIV_83" style="text-align:right;">				
				<div id="DIV_129" style="float:right;">
					<div id="DIV_130">
						<asp:linkbutton onclick="OnNextClick" id="linkNext" runat="server" cssclass="A_131">Next</asp:linkbutton>						
						<cufon id="CUFON_132">
							<canvas id="CANVAS_133">
							</canvas>
							<cufontext id="CUFONTEXT_134">
								Tools
							</cufontext>
						</cufon>
						<cufon id="CUFON_135">
							<canvas id="CANVAS_136">
							</canvas>
							<cufontext id="CUFONTEXT_137">
								Page
							</cufontext>
						</cufon>
					</div>
				</div>
			</div>
		</div>
		<div id="DIV_232">
		</div>
		</div>
	</div>
</asp:Content>
