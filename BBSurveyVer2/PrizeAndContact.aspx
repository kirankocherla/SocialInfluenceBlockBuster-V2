<%@ Page Title="" Language="C#" MasterPageFile="~/SurveyMaster.Master" AutoEventWireup="true" CodeBehind="PrizeAndContact.aspx.cs" Inherits="BBSurveyVer2.PrizeAndContact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 70px;">
        <div class="row">
            <div class="col-lg-12" style="height: 30px;" id="divQuestion" runat="server">
                <h2>
                    Du er næsten færdig – vælg en præmie
                </h2>
                <br />
                <p>
                    Når du har indsendt dine svar, deltager du automatisk i lodtrækningen om et gavekort á 1.000 kr. fra gavekortet.dk. Derudover trækker vi også lod blandt alle deltagere om i alt 20 x 1 biografbilletter eller gavekort til Blockbuster. Angiv venligst, hvilken af følgende du gerne vil vinde. 
                </p>               
                <br />
                <asp:label runat="server" id="lblError" forecolor="red" visible="False"></asp:label><br />
                <h4>Foruden lodtrækningen om et gavekort på 1.000 kr. vil jeg gerne deltage i lodtrækningen om:</h4>
                <p>
                    <asp:radiobuttonlist runat="server" id="rdGift" cssclass="rbl" repeatdirection="Vertical">
                        <asp:listitem text="1 biografbillet (værdi 80 kr.)" value="CinemaTicket"></asp:listitem>
                        <asp:listitem text="1 gavekort til Blockbuster (værdi 80 kr.)" value="GiftCardBlockbuster"></asp:listitem>
                        <%--<asp:listitem text="Ingen af ovenstående" value="None"></asp:listitem>--%>
                    </asp:radiobuttonlist><br /><br />                    
                </p>                
                <h4>Vi vil gerne have mulighed for at kontakte tilfældigt udvalgte deltagere til en uddybende samtale om deres oplevelse af Blockbuster. Må vi kontakte dig?</h4>
                <p>
                    <asp:radiobuttonlist runat="server" id="rdContactPermission" cssclass="rbl">
                        <asp:listitem text="Ja, det er ok, at jeg muligvis bliver kontaktet via e-mail efter denne undersøgelse" value="1"></asp:listitem>
                        <asp:listitem text="Nej, jeg ønsker ikke at blive kontaktet via e-mail efter denne undersøgelse" value="0"></asp:listitem>
                    </asp:radiobuttonlist><br />                   
                    <br /></p>                
                <h4>Venligst angiv din e-mail adresse i feltet. Obs: Den vil kun blive brugt til at kontakte dig, hvis du vinder en af præmierne, eller hvis du har sagt ok til at blive kontaktet via e-mail efter undersøgelsen.</h4>
                <br />
                <b>Email: </b><br />
                <asp:textbox runat="server" id="txtEmail" width="70%"></asp:textbox>
                <br />
                
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
</asp:Content>
