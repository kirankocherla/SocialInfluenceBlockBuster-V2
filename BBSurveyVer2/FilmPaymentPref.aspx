<%@ Page Title="" Language="C#" MasterPageFile="~/SurveyMaster.Master" AutoEventWireup="true" CodeBehind="FilmPaymentPref.aspx.cs" Inherits="BBSurveyVer2.FilmPaymentPref" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 100px;">
        <div class="row">
            <div class="col-lg-12" style="height: 30px;" id="divQuestion" runat="server">
                <h4>Forskellige streaming-tjenester tilbyder forskellige måder at betale for de film, du ser. Hvilken mulighed foretrækker du?</h4>
                <p>
                    <asp:label runat="server" id="lblError" forecolor="red" visible="False"></asp:label> <br />
                    <asp:radiobuttonlist runat="server" id="rdPaymentType" repeatdirection="Vertical"  cssclass="rbl">
                    </asp:radiobuttonlist>
                </p>
                <h2>Andet</h2>
                <asp:textbox runat="server" width="250" id="txtOther"></asp:textbox>
                <br />                
                <h4>Hvad beskriver bedst dit forbrug af film og tv-serier?</h4>
                <h4>Jeg ser generelt mest…</h4>
                <p>
                    <asp:label runat="server" id="lblError2" forecolor="red" visible="False"></asp:label> <br />
                    <asp:radiobuttonlist runat="server" id="radioFilmSerie" repeatdirection="Vertical"  cssclass="rbl">
                    </asp:radiobuttonlist>
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
        </div>
    </div>
</asp:Content>
