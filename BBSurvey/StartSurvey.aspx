<%@ Page Title="" Language="C#" MasterPageFile="~/SurveyMaster.Master" AutoEventWireup="true" CodeBehind="StartSurvey.aspx.cs" Inherits="BBSurvey.StartSurvey" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="DIV_81">
		<div id="DIV_82">			
			<div id="DIV_138" style="height:600px;">
				<div id="DIV_139" style="height: 500px;width: 100%;">
					<h1>
					    Instructions
					</h1>
                    <br />
                    <br />
                    <h2>Purpose of study</h2>
                    <p>To get your opinion about a new movie streaming service </p>   
            
                    <h2>Compensation</h2>
                    <p>As thanks for your time, all participants will enter a draw for an Apple iPad/Gift card and a number of other attractive prizes.  </p>   
            
                    <h2>Contact Info</h2>
                    <p>If you have any questions or concerns in regard to this survey, please feel free to contact XX</p>   
            
                    <h2>Duration and flow</h2>
                    <p>
                        You will be asked to look at a website and then answer a couple of questions about your experience with the website. Should not take more than 5 minutes. In the beginning of the survey you will be asked (via a Facebook pop-up) for permission for this survey to get access to your list of friends and your basic profile info. The information will only be used in this survey, and will, like the rest of the survey, be treated with confidentiality. And we will not post anything on Facebook, neither on your own wall or your friends’. This permission will be deleted after 1 month of your completion of the survey. 
                    </p>   
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
