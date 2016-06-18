<%@ Page Title="" Language="C#" MasterPageFile="~/SurveyMaster.Master" AutoEventWireup="true" CodeBehind="BasicData.aspx.cs" Inherits="BBSurveyVer2.BasicData" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 100px;">
        <div class="row">
            <div class="col-lg-12" style="height: 30px;" id="divQuestion" runat="server">
                <h4>Hvad er din alder?</h4>
                <p>
                    <asp:label runat="server" id="lblError" forecolor="red" visible="False"></asp:label><br />
                    <asp:dropdownlist runat="server" id="rdAge">
                        <asp:ListItem text="Vælg" value="-1"></asp:ListItem>   
                        <asp:ListItem text="Under 25år" value="Under25"></asp:ListItem>   
                         <asp:ListItem text="25-30" value="25-30"></asp:ListItem>   
                         <asp:ListItem text="31-40" value="31-40"></asp:ListItem>   
                         <asp:ListItem text="41-50" value="41-50"></asp:ListItem> 
                         <asp:ListItem text="51-60" value="51-50"></asp:ListItem>   
                         <asp:ListItem text="Over 60" value="60+"></asp:ListItem>                            
                      </asp:dropdownlist>
                </p><br />
                <h4>Er du ..?</h4>
                <p>                    
                    <asp:dropdownlist runat="server" id="rdGender">
                        <asp:ListItem text="Vælg" value="-1"></asp:ListItem>  
                        <asp:ListItem text="Mand" value="Male"></asp:ListItem>   
                         <asp:ListItem text="Kvinde" value="Female"></asp:ListItem>                            
                      </asp:dropdownlist>
                </p><br />
                <h4>Hvad er din civilstatus? </h4>
                <p>                    
                     <asp:dropdownlist runat="server" id="rdMarries">
                         <asp:ListItem text="Vælg" value="-1"></asp:ListItem>  
                        <asp:ListItem text="Single" value="Single"></asp:ListItem>   
                         <asp:ListItem text="I et forhold, men ej samboende" value="InRelation"></asp:ListItem>   
                         <asp:ListItem text="Gift eller samboende i et forhold" value="Married"></asp:ListItem>                            
                      </asp:dropdownlist>
                </p><br />
                <h4>Hvor mange børn under 18 år er der i din husstand? </h4>
                <p>                    
                     <asp:dropdownlist runat="server" id="rdChildrenCount">
                         <asp:ListItem text="Vælg" value="-1"></asp:ListItem>  
                        <asp:ListItem text="0" value="0"></asp:ListItem>   
                         <asp:ListItem text="1" value="1"></asp:ListItem>   
                         <asp:ListItem text="2" value="2"></asp:ListItem>
                         <asp:ListItem text="3" value="3"></asp:ListItem>                            
                         <asp:ListItem text="4 eller flere" value="4+"></asp:ListItem>                                                        
                      </asp:dropdownlist>
                </p>                
                <div class="row">
                    <div class="col-lg-6 text-right" style="padding-right: 15px;">
                        <asp:button runat="server" text="Tilbage" onclick="OnPreviousClick" id="cmdPrevious" width="100" />
                    </div>
                    <div class="col-lg-6" style="padding-right: 15px;">
                        <asp:button runat="server" text="Næste" onclick="OnNextClick" id="cmdNext" width="100" />
                    </div>
                </div>
            </div>
            <div class="col-lg-12" runat="server" id="divResult" visible="False">
                <p>
                    <h4>Du er desværre ikke i målgruppen for denne undersøgelse. Du deltager dog stadig i lodtrækningen om et gavekort på 1.000 kr. fra gavekortet.dk, hvis du skriver din e-mail adresse nedenfor. Tak for din interesse. </h4>
                    <br />
                    <br />
                    <h4>E-mail:</h4>
                    <asp:textbox width="250" runat="server" id="txtEmail"></asp:textbox> <br /><br />
                    <asp:button runat="server" id="cmdNotTargetGroup" text="Gem e-mail" onclick="NotTargetGroup"/>
                </p>
            </div>
        </div>
    </div>
</asp:Content>
