<%@ Page Language="C#" MasterPageFile="~/SurveyMaster.Master" AutoEventWireup="true" CodeBehind="Browser.aspx.cs" Inherits="BBSurveyVer2.Browser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">        

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Page Content -->
    <div class="container" style="margin-top: 50px;">
        <div class="row">
            <div class="col-lg-12" style="height: 30px;">
                <asp:Literal runat="server" ID="cmdLiteral"></asp:Literal>
                <div>    
                <h3><b>Ups!</b></h3><br/>
                <p>Det ser ud til, at du bruger Internet Explorer, som vi desværre ikke understøtter til denne undersøgelse.</p> <br/>       
                <p>Kopier i stedet linket nedenfor. Åbn herefter enten Chrome, Safari eller Firefox og sæt linket ind i adressefeltet. Så skulle det virke. </p><br/><br/>
                <p><b>Link:</b> </p>
                <p><a href="Index.aspx"><u>http://cssl.cbs.dk/csslsurvey1/</u></a> </p>                
            </div>
                <div class="row">                    
            </div>
        </div>
        </div>
    </div>
</asp:Content>