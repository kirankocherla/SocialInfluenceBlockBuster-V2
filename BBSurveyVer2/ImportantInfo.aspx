<%@ Page Title="" Language="C#" MasterPageFile="~/SurveyMaster.Master" AutoEventWireup="true" CodeBehind="ImportantInfo.aspx.cs" Inherits="BBSurveyVer2.ImportantInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 100px;">
        <div class="row">
            <div class="col-lg-12" style="height: 30px;" id="divQuestion" runat="server">
                <h2>Vigtig information</h2>
                <br /><br />
                <p>
                    Vær opmærksom, at den version af Blockbuster.dk, som du har set i denne undersøgelse, ikke er den nuværende version af Blockbuster.dk. Det betyder også, at informationen om dine Facebook-venners brug af Blockbuster er fiktiv og har haft til formål at illustrere, hvordan information fra Facebook kan integreres i en film streaming-tjeneste.  
                </p>
                <br />
                <br />

                <div class="row">
                    <div class="col-lg-6 text-right" style="padding-right: 15px;">                        
                    </div>
                    <div class="col-lg-6" style="padding-right: 15px;">
                        <asp:button runat="server" text="Færdig" onclick="OnNextClick" id="cmdNext" width="100" />
                    </div>
                </div>
            </div>            
        </div>
    </div>
</asp:Content>
