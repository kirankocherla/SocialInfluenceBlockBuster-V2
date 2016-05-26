<%@ Page Title="" Language="C#" MasterPageFile="~/SurveyMaster.Master" AutoEventWireup="true" CodeBehind="BBLauncher.aspx.cs" Inherits="BBSurveyVer2.BBLauncher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 100px;">
        <div class="row">
            <div class="col-lg-12" style="height: 30px;" id="divQuestion" runat="server">
                 <%--<h4>Vi vil nu bede dig se på nogle forskellige dele af Blockbuster.dk og bagefter fortælle os om din oplevelse af sitet. Vær opmærksom på, at det site, vi viser dig, er en begrænset udgave af Blockbuster.dk. Det betyder, at du ikke kan klikke på alting – f.eks. vil du ikke kunne klikke på filmene og læse mere om dem. Men du vil kunne se sidens struktur, layout, hvilke typer film du kan se her etc. Som minimum bør du se på forsiden og de to undersider ”Genrer” og ”Inspiration”. Klar? Så tryk på knappen ”Blockbuster”. Websitet åbner nu i en ny fane i din browser. </h4>--%>
                                 
                   <p>Vi vil nu bede dig se på Blockbuster.dk (vigtigt: Brug linket nederst på denne side) og bagefter fortælle os om din oplevelse af websitet.</p>
                     
                    <p>Vær opmærksom på, at det site, vi viser dig, er en begrænset udgave af Blockbuster.dk. Det betyder,at du ikke kan klikke på alting – f.eks. 
                    vil du ikke kunne klikke på en film og læse mere om den.Men du vil kunne se sidens struktur, layout, hvilke typer film du kan se her etc. og heraf kunne 
                    danne dig et overordnet indtryk af Blockbuster.</p> 
                      
                    <p>Du vil ikke kunne se, hvad de enkelte film koster. Regn med, at man betaler pr. film, og at alle film koster mellem 19 og 49 kr. at leje i to døgn.</p> 
                                           
                    <p>Som minimum bør du klikke dig ind på forsiden og de to undersider ”Genrer” og ”Inspiration”.<br> 

                    Klar? Så tryk på knappen ”Blockbuster”. Websitet åbner nu i en ny fane i din browser. </p>
                               
                <h3>
                    Når du er færdig med at se på websitet, så gå tilbage til denne fane og klik på knap
                </h3>
                <br />
                <br />
                <asp:label runat="server" id="lblError" forecolor="red" visible="False"></asp:label><br />
                
                <div class="row">
                    <div class="col-lg-6 text-right" style="padding-right: 15px;">
                        Trin 1)
                    </div>
                    <div class="col-lg-6" style="padding-left: 15px;">
                        <a class="navbar-brand" target="_blank" href="BBHome.aspx?ResponseId=<%=ResponseId.Value %>" style="float:none;color: #1E4797 !important;text-decoration:underline !important;">BLOCKBUSTER</a>
                        <%--<asp:button runat="server" text="Blockbuster.dk" onclick="OnBBClick" id="cmdBB" width="150" />--%>
                    </div>
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
</asp:Content>
