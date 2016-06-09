<%@ Page Title="" Language="C#" MasterPageFile="~/SurveyMaster.Master" AutoEventWireup="true" CodeBehind="BBLauncher.aspx.cs" Inherits="BBSurveyVer2.BBLauncher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 100px;">
        <div class="row">
            <div class="col-lg-12" style="height: 30px;" id="divQuestion" runat="server">                
                                 
                   <p>Vi vil nu bede dig se på et film-website og bagefter fortælle os din mening om det (vigtigt: Brug linket nederst på denne side).</p>
                     
                    <p>Websitet er en testversion, så vær opmærksom på, at det har visse begrænsninger, som det naturligvis ikke vil have, når det går live. F.eks. vil du ikke kunne klikke på en film og læse mere om den, ligesom der heller ikke er information om, hvad de enkelte film koster (regn med, at man betaler pr. film man ser, og at alle film koster mellem 19 og 49 kr. at leje i to døgn). Men du vil kunne se sidens struktur, layout, hvilke typer film du kan se her etc. og heraf kunne danne dig et overordnet indtryk af Blockbuster, hvilket er formålet med undersøgelsen. </p> 
                      
                    <p>Som minimum bør du besøge forsiden og de to undersider ”Genrer” og ”Inspiration”. Prøv fx at finde en film, du gerne vil se. </p> 
                                           
                    <p>Klar? Så tryk på knappen ”Blockbuster”. Websitet åbner nu i en ny fane i din browser. </p><br/>                     
                
                <p>               
                <h3>
                    Når du er færdig med at se på websitet, så gå tilbage til denne fane og klik på knappen ”Næste”
                </h3>
                 </p> 
                <br />
                <br />
                <asp:label runat="server" id="lblError" forecolor="red" visible="False"></asp:label><br />
                
                <div class="row">
                    <div class="col-lg-6 text-right" style="padding-right: 15px;">
                        Trin 1)
                    </div>
                    <div class="col-lg-6" style="padding-left: 15px;">
                    <%--<ul class="nav navbar-nav">
                    <li style="border-left: 1px solid rgba(255, 255, 255, 0.28); border-right: 1px solid rgba(255, 255, 255, 0.28);">--%>
                        <a class="navbar-brand" target="_blank" href="BBHome.aspx?ResponseId=<%=ResponseId.Value %>" style="float:none;color: #1E4797 !important;text-decoration:underline !important;">BLOCKBUSTER</a>
                        <%--<asp:button runat="server" text="Blockbuster.dk" onclick="OnBBClick" id="cmdBB" width="150" />
                    </div>--%>
                    <%--</li>                 
                </ul>--%>
                </div>

                <div class="row">
                    <div class="col-lg-6 text-right" style="padding-right: 15px;margin-top:10px;">
                        Trin 2)
                        
                        <%--<a href="BBHome.aspx" target="_blank">Blockbuster.dk</a>--%>
                    </div>
                    <div class="col-lg-6" style="padding-left: 15px;margin-top:10px;">
                        <asp:button runat="server" text="Næste" onclick="OnNextClick" id="cmdNext" width="150" />
                    </div>
                </div>
            </div>            
        </div>
    </div>
</div>
</asp:Content>
