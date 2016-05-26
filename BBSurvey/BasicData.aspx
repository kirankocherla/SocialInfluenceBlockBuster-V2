<%@ Page Title="" Language="C#" MasterPageFile="~/SurveyMaster.Master" AutoEventWireup="true" CodeBehind="BasicData.aspx.cs" Inherits="BBSurvey.BasicData" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="DIV_81">
		<div id="DIV_82">			
			<div id="DIV_138" style="height:600px;">
				<div id="DIV_139" style="height: 500px;width: 100%;">
					
                 <h3> Q: Please choose your Age group?</h3>
                     <asp:dropdownlist runat="server" id="rdAge">
                        <asp:ListItem text="18-24" value="18-24"></asp:ListItem>   
                         <asp:ListItem text="25-30" value="25-30"></asp:ListItem>   
                         <asp:ListItem text="31-40" value="31-40"></asp:ListItem>   
                         <asp:ListItem text="40-60" value="40-60"></asp:ListItem>   
                         <asp:ListItem text="60+" value="60+"></asp:ListItem>   
                      </asp:dropdownlist>
                   
                    <br />
                    <h3>Q: Please provider your Gender information?</h3>
				    <asp:dropdownlist runat="server" id="rdGender">
                        <asp:ListItem text="M" value="Male"></asp:ListItem>   
                         <asp:ListItem text="F" value="Female"></asp:ListItem>   
                         <asp:ListItem text="Others" value="Others"></asp:ListItem>                            
                      </asp:dropdownlist>
                    
                    <br />
                    <h3> Q: Please let us know about your marriage status?</h3>
                     <asp:dropdownlist runat="server" id="rdMarries">
                        <asp:ListItem text="Single" value="Single"></asp:ListItem>   
                         <asp:ListItem text="Married" value="Married"></asp:ListItem>   
                         <asp:ListItem text="In a relation" value="In a relation"></asp:ListItem>                            
                      </asp:dropdownlist>
                    
                    <br />
                    <h3>Q: How many children you have if it aplies to you?</h3>
                     <asp:dropdownlist runat="server" id="rdChildrenCount">
                        <asp:ListItem text="0" value="0"></asp:ListItem>   
                         <asp:ListItem text="1" value="1"></asp:ListItem>   
                         <asp:ListItem text="2" value="2"></asp:ListItem>
                         <asp:ListItem text="3" value="3"></asp:ListItem>                            
                         <asp:ListItem text="4+" value="4+"></asp:ListItem>                                                        
                      </asp:dropdownlist>
                    
                    <br />
                    <h3>Q: Please choose age of your child no. 1 (if applicable)?</h3>
                     <asp:dropdownlist runat="server" id="rdChildAge1">
                        <asp:ListItem text=">1" value="Less than 1"></asp:ListItem>   
                         <asp:ListItem text="1-2" value="1-2"></asp:ListItem>   
                         <asp:ListItem text="3-4" value="3-4"></asp:ListItem>
                         <asp:ListItem text="4-7" value="4-7"></asp:ListItem>                            
                         <asp:ListItem text="7-13" value="7-13"></asp:ListItem>                                                        
                         <asp:ListItem text="14+" value="14+"></asp:ListItem>                                                        
                      </asp:dropdownlist>
                    
                    <br />
                    <h3>Q: Please choose age of your child no. 2 (if applicable)?</h3>
                     <asp:dropdownlist runat="server" id="rdChildAge2">
                        <asp:ListItem text=">1" value="Less than 1"></asp:ListItem>   
                         <asp:ListItem text="1-2" value="1-2"></asp:ListItem>   
                         <asp:ListItem text="3-4" value="3-4"></asp:ListItem>
                         <asp:ListItem text="4-7" value="4-7"></asp:ListItem>                            
                         <asp:ListItem text="7-13" value="7-13"></asp:ListItem>                                                        
                         <asp:ListItem text="14+" value="14+"></asp:ListItem>                                                        
                      </asp:dropdownlist>
                    
                    <br />
                    <h3>Q: Please choose age of your child no. 3 (if applicable)?</h3>
                     <asp:dropDownList runat="server" id="rdChildAge3">
                        <asp:ListItem text=">1" value="Less than 1"></asp:ListItem>   
                         <asp:ListItem text="1-2" value="1-2"></asp:ListItem>   
                         <asp:ListItem text="3-4" value="3-4"></asp:ListItem>
                         <asp:ListItem text="4-7" value="4-7"></asp:ListItem>                            
                         <asp:ListItem text="7-13" value="7-13"></asp:ListItem>                                                        
                         <asp:ListItem text="14+" value="14+"></asp:ListItem>                                                        
                      </asp:dropDownList>
                    
                    <br />
                    <h3>Q: Please provide us you email address?</h3>
                    <asp:textbox runat="server" width="200" id="txtEmail"></asp:textbox>

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
