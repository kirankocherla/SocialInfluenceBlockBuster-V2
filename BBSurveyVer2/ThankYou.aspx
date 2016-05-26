<%@ Page Title="" Language="C#" MasterPageFile="~/SurveyMaster.Master" AutoEventWireup="true" CodeBehind="ThankYou.aspx.cs" Inherits="BBSurveyVer2.ThankYou" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 100px;">
        <div class="row">
            <div class="col-lg-12" style="height: 30px;" id="divQuestion" runat="server">
                <h2>Tak for din deltagelse! </h2>
                <br /><br />
                <p>
                    Vinderne bliver kontaktet via e-mail inden for fire uger. Hvis du har nogen spørgsmål eller kommentarer til denne undersøgelse, er du velkommen til at kontakte os på <a href="mailto:kalk.itm@cbs.dk">kalk.itm@cbs.dk</a>
                </p>
                <br />
                <br />                
            </div>            
        </div>
    </div>
</asp:Content>
