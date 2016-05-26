<%@ page title="" language="C#" masterpagefile="~/SurveyMaster.Master" autoeventwireup="true" codebehind="FriendsInspireRate.aspx.cs" inherits="BBSurveyVer2.FriendsInspireRate" %>

<asp:content id="Content1" contentplaceholderid="head" runat="server">
   
</asp:content>

<asp:content id="Content2" contentplaceholderid="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 100px;">
        <div class="row">
            <div class="col-lg-12" style="height: 30px;" id="divQuestion" runat="server">
                <h4>I det følgende vil du se en liste over dine Facebook-venner. Kig på listen og markér minimum 10 personer (men gerne flere), som du kunne forestille dig kunne være en kilde til inspiration for dig i forhold til film, og som bor i Danmark.</h4>
                <p>
                    Markér kun personer, som bor i Danmark. Du behøver ikke kende deres præcise filmsmag – det er tilstrækkeligt, hvis du bare tror, at de har en smag, som du kunne blive inspireret af, hvis du f.eks. skulle vælge en film at se i aften. Som før beskrevet vil dine venner ikke få at vide, at du har markeret dem her. 
                </p>
                <br />
                <asp:label runat="server" id="lblError" forecolor="red" visible="False"></asp:label><br />
                <div class="row">
                    <div class="col-lg-12" style="height: 500px; overflow: scroll;">
                        <asp:repeater runat="server" id="rptCloseness" onitemdatabound="rptCloseness_OnItemDataBound">
                            <itemtemplate>
                                <div onclick="FiendIsClicked(this);" class="divFriend" style="float: left; width: 110px; text-align: center; padding: 5px; font-size: 12px; font-weight: bold; border: 1px solid lightgray;">
                                    <table style="text-align: center;width: 100px;" id="tableCntainer" runat="server">
                                        <tr>
                                            <td>
                                                <asp:literal runat="server" visible="false" id="ltrFriendId" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="height: 100px; text-align: center; vertical-align: middle;">
                                                <asp:literal runat="server" visible="true" id="ltrFriendName" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: center; vertical-align: middle;">
                                                <asp:image runat="server" id="img"  />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="tdFriend" style="text-align: center; vertical-align: middle;">
                                                <asp:checkbox runat="server" id="checkChooseFriend" cssclass="checkFriend" style="opacity:0; position:absolute; left:9999px;" />
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
     <%--<script>
         $().ready(function () {
             $(".divFriend").on('click', function (event) {
                 var idofClicked = event.target.id;
                 var tdFound = this.find(".tdFriend");
                 var checkFound = this.find(".checkFriend");
             });
         });

         
    </script>--%>
</asp:content>

