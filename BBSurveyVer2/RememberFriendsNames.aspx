<%@ Page Title="" Language="C#" MasterPageFile="~/SurveyMaster.Master" AutoEventWireup="true" CodeBehind="RememberFriendsNames.aspx.cs" Inherits="BBSurveyVer2.RememberFriendsNames" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 100px;">
        <div class="row">
            <div class="col-lg-12" style="height: 30px;" id="divQuestion" runat="server">
                <h2>
                    Kan du huske navnene på nogle af de Facebook-venner, du så på websitet?
                </h2>
                <br />                
                <asp:label runat="server" id="lblError" forecolor="red" visible="False"></asp:label><br />                
                <p>
                    <asp:radiobuttonlist runat="server" id="rdRemeberFriendNames" cssclass="rbl" repeatdirection="Vertical">
                        <asp:listitem text="Ja" value="1"></asp:listitem>
                        <asp:listitem text="Nej" value="0"></asp:listitem>                        
                    </asp:radiobuttonlist><br /><br />                    
                </p>                
                
                <br /><br />
                <h4>Hvis ja, skriv navnene på så mange, som du kan huske.</h4>
                <br /><br />
                
                <asp:textbox runat="server" TextMode="MultiLine" Height="50" id="txtFriendNames" width="70%"></asp:textbox>
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
