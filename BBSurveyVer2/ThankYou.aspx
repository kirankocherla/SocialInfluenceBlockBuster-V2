<%@ Page Title="" Language="C#" MasterPageFile="~/SurveyMaster.Master" AutoEventWireup="true" CodeBehind="ThankYou.aspx.cs" Inherits="BBSurveyVer2.ThankYou" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 100px;">
        <div class="row">
            <div class="col-lg-12" style="height: 30px;" id="divQuestion" runat="server">
                <h2>Tak for din deltagelse! </h2>
                <br />
                <br />
                <p>
                    Vinderne bliver kontaktet via e-mail inden for fire uger. Hvis du har nogen spørgsmål eller kommentarer til denne undersøgelse, er du velkommen til at kontakte os på <a href="mailto:kalk.itm@cbs.dk">kalk.itm@cbs.dk</a>
                </p>
                <br />
                <br />
            </div>
        </div>
    </div>
    <!-- Facebook Conversion Code for Social Proof Study -->
    <script>(function () { var _fbq = window._fbq || (window._fbq = []); if (!_fbq.loaded) { var fbds = document.createElement('script'); fbds.async = true; fbds.src = '//connect.facebook.net/en_US/fbds.js'; var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(fbds, s); _fbq.loaded = true; } })(); window._fbq = window._fbq || []; window._fbq.push(['track', '6031641453375', { 'value': '0.01', 'currency': 'DKK' }]);</script>
    <noscript><img height="1" width="1" alt="" style="display:none" src="https://www.facebook.com/tr?ev=6031641453375&amp;cd[value]=0.01&amp;cd[currency]=DKK&amp;noscript=1" /></noscript>
</asp:Content>

