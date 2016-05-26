<%@ page title="" language="C#" masterpagefile="~/SurveyMaster.Master" autoeventwireup="true" codebehind="FriendSelfReport.aspx.cs" inherits="BBSurvey.FriendSelfReport" %>

<asp:content id="Content1" contentplaceholderid="head" runat="server">
</asp:content>

<asp:content id="Content2" contentplaceholderid="ContentPlaceHolder1" runat="server">
    <div id="DIV_81">
        <div id="DIV_82">
            <div id="DIV_138" style="height: 600px;">
                <div id="DIV_139" style="height: 500px; width: 100%;">
                    <h1>
                        Self reporting of friends
                    </h1>
                    <br />
                    <br />
                    <h3>Q: Of the friends depicted below, how would you rate them in terms of closeness to you/expertise or likelihood to influence you in terms of films? (5 = very influential)</h3>
                    <div style="width: 100%;">
                        <table>
                            <asp:repeater runat="server" id="rptCloseness" onitemdatabound="rptCloseness_OnItemDataBound">
                                <headertemplate>
                                    <tr>
                                </headertemplate>
                                <itemtemplate>
                                    <td style="width: 100px; text-align: center; padding-left: 5px; font-size: 14px; font-weight: bold;">
                                        <asp:literal runat="server" visible="false" id="ltrFriendId" />
                                        <asp:image runat="server" id="img" width="100" height="100" /><br />
                                        <asp:dropdownlist runat="server" id="ddlFriendClose">
                                            <asp:listitem text="1" value="1"></asp:listitem>
                                            <asp:listitem text="2" value="2"></asp:listitem>
                                            <asp:listitem text="3" value="3"></asp:listitem>
                                            <asp:listitem text="4" value="4"></asp:listitem>
                                            <asp:listitem text="5" value="5"></asp:listitem>
                                        </asp:dropdownlist>
                                    </td>
                                </itemtemplate>
                                <footertemplate>
                                    </tr>
                                </footertemplate>
                            </asp:repeater>
                        </table>
                    </div>

                    <h3>Q: Which of the depicted friends do you know or think currently live in Denmark?</h3>
                    <div style="width: 100%;">
                        <table>
                            <asp:repeater runat="server" id="rptLocation" onitemdatabound="rptLocation_OnItemDataBound">
                                <headertemplate>
                                    <tr>
                                </headertemplate>
                                <itemtemplate>
                                    <td style="width: 100px; text-align: center; padding-left: 5px; font-size: 14px; font-weight: bold;" runat="server" id="tdLF3">
                                        <asp:literal runat="server" visible="false" id="ltrFriendId" />
                                        <asp:image runat="server" id="img" width="100" height="100" /><br />
                                        <asp:dropdownlist runat="server" id="ddlFriendLocation">
                                            <asp:listitem value="DK" text="DK"></asp:listitem>
                                            <asp:listitem value="NONDK" text="Udland"></asp:listitem>
                                        </asp:dropdownlist>
                                    </td>
                                </itemtemplate>
                                <footertemplate>
                                    </tr>
                                </footertemplate>
                            </asp:repeater>
                        </table>
                    </div>
                </div>
                <div id="DIV_83" style="text-align: right;">
                    <div id="DIV_129" style="float: right;">
                        <div id="DIV_130">
                            <asp:linkbutton onclick="OnNextClick" id="linkNext" runat="server" cssclass="A_131">Next</asp:linkbutton>
                            <cufon id="CUFON_132">
							<canvas id="CANVAS_133">
							</canvas>
							<cufontext id="CUFONTEXT_134">
								Tools
							</cufontext>
						</cufon>
                            <cufon id="CUFON_135">
							<canvas id="CANVAS_136">
							</canvas>
							<cufontext id="CUFONTEXT_137">
								Page
							</cufontext>
						</cufon>
                        </div>
                    </div>
                </div>
            </div>
            <div id="DIV_232">
            </div>
        </div>
    </div>
</asp:content>

