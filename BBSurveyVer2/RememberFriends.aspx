<%@ Page Title="" Language="C#" MasterPageFile="~/SurveyMaster.Master" AutoEventWireup="true" CodeBehind="RememberFriends.aspx.cs" Inherits="BBSurveyVer2.RememberFriends" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 100px;">
        <div class="row">
            <div class="col-lg-12" style="height: 30px;" id="divQuestion" runat="server">
                <h2>
                    Kan du huske, om der på det Blockbuster website, du lige har besøgt, var billeder af nogle af dine Facebook-venner?
                </h2>
                <br />                
                <asp:label runat="server" id="lblError" forecolor="red" visible="False"></asp:label><br />                
                <p>
                    <asp:radiobuttonlist runat="server" id="rdRememberFriends" cssclass="rbl" repeatdirection="Vertical">
                        <asp:listitem text="Ja, det var der" value="1"></asp:listitem>
                        <asp:listitem text="Nej, det var der ikke" value="0"></asp:listitem>
                        <asp:listitem text="Kan ikke huske det" value="99"></asp:listitem>
                    </asp:radiobuttonlist><br /><br />                    
                </p>                
                
                <br /><br />
                
                <div class="row">
                    <div class="col-lg-6 text-right" style="padding-right: 15px;">
                        <asp:button runat="server" text="Tilbage" onclick="OnPreviousClick" id="cmdPrevious" width="100" />                                                
                    </div>
                    <div class="col-lg-6" style="padding-right: 15px;">
                        <asp:button runat="server" text="Næste" onclick="OnNextClick" id="cmdNext" width="100" />
                    </div>
                </div>
            </div>            
        </div>
    </div>
</asp:Content>
