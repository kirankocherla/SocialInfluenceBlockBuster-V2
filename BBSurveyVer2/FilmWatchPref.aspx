<%@ Page Title="" Language="C#" MasterPageFile="~/SurveyMaster.Master" AutoEventWireup="true" CodeBehind="FilmWatchPref.aspx.cs" Inherits="BBSurveyVer2.FilmWatchPref" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 100px;">
        <div class="row">
            <div class="col-lg-12" style="height: 30px;" id="divQuestion" runat="server">
                <h2>Vi vil nu stille dig et par spørgsmål om dine vaner og præferencer i forhold til film og tv-serier.</h2><br />
                <h4>Hvor mange film ser du i gennemsnit på en måned? Om du ser dem på fx tv, i biografen, på nettet etc. er underordnet.</h4>
                <p>
                    <asp:label runat="server" id="lblError" forecolor="red" visible="False"></asp:label> <br />                    
                    <asp:radiobuttonlist runat="server" id="rdFilmPerMonth" repeatdirection="Vertical"  cssclass="rbl">
                        <asp:ListItem text="1" value="1"></asp:ListItem>   
                        <asp:ListItem text="2" value="2"></asp:ListItem>   
                        <asp:ListItem text="3" value="3"></asp:ListItem>   
                        <asp:ListItem text="4" value="4"></asp:ListItem>   
                        <asp:ListItem text="5" value="5"></asp:ListItem>   
                        <asp:ListItem text="6" value="6"></asp:ListItem>   
                        <asp:ListItem text="7" value="7"></asp:ListItem>   
                        <asp:ListItem text="8" value="8"></asp:ListItem>   
                        <asp:ListItem text="9" value="9"></asp:ListItem>   
                        <asp:ListItem text="10" value="10"></asp:ListItem>   
                        <asp:ListItem text="Over 10" value="10+"></asp:ListItem>   
                         
                      </asp:radiobuttonlist>
                </p><br />
                <h4>Hvordan ser du størstedelen af dine film? </h4>
                <p>                    
                    <asp:radiobuttonlist runat="server" id="rdFilmMedium" repeatdirection="Vertical"  cssclass="rbl">
                        <asp:ListItem text="På TV (live tv eller optaget fra tv)" value="OnLiveTVOrRecorded"></asp:ListItem>   
                        <asp:ListItem text="Smart TV (via en on-demand service som f.eks. Netflix, Viaplay el. lign.)" value="SmartTv"></asp:ListItem>   
                        <asp:ListItem text="Tablet (f.eks. iPad)" value="Tablet"></asp:ListItem>   
                        <asp:ListItem text="Mobil" value="Mobil"></asp:ListItem>   
                        <asp:ListItem text="Computer" value="Computer"></asp:ListItem>   
                        <asp:ListItem text="Spillekonsol, fx Xbox eller Playstation (via en on-demand service som f.eks. Netflix, Viaplay el. lign.)" value="GameConsole"></asp:ListItem>   
                        <asp:ListItem text="I biografen" value="Cinema"></asp:ListItem>   
                        <asp:ListItem text="På DVD" value="DVD"></asp:ListItem>   
                        <asp:ListItem text="Andet" value="Other"></asp:ListItem>   
                        <asp:ListItem text="Ved ikke" value="Do not know"></asp:ListItem>                           
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
