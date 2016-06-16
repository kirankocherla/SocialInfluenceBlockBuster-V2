﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SurveyMaster.Master" AutoEventWireup="true" CodeBehind="ImportantInfo.aspx.cs" Inherits="BBSurveyVer2.ImportantInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 100px;">
        <div class="row">
            <div class="col-lg-12" style="height: 30px;" id="divQuestion" runat="server">
                <h2>Information</h2>
                <br />
                <br />
                <p>
                    Vær opmærksom, at den version af Blockbuster.dk, som du har set i denne undersøgelse, ikke er den nuværende version af Blockbuster.dk. Det betyder også, at informationen om dine Facebook-venners brug af Blockbuster er fiktiv og har haft til formål at illustrere, hvordan information fra Facebook kan integreres i en film streaming-tjeneste.  
               
                </p>
                <br />
                <br />

                <div class="row">
                    <div class="col-lg-6 text-right" style="padding-right: 15px;">
                    </div>
                    <div class="col-lg-6" style="padding-right: 15px;">
                        <asp:Button runat="server" Text="Færdig" OnClick="OnNextClick" ID="cmdNext" Width="100" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Facebook Conversion Code for Social Proof Study -->
    <script>(function () { var _fbq = window._fbq || (window._fbq = []); if (!_fbq.loaded) { var fbds = document.createElement('script'); fbds.async = true; fbds.src = '//connect.facebook.net/en_US/fbds.js'; var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(fbds, s); _fbq.loaded = true; } })(); window._fbq = window._fbq || []; window._fbq.push(['track', '6031641453375', { 'value': '0.01', 'currency': 'DKK' }]);</script>
    <noscript><img height="1" width="1" alt="" style="display:none" src="https://www.facebook.com/tr?ev=6031641453375&amp;cd[value]=0.01&amp;cd[currency]=DKK&amp;noscript=1" /></noscript>
</asp:Content>

