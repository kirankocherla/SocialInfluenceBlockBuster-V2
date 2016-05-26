<%@ page title="" language="C#" masterpagefile="~/SurveyMaster.Master" autoeventwireup="true" codebehind="FriendsDetails.aspx.cs" inherits="BBSurveyVer2.FriendsDetails" %>

<asp:content id="Content1" contentplaceholderid="head" runat="server">
</asp:content>

<asp:content id="Content2" contentplaceholderid="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 100px;">
        <div class="row">
            <div class="col-lg-12" style="height: 30px;" id="divQuestion" runat="server">
                
                <h4>Angiv venligst hvem af nedenstående personer, som pt. bor i Danmark.</h4>
                <br />
                <br />
                <asp:label runat="server" id="lblError" forecolor="red" visible="False"></asp:label> <br />
                <div class="row">
                    <div class="col-lg-12">
                        <asp:repeater runat="server" id="rptLocation" onitemdatabound="rptLocation_OnItemDataBound">
                            <itemtemplate>
                                <div style="float: left; text-align: center; padding: 10px; display: inline-block; font-size: 12px; font-weight: bold; border-right: 1px solid lightgray;border-left: 1px solid lightgray;">
                                    <table style="text-align: center;">
                                        <tr>
                                            <td>
                                                <asp:literal runat="server" visible="false" id="ltrFriendId" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="height: 80px; text-align: center; vertical-align: middle;">
                                                <asp:literal runat="server" visible="true" id="ltrFriendName" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: center; vertical-align: middle;">
                                                <asp:image runat="server" id="img" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: center !important; vertical-align: middle; font-size: 10px;margin-top: 15px !important;padding-top: 15px;">
                                                <asp:dropdownlist runat="server" id="ddlFriendLocation">
                                                    <asp:listitem text="Bor i Danmark" value="DK"></asp:listitem>
                                                    <asp:listitem text="Bor ikke i Danmark" value="NONDK"></asp:listitem>                                                    
                                                    <asp:listitem text="Ved ikke" value="99"></asp:listitem>
                                                </asp:dropdownlist>
                                            </td>
                                        </tr>
                                    </table>

                                </div>

                            </itemtemplate>
                            <footertemplate>
                            </footertemplate>
                        </asp:repeater>
                    </div>
                </div>
                
                <br />
                <br />

                <h4>For hver af disse personer, angiv venligst hvor sandsynligt det er, at du vil opleve ham/hende som en kilde til inspiration, når det kommer til film. Du behøver ikke kende deres præcise filmsmag – det er tilstrækkeligt, hvis du bare tror, at de har en smag, som du kunne blive inspireret af, hvis du f.eks. skulle vælge en film at se i aften.</h4>

                <br />
                <br />
                <div class="row">
                    <div class="col-lg-12">
                        <asp:repeater runat="server" id="rptCloseness" onitemdatabound="rptCloseness_OnItemDataBound">
                            <itemtemplate>
                                <div style="float: left; text-align: center; padding: 10px; font-size: 12px; font-weight: bold; border-right: 1px solid lightgray;border-left: 1px solid lightgray;display: inline-block;">
                                    <table style="text-align: center;">
                                        <tr>
                                            <td>
                                                <asp:literal runat="server" visible="false" id="ltrFriendId" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="height: 80px; text-align: center; vertical-align: middle;">
                                                <asp:literal runat="server" visible="true" id="ltrFriendName" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: center; vertical-align: middle;">
                                                <asp:image runat="server" id="img" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: center; vertical-align: middle; font-size: 10px;margin-top: 15px;padding-top: 15px;">
                                                <asp:dropdownlist runat="server" id="ddlFriendClose">
                                                    <asp:listitem text="Meget usandsynligt" value="1"></asp:listitem>
                                                    <asp:listitem text="Usandsynligt" value="2"></asp:listitem>
                                                    <asp:listitem text="Til dels usandsynligt" value="3"></asp:listitem>
                                                    <asp:listitem text="Hverken eller" value="4"></asp:listitem>
                                                    <asp:listitem text="Til dels sandsynligt" value="5"></asp:listitem>
                                                    <asp:listitem text="Sandsynligt" value="6"></asp:listitem>
                                                    <asp:listitem text="Meget sandsynligt" value="7"></asp:listitem>
                                                    <asp:listitem text="Ved ikke" value="99"></asp:listitem>
                                                </asp:dropdownlist>
                                            </td>
                                        </tr>
                                    </table>

                                </div>

                            </itemtemplate>
                            <footertemplate>
                            </footertemplate>
                        </asp:repeater>
                    </div>
                </div>
                
                <br />
                <br />
                                
                <br />
                <div class="row">
                    <div class="col-lg-6 text-right" style="padding-right: 15px;">
                        <asp:button runat="server" text="Tilbage" onclick="OnBackClick" id="cmdPrevious" width="100" />
                    </div>
                    <div class="col-lg-6" style="padding-right: 15px;">
                        <asp:button runat="server" text="Næste" onclick="OnNextClick" id="cmdNext" width="100" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:content>

