﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SurveyMaster.Master" AutoEventWireup="true" CodeBehind="FriendsInspireRate.aspx.cs" Inherits="BBSurveyVer2.FriendsInspireRate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        ul li {
            display: inline;
        }

       #progressBar {
            width: 800px;
            height: 22px;
            border: 1px solid #111;
            background-color: #fff;
        }
            #progressBar div {
                height: 100%;
                color: #fff;
                text-align: right;
                line-height: 22px; /* same as #progressBar height if we want text middle aligned */
                width: 0;
                background-color: #29B010;
            }
    </style>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script type="text/javascript" src="http://listjs.com/no-cdn/list.js"></script>
    <%--<script type="text/javascript">
        $(document).ready(function() {
            alert("test 1");
            $("#btnClearAll").click(function() {
                alert("Handler for .click() called.");
                $("#txtSearch").val('');
            });                        
        });​

    </script>--%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 70px;">
        <div class="row">
            <div class="col-lg-12" style="height: 30px;" id="divQuestion" runat="server">
                <div>
                    <h4>I det følgende vil du se en liste over dine Facebook-venner.</h4>
                    <p>
                        Kig på listen og markér minimum 10 personer (men gerne flere), som du tror, har en interessant film-smag.  
                    </p>
                    <p>
                        Dine venner vil ikke få at vide, at du har markeret dem her.
                   </p>
                    <p>
                        Når du er færdig, så tryk på knappen "Næste" nederst på siden.
                   </p>
                </div>
                <div id="users" class="col-lg-12" style="margin-top: 10px !important; margin-left: 0px !important;">
                    <div>
                        <h4>Søg</h4>
                        <input class="search" placeholder="search" id="txtSearch" style="width: 60% !important;" />
                        &nbsp;&nbsp;<input type="button" id="btnClearAll" value="Vis alle" />
                    </div>
                    <div style="margin-top: 10px; margin-bottom: 15px;">
                        <h4>Antal venner valgt</h4>
                        <div id="progressBar">
                            <div></div>
                        </div>
                    </div>
                    <div>
                        <asp:Label runat="server" ID="lblError" ForeColor="red" Visible="False"></asp:Label><br />
                        <input type="hidden" value="0" id="hiddenSelectedCount" />
                    </div>

                
                    <div style="height: 500px; overflow: scroll; margin-left: 0px;">
                        <%--<input class="search" placeholder="Search" />--%>
                        <ul class="list">
                            <asp:Repeater runat="server" ID="rptCloseness" OnItemDataBound="rptCloseness_OnItemDataBound">
                                <ItemTemplate>
                                    <li style="display: inline;">
                                        <div onclick="FiendIsClicked(this);" class="divFriend" style="float: left; width: 110px; text-align: center; padding: 5px; font-size: 12px; font-weight: bold; border: 1px solid lightgray; height: 160px; overflow: hidden;">
                                            <table style="text-align: center; width: 100px;height:150px;overflow:hidden;" id="tableCntainer" runat="server">
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
                                                    <td style="height: 50px;text-align: center; vertical-align: middle;">
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

    <script type="text/javascript">

        var options = {
            valueNames: ['name']
        };

        var userList = new List('users', options);

        $('#btnClearAll').click(function () {
            $('#txtSearch').val('');
            userList.search();
        });


    </script>

    <script>




        $().ready(function () {

            //function progress(percent, $element) {
            //    var progressBarWidth = percent * $element.width() / 100;
            //    $element.find('div').animate({ width: progressBarWidth }, 500).html(percent + "% ");
            //}


            //$('#btnClearAll').click(function () {
            //    $('#search-field').val('');
            //    listObj.search();
            //});


            //$("#btnClearAll").click(function () {
            //    alert("Handler for .click() called.");
            //    $("#txtSearch").val('');
            //});
        });


    </script>
</asp:Content>

