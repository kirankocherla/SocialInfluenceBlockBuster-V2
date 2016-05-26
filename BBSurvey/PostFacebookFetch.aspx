<%@ Page Title="" Language="C#" MasterPageFile="~/SurveyMaster.Master" AutoEventWireup="true" CodeBehind="PostFacebookFetch.aspx.cs" Inherits="BBSurvey.PostFacebookFetch" %>
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
                    <p>
                        We will now ask you to have a look around Blockbuster.dk. <br />

Please make sure that you look at not only the front page but also the sub-sections that you see in the top menu (“Genrer”, “Inspiration” etc.). 
As this is not the live version of Blockbuster.dk, you are able to scroll down, but not to click to read more about the movies. Have a look and tell us what you think about the site afterwards.
                        <br />
                        <b>Once you have looked around the website please come back and start the survey by clicking survey button</b> 
                    </p>
				</div>
			<div id="DIV_83" style="text-align:right;">				
				<div id="DIV_129" style="float:right;width: 500px;">
					<div id="DIV_130" style="width: 400px;">
					    <table>
					        <tr>
					            <td style="padding-left: 20px;">
					                <a class="A_131"  href="BBHome.aspx?ResponseId=<%=ResponseId %>" target="_blank" >BlockBuster</a>						
					            </td>
                                <td style="padding-left: 20px;">
                                    <asp:linkbutton onclick="OnNextClick" id="linkNext" runat="server" cssclass="A_131">Survey</asp:linkbutton>						
                                </td>
					        </tr>
					    </table>
						
                        
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
