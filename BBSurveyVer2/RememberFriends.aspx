<%@ Page Title="" Language="C#" MasterPageFile="~/SurveyMaster.Master" AutoEventWireup="true" CodeBehind="RememberFriends.aspx.cs" Inherits="BBSurveyVer2.RememberFriends" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 100px;">
        <div class="row">
            <div class="col-lg-12" style="height: 30px;" id="divQuestion" runat="server">
                <h2>
                    Prøv at tænke tilbage på det website, du lige har besøgt. <br/><br/>Var der på websitet…
                </h2>
                <br />                
                <asp:label runat="server" id="lblError" forecolor="red" visible="False"></asp:label><br />                
                <table class="table-striped">
                    <tr>
                        <td></td>
                        <td class="text-center" style="padding: 10px;">Ja</td>
                        <td class="text-center" style="padding: 10px;">Nej</td>
                        <td class="text-center" style="padding: 10px;">Kan ikke huske</td>
                        
                    </tr>
                    <tr>
                        <td style="margin-bottom:10px;padding-bottom:10px;">Et børnefilm-tema</td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radioChildFilm1" groupname="child"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radioChildFilm0" groupname="child"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radioChildFilmX" groupname="child"/></td>
                    </tr>
                    <tr>
                        <td style="margin-bottom:10px;padding-bottom:10px;">Billeder af nogle af dine Facebook-venner?</td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radioFriendPics1" groupname="friend"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radioFriendPics0" groupname="friend"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radioFriendPicsX" groupname="friend"/></td>                        
                    </tr>                    
                    <tr>
                        <td style="margin-bottom:10px;padding-bottom:10px;">Et julefilm-tema</td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radioJuleFilm1" groupname="chrismas"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radioJuleFilm0" groupname="chrismas"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radioJuleFilmX" groupname="chrismas"/></td>
                    </tr>
                    <tr>
                        <td style="margin-bottom:10px;padding-bottom:10px;">Information om en klippekort-ordning</td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radioKlipKort1" groupname="klipkort"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radioKlipKort0" groupname="klipkort"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radioKlipKortX" groupname="klipkort"/></td>
                    </tr>
                    <tr>
                        <td style="margin-bottom:10px;padding-bottom:10px;">Et musical-tema</td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radioMusicTheme1" groupname="music"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radioMusicTheme0" groupname="music"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radioMusicThemeX" groupname="music"/></td>
                    </tr>
                    <tr>
                        <td style="margin-bottom:10px;padding-bottom:10px;">Et Julia Roberts-film tema</td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radioJuliaRobert1" groupname="julia"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radioJuliaRobert0" groupname="julia"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radioJuliaRobertX" groupname="julia"/></td>
                    </tr>
                </table>                
                
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
