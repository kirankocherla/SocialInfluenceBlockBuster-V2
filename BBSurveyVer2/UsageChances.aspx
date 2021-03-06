﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SurveyMaster.Master" AutoEventWireup="true" CodeBehind="UsageChances.aspx.cs" Inherits="BBSurveyVer2.UsageChances" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 70px;">
        <div class="row">
            <div class="col-lg-12" style="height: 30px;" id="divQuestion" runat="server">
                <h3>Nedenstående spørgsmål handler om sandsynligheden for, at du vil bruge Blockbuster (enten via blockbuster.dk eller en af de andre måder man kan se Blockbuster på, f.eks. på tablet eller smart tv). </h3>                
                <br /><br />
                <asp:label runat="server" id="lblError" forecolor="red" visible="False"></asp:label><br />
                <table class="table-striped">
                    <tr>
                        <td></td>
                        <td class="text-center" style="padding: 10px;">Meget usandsynligt</td>
                        <td class="text-center" style="padding: 10px;">Usandsynligt</td>
                        <td class="text-center" style="padding: 10px;">Til dels usandsynligt</td>
                        <td class="text-center" style="padding: 10px;">Hverken eller</td>
                        <td class="text-center" style="padding: 10px;">Til dels sandsynligt</td>
                        <td class="text-center" style="padding: 10px;">Sandsynligt</td>
                        <td class="text-center" style="padding: 10px;">Meget sandsynligt</td>
                        <%--<td class="text-center" style="padding: 10px;">Ved ikke</td>--%>
                    </tr>
                    <tr>
                        <td style="margin-bottom:10px;padding-bottom:10px;">Hvad er sandsynligheden for, at du vil bruge Blockbuster inden for de næste tre måneder?</td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radioConsider1" groupname="consider"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radioConsider2" groupname="consider"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radioConsider3" groupname="consider"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radioConsider4" groupname="consider"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radioConsider5" groupname="consider"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radioConsider6" groupname="consider"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radioConsider7" groupname="consider"/></td>
                        <%--<td class="text-center"><asp:radiobutton runat="server" id="radioConsider99" groupname="consider"/></td>--%>
                    </tr>
                    <tr>
                        <td style="margin-bottom:10px;padding-bottom:10px;">Hvad er sandsynligheden for, at du vil bruge Blockbuster næste gang, du vil se en film, som ikke går i biografen?</td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radioPrefer1" groupname="prefer"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radioPrefer2" groupname="prefer"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radioPrefer3" groupname="prefer"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radioPrefer4" groupname="prefer"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radioPrefer5" groupname="prefer"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radioPrefer6" groupname="prefer"/></td>
                        <td class="text-center"><asp:radiobutton runat="server" id="radioPrefer7" groupname="prefer"/></td>
                        <%--<td class="text-center"><asp:radiobutton runat="server" id="radioPrefer8" groupname="prefer"/></td>--%>
                    </tr>                                        
                </table>
                  
                <br />
                <br />

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
