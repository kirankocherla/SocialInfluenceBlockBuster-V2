<%@ page title="" language="C#" masterpagefile="~/SurveyMaster.Master" autoeventwireup="true" codebehind="PreviousService.aspx.cs" inherits="BBSurveyVer2.PreviousService" %>

<asp:content id="Content1" contentplaceholderid="head" runat="server">
</asp:content>

<asp:content id="Content2" contentplaceholderid="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 70px;">
        <div class="row">

            <div class="col-lg-12" style="height: 30px;" id="divQuestion" runat="server">

                <h4>Hvilke af følgende film og tv streaming-tjenester har du brugt inden for det seneste halve år? Det betyder ikke noget, hvilken platform (f.eks. tablet eller PC) du bruger tjenesten på</h4>
                <p>
                    <asp:label runat="server" id="lblError" forecolor="red" visible="False"></asp:label><br />
                    <asp:checkBoxList runat="server" id="rdPreviousServices" cssclass="cbl" repeatdirection="Vertical">
                        <asp:listitem text="" value=""></asp:listitem>
                    </asp:checkBoxList><br /><br />
                    <%--<asp:label runat="server" id="lblError" forecolor="red" visible="False"></asp:label>--%>

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
                    <h4>Email:</h4>
                    <asp:textbox width="250" runat="server" id="txtEmail"></asp:textbox> <br /><br />
                    <asp:button runat="server" id="cmdNotTargetGroup" text="Gem e-mail" onclick="NotTargetGroup"/>
                </p>
            </div>

        </div>
    </div>
</asp:content>

