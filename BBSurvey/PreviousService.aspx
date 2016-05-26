<%@ Page Title="" Language="C#" MasterPageFile="~/SurveyMaster.Master" AutoEventWireup="true" CodeBehind="PreviousService.aspx.cs" Inherits="BBSurvey.PreviousService" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="DIV_81">
		<div id="DIV_82">			
			<div id="DIV_138" style="height:600px;">
				<div id="DIV_139" style="height: 500px;width: 100%;">
					<h1>
					    Previous usage of streaming services
					</h1>
                    <br />
                    <br />
                    <h3>Q: Have you ever used one or more of the following movie streaming services?</h3>
                     <asp:radiobuttonlist runat="server" id="rdPreviousServices">
                        <asp:ListItem text="" value=""></asp:ListItem>   
                      </asp:radiobuttonlist>
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
