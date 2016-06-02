<%@ Page Title="" Language="C#" MasterPageFile="~/SurveyMaster.Master" AutoEventWireup="true" CodeBehind="FriendsInspireRate.aspx.cs" Inherits="BBSurveyVer2.FriendsInspireRate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        ul li {
            display: inline;
        }
    </style>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script type="text/javascript" src="http://listjs.com/no-cdn/list.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 100px;">
        <div class="row">
            <div class="col-lg-12" style="height: 30px;" id="divQuestion" runat="server">

                <h4>I det følgende vil du se en liste over dine Facebook-venner. Kig på listen og markér minimum 10 personer (men gerne flere), som du kunne forestille dig kunne være en kilde til inspiration for dig i forhold til film, og som bor i Danmark.</h4>
                <p>
                    Markér kun personer, som bor i Danmark. Du behøver ikke kende deres præcise filmsmag – det er tilstrækkeligt, hvis du bare tror, at de har en smag, som du kunne blive inspireret af, hvis du f.eks. skulle vælge en film at se i aften. Som før beskrevet vil dine venner ikke få at vide, at du har markeret dem her. 
                </p>
                                                
                <div id="users" class="col-lg-12" style="margin-top: 10px !important; margin-left: 0px !important;">
                    <h4>Søg</h4>
                    <input class="search" placeholder="search" id="txtSearch" style="width: 70% !important;"  />
                    <br />
                    <br />
                    <asp:Label runat="server" ID="lblError" ForeColor="red" Visible="False"></asp:Label><br />
                    <div class="row">

                        <div class="col-lg-12" style="height: 500px; overflow: scroll;">
                            <%--<input class="search" placeholder="Search" />--%>
                            <ul class="list">
                                <asp:Repeater runat="server" ID="rptCloseness" OnItemDataBound="rptCloseness_OnItemDataBound">
                                    <ItemTemplate>
                                        <li style="display: inline;">
                                            <div onclick="FiendIsClicked(this);" class="divFriend" style="float: left; width: 110px; text-align: center; padding: 5px; font-size: 12px; font-weight: bold; border: 1px solid lightgray;">
                                                <table style="text-align: center; width: 100px;" id="tableCntainer" runat="server">
                                                    <tr>
                                                        <td>
                                                            <asp:Literal runat="server" Visible="false" ID="ltrFriendId" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 100px; text-align: center; vertical-align: middle;">
                                                            <div class="name" style="float: left; width: 100px;">
                                                                <asp:Literal runat="server" Visible="true" ID="ltrFriendName" />
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="text-align: center; vertical-align: middle;">
                                                            <asp:Image runat="server" ID="img" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="tdFriend" style="text-align: center; vertical-align: middle;">
                                                            <asp:CheckBox runat="server" ID="checkChooseFriend" CssClass="checkFriend" Style="opacity: 0; position: absolute; left: 9999px;" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </li>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                    </FooterTemplate>
                                </asp:Repeater>
                            </ul>

                        </div>
                        <script type="text/javascript">

                            var options = {
                                valueNames: ['name']
                            };

                            var userList = new List('users', options);

                        </script>

                    </div>

                    <br />
                    <div class="row">
                        <div class="col-lg-6 text-right" style="padding-right: 15px;">
                        </div>
                        <div class="col-lg-6" style="padding-right: 15px;">
                            <asp:Button runat="server" Text="Næste" OnClick="OnNextClick" ID="cmdNext" Width="100" />
                        </div>
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
</asp:Content>

