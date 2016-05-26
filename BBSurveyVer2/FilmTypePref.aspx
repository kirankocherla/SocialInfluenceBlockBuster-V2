<%@ page title="" language="C#" masterpagefile="~/SurveyMaster.Master" autoeventwireup="true" codebehind="FilmTypePref.aspx.cs" inherits="BBSurveyVer2.FilmTypePref" %>

<asp:content id="Content1" contentplaceholderid="head" runat="server">
</asp:content>

<asp:content id="Content2" contentplaceholderid="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 100px;">
        <div class="row">
            <div class="col-lg-12" style="height: 30px;" id="divQuestion" runat="server">
                <h4>Forestil dig, at du skal se en film derhjemme i næste weekend. Hvilken type film ville du sandsynligvis vælge at se? </h4>
                <p>
                    <asp:label runat="server" id="lblError" forecolor="red" visible="False"></asp:label> <br />
                    <asp:radiobuttonlist runat="server" id="rdFilmType" repeatdirection="Vertical"  cssclass="rbl">
                    </asp:radiobuttonlist>
                </p>
                <br />
                <div runat="server" id="divFilterNotStream">
                    <h4>Hvordan søger du typisk inspiration, når du skal vælge, hvilken film du vil se på en film streaming-tjeneste?</h4>
                <p>
                    <asp:checkBoxList runat="server" id="rdFilmInspiration" repeatdirection="Vertical"  cssclass="cbl">
                        
                    </asp:checkBoxList>
                </p>
                </div>
                                
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
</asp:content>

