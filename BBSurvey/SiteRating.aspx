<%@ Page Title="" Language="C#" MasterPageFile="~/SurveyMaster.Master" AutoEventWireup="true" CodeBehind="SiteRating.aspx.cs" Inherits="BBSurvey.SiteRating" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="DIV_81">
		<div id="DIV_82">			
			<div id="DIV_138" style="height:600px;">
				<div id="DIV_139" style="height: 500px;width: 100%;">
					<h1>
					    Rating of different elements of site
					</h1>
                    <br />
                    <br />
                    <p>We’ll now ask you a couple of questions about your impression of the site. On a scale from 1-5, where 1 is poor, and 5 is excellent, how well would you rate the following elements of the site: </p>
                    <h3>Q: Structure of the site ? (1 = very bad, 5 = very good)</h3>
                     <asp:radiobuttonlist runat="server" id="rdStructure" repeatdirection="Horizontal">
                        <asp:ListItem text="1" value="1"></asp:ListItem>   
                         <asp:ListItem text="2" value="2"></asp:ListItem>   
                         <asp:ListItem text="3" value="3"></asp:ListItem>   
                         <asp:ListItem text="4" value="4"></asp:ListItem>   
                         <asp:ListItem text="5" value="5"></asp:ListItem>   
                      </asp:radiobuttonlist>
                    
                    <h3>Q: Film selection ? (1 = very bad, 5 = very good)</h3>
                     <asp:radiobuttonlist runat="server" id="rdFilmSelection" repeatdirection="Horizontal">
                        <asp:ListItem text="1" value="1"></asp:ListItem>   
                         <asp:ListItem text="2" value="2"></asp:ListItem>   
                         <asp:ListItem text="3" value="3"></asp:ListItem>   
                         <asp:ListItem text="4" value="4"></asp:ListItem>   
                         <asp:ListItem text="5" value="5"></asp:ListItem>   
                      </asp:radiobuttonlist>
                    
                    <h3>Q: How inspiring in general you found the site ? (1 = very bad, 5 = very good)</h3>
                     <asp:radiobuttonlist runat="server" id="rdInspiring" repeatdirection="Horizontal">
                        <asp:ListItem text="1" value="1"></asp:ListItem>   
                         <asp:ListItem text="2" value="2"></asp:ListItem>   
                         <asp:ListItem text="3" value="3"></asp:ListItem>   
                         <asp:ListItem text="4" value="4"></asp:ListItem>   
                         <asp:ListItem text="5" value="5"></asp:ListItem>   
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
