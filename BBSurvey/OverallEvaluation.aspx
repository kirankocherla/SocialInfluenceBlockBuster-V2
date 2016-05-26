<%@ Page Title="" Language="C#" MasterPageFile="~/SurveyMaster.Master" AutoEventWireup="true" CodeBehind="OverallEvaluation.aspx.cs" Inherits="BBSurvey.OverallEvaluation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="DIV_81">
		<div id="DIV_82">			
			<div id="DIV_138" style="height:600px;">
				<div id="DIV_139" style="height: 500px;width: 100%;">
					<h1>
					    Overall evaluation
					</h1>
                    <br />
                    <br />
                    <p></p>
                    <h3> Overall, taking into account both structure, film selection and any other things you may find relevant when chosing a movie streaming service, how appealing did you found Blockbuster.dk? ? (1 = very bad, 5 = very good)</h3>
                     <asp:radiobuttonlist runat="server" id="rdOverallEvaluation" repeatdirection="Horizontal">
                        <asp:ListItem text="1" value="1"></asp:ListItem>   
                         <asp:ListItem text="2" value="2"></asp:ListItem>   
                         <asp:ListItem text="3" value="3"></asp:ListItem>   
                         <asp:ListItem text="4" value="4"></asp:ListItem>   
                         <asp:ListItem text="5" value="5"></asp:ListItem>   
                      </asp:radiobuttonlist>
                    
                    <h3>Q: Please write a few words about specific good or bad things about why you rated Blockbuster.dk </h3>
				    <asp:textbox runat="server" id="txtOpenAnswer" textmode="MultiLine" width="500" height="100" />                        
                    
                    <br /><br />
                    <h3> On a scale from 1-5, how likely is it that you will use Blockbuster.dk within the next 3 months?</h3>
                     <asp:radiobuttonlist runat="server" id="rdAdopt" repeatdirection="Horizontal">
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
