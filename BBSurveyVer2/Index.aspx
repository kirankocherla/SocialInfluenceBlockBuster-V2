<%@ Page Title="" Language="C#" MasterPageFile="~/SurveyMaster.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="BBSurveyVer2.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Page Content -->
    <div class="container" style="margin-top: 50px;">
        <div class="row">
            <div class="col-lg-12" style="height: 30px;">
                <asp:Literal runat="server" ID="cmdLiteral"></asp:Literal>
                <%--<h3>Velkommen</h3> 
                <p>
                   Tak fordi du vil deltage i vores undersøgelse om den nye film streaming-service Blockbuster. Blockbuster var tidligere en kæde af fysiske butikker, hvor man kunne leje film. I dag er Blockbuster i Danmark udelukkende en digital tjeneste, som kan bruges på f.eks. computer, tablet og smart tv.  
                </p>
                
                <h3>Formål med undersøgelsen</h3> 
                <p>
                   Denne undersøgelse gennemføres af Blockbuster i Danmark, en del af TDC Group, og en gruppe forskere på Copenhagen Business School. Formålet med undersøgelsen er at få din mening om Blockbuster.dk – hvad virker, og hvad kan vi gøre bedre.  Den tager ca. 10 minutter at gennemføre. Som tak for din tid vil du deltage i lodtrækningen om et gavekort til gavekortet.dk til en værdi af 1.000 kr. samt en række andre attraktive præmier. 
                </p>
                
                <h3>Forløb</h3> 
                <p>
                   Du starter undersøgelsen ved at trykke på Start-knappen nedenfor, hvorefter vi vil stille dig et nogle indledende spørgsmål. Herefter vil vi bede dig se på nogle forskellige dele af Blockbuster.dk og derefter svare på et par spørgsmål. Og så er du færdig!
                </p>
                <p>   
                    Skulle du have nogen spørgsmål til undersøgelsen, er du meget velkommen til at skrive til os på <a href="mailto:kalk.itm@cbs.dk">kalk.itm@cbs.dk </a>
                </p>
                <p>
                   Klar til at starte undersøgelsen?
                </p>--%>
                <div class="row">
                    <div class="col-lg-6 text-right">
                        
                    </div>
                    <div class="col-lg-6">
                        <asp:button runat="server" text="Næste" onclick="OnNextClick" width="100"/>
                    </div>
                    <div  class="col-lg-12" style="height: 30px;padding-top:40px;">
                          <p style="color:#8A8A8A"><i>Når du deltager, accepterer du samtidig, at din deltagelse logges af software stillet til rådighed af firmaet Inspectlet, som bl.a. gør brug af cookies. Du kan læse mere om Inspectlet’s politik til beskyttelse af personlige oplysninger <span style='color:blue'>her</span> (<a href="http://www.inspectlet.com/legal#privacy" target="_blank">http://www.inspectlet.com/legal#privacy</a>). Dine svar forbliver anonyme, og vi identificerer ikke enkeltpersoner.</i></p> 
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
