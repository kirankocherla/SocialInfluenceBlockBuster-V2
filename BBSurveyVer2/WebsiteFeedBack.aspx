<%@ page title="" language="C#" masterpagefile="~/SurveyMaster.Master" autoeventwireup="true" codebehind="WebsiteFeedBack.aspx.cs" inherits="BBSurveyVer2.WebsiteFeedBack" %>

<asp:content id="Content1" contentplaceholderid="head" runat="server">
</asp:content>

<asp:content id="Content2" contentplaceholderid="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 100px;">
        <div class="row">
            <div class="col-lg-12" style="height: 30px;" id="divQuestion" runat="server">
                <h3>Vi vil nu stille dig et par spørgsmål om dit indtryk af det website, som du lige har set. </h3>
                <h4>Hvor enig er du i følgende udsagn om det Blockbuster website, du lige har set?</h4>

                <br /><br />
                <asp:label runat="server" id="lblError" forecolor="red" visible="False"></asp:label> <br />
                <table class="table-striped">
                    <tr style="padding-top: 10px;">
                        <td></td>
                        <td class="text-center" style="padding: 10px;">Fuldstændig uenig</td>
                        <td class="text-center" style="padding: 10px;">Uenig</td>
                        <td class="text-center" style="padding: 10px;">Til dels uenig</td>
                        <td class="text-center" style="padding: 10px;">Hverken enig eller uenig</td>
                        <td class="text-center" style="padding: 10px;">Til dels enig</td>
                        <td class="text-center" style="padding: 10px;">Enig</td>
                        <td class="text-center" style="padding: 10px;">Fuldstændig enig</td>
                        <td class="text-center" style="padding: 10px;">Ved ikke</td>
                    </tr>
                    <tr style="padding-top: 10px;">
                        <td style="margin-bottom:10px;padding-bottom:10px;">Jeg kan godt lide websitet</td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radioWebsite1" groupname="website"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radioWebsite2" groupname="website"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radioWebsite3" groupname="website"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radioWebsite4" groupname="website"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radioWebsite5" groupname="website"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radioWebsite6" groupname="website"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radioWebsite7" groupname="website"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radioWebsite99" groupname="website"/></td>
                    </tr>
                    <tr style="padding-top: 10px;">
                        <td style="margin-bottom:10px;padding-bottom:10px;">Websitet gør det nemt at finde en film, jeg gerne vil se</td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radiowebsiteEasyFindFilm1" groupname="websiteEasyFindFilm"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radiowebsiteEasyFindFilm2" groupname="websiteEasyFindFilm"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radiowebsiteEasyFindFilm3" groupname="websiteEasyFindFilm"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radiowebsiteEasyFindFilm4" groupname="websiteEasyFindFilm"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radiowebsiteEasyFindFilm5" groupname="websiteEasyFindFilm"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radiowebsiteEasyFindFilm6" groupname="websiteEasyFindFilm"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radiowebsiteEasyFindFilm7" groupname="websiteEasyFindFilm"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radiowebsiteEasyFindFilm99" groupname="websiteEasyFindFilm"/></td>
                    </tr>                    
                    <tr style="margin-bottom:10px;padding-bottom:10px;">
                        <td>Jeg synes, det virker som en god filmtjeneste</td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radiofilmService1" groupname="filmService"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radiofilmService2" groupname="filmService"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radiofilmService3" groupname="filmService"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radiofilmService4" groupname="filmService"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radiofilmService5" groupname="filmService"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radiofilmService6" groupname="filmService"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radiofilmService7" groupname="filmService"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radiofilmService99" groupname="filmService"/></td>
                    </tr>                                        
                </table>
                  
                <br />
                <br />
                <h3>Uddyb gerne din oplevelse af websitet. Var der f.eks. nogen elementer eller funktioner, som særligt vakte din opmærksomhed, gjorde dig interesseret eller irriteret? </h3>
                <br />
                <asp:textbox runat="server" id="txtYourFeedBack" textmode="MultiLine" width="100%"></asp:textbox>
                <br /><br />

                <div class="row">
                    <div class="col-lg-6 text-right" style="padding-right: 15px;">                        
                    </div>
                    <div class="col-lg-6" style="padding-right: 15px;">
                        <asp:button runat="server" text="Næste" onclick="OnNextClick" id="cmdNext" width="100" />
                    </div>
                </div>
            </div>            
        </div>
    </div>
</asp:content>

