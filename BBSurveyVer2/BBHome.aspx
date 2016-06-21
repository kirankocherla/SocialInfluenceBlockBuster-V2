<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BBHome.aspx.cs" Inherits="BBSurveyVer2.BBHome" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link href="css/customfont.css" rel="stylesheet" />
    <title></title>
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <!-- Custom CSS -->
    <link href="css/half-slider.css" rel="stylesheet" />
    <link href="css/Footer.css" rel="stylesheet" />

    <!-- Begin Inspectlet Embed Code -->
    <script type="text/javascript" id="inspectletjs">
        window.__insp = window.__insp || [];
        __insp.push(['wid', 312617230]);
        (function () {
            function ldinsp() { if (typeof window.__inspld != "undefined") return; window.__inspld = 1; var insp = document.createElement('script'); insp.type = 'text/javascript'; insp.async = true; insp.id = "inspsync"; insp.src = ('https:' == document.location.protocol ? 'https' : 'http') + '://cdn.inspectlet.com/inspectlet.js'; var x = document.getElementsByTagName('script')[0]; x.parentNode.insertBefore(insp, x); };
            setTimeout(ldinsp, 500); document.readyState != "complete" ? (window.attachEvent ? window.attachEvent('onload', ldinsp) : window.addEventListener('load', ldinsp, false)) : ldinsp();
        })();
    </script>
    <!-- End Inspectlet Embed Code -->

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body style="padding: 0px; margin: 0px;">
    <form id="form1" runat="server">
    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <ul class="nav navbar-nav">
                    <li style="border-left: 1px solid rgba(255, 255, 255, 0.28); border-right: 1px solid rgba(255, 255, 255, 0.28);">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="BBHome.aspx">BLOCKBUSTER</a>
                    </li>
                </ul>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li style="border-left: 1px solid rgba(255, 255, 255, 0.28); border-right: 1px solid rgba(255, 255, 255, 0.28);">
                        <a href="BBCategory.aspx?ResponseId=<%=ResponseId.Value %>">GENRER</a>
                    </li>
                    <li style="border-left: 1px solid rgba(255, 255, 255, 0.28); border-right: 1px solid rgba(255, 255, 255, 0.28);">
                        <a href="BBInspiration.aspx?ResponseId=<%=ResponseId.Value %>">INSPIRATION</a>
                    </li>
                    <li style="border-left: 1px solid rgba(255, 255, 255, 0.28); border-right: 1px solid rgba(255, 255, 255, 0.28);">
                        <a href="BBAbout.aspx?ResponseId=<%=ResponseId.Value %>">OM</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    <%-- <style>
	body{ padding:0px; margin:0px;}
    	.bannerimage{ background:url('images/1188x270_Everest_03.png') no-repeat top center; width:100%; min-height:300px; display:block;} 
		.container{width:1200px; margin:auto; min-height:300px; display:block; cursor:pointer;}
    </style>--%>
    <div style="min-height: 300px; top: 51px; position: relative; padding: 0px; width: 100%; background-image: url(images/banner-img_02.jpg); background-position: center top; background-repeat: no-repeat;">
        <div class="row">
            <div>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div style="visible: true; padding-left: 1%; padding-top: 9%;">
                                <div class="row" id="divTableWrapper" runat="server">
                                    <div class="col-lg-12 text-center">
                                        <table style="margin-top: 8%;">
                                            <asp:Repeater runat="server" ID="rptFriends" OnItemDataBound="rptFriends_OnItemDataBound">
                                                <HeaderTemplate>
                                                    <tr>
                                                        <td style="wrap: no-wrap; text-wrap: none; text-align: left; padding-right: 0px; font-size: 18px; font-weight: bold; vertical-align: middle; color: #ffc429; font-family: Conv_AvenirNextLTPro-DemiCn;">
                                                            <asp:Literal runat="server" ID="textForFriend" Text="Disse venner bruger allerede Blockbuster:" />
                                                        </td>
                                                        <td style="text-align: center; padding-left: 5px; font-size: 14px; font-weight: bold;">
                                                            <img src="images/fb logo2_transparent (3).jpg" style="height: 50px; width: 50px;" />
                                                        </td>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <td style="text-align: center; padding-left: 5px; font-size: 14px; font-weight: bold;">
                                                        <asp:Image runat="server" ID="img" Width="50" Height="50" />
                                                    </td>
                                                </ItemTemplate>
                                                <FooterTemplate>
                                                    </tr>
                                                </FooterTemplate>
                                            </asp:Repeater>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Page Content -->
    <div class="container">
        <div class="row">
            <div class="col-lg-12" style="">
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12" style="margin-top: 60px;">
                <h1 style="margin-left: 0; padding-left: 0;">
                    <b>PREMIEREFILM</b>
                </h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3" style="">
                <!-- <img src="//images.blockbuster.dk/movie/big-hero-6?width=292&amp;height=425" />-->
                <%-- <img src=" http://images.blockbuster.dk/movie/007---spectre?width=292&height=425" />--%>
                <img src="//images.blockbuster.dk/movie/007---spectre?width=292&height=425" />
            </div>
            <div class="col-lg-3" style="">
                <!--<img src="//images.blockbuster.dk/movie/min-soesters-boern-og-guldgraverne??width=292&amp;height=425" />-->
                <img src="//images.blockbuster.dk/movie/sicario?width=292&height=425" />
            </div>
            <div class="col-lg-3" style="">
                <%--<img src="//images.blockbuster.dk/movie/nat-paa-museet-3?width=292&height=425" />--%>
                <img src="//images.blockbuster.dk/movie/noegle-hus-spejl?width=292&height=425" />
            </div>
            <div class="col-lg-3" style="">
                <!--<img src="//images.blockbuster.dk/movie/maend-hoens?width=292&height=425" />-->
                <img src="//images.blockbuster.dk/movie/emma--julemanden?width=292&height=425" />
            </div>
        </div>
        <div class="row" style="margin-top: 60px;">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/green-inferno-the?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/99-homes?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/our-brand-is-crisis?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/hotel-transylvania-2?width=141&height=207" />
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/walk-the?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/martian-the?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/kvinden-i-guld?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/pan?width=141&height=207" />
                </div>
            </div>
        </div>
        <div class="row" style="margin-top: 15px;">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/black-mass?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/beyond-the-mask?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/knock-knock?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/sand-the?width=141&height=207" />
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/riot?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/arthur--merlin?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/midnight-man-the?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/meru?width=141&height=207" />
                </div>
            </div>
        </div>
        <div class="row" style="margin-top: 15px;">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/far-til-fires-vilde-ferie?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/crimson-peak?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/asylum-the?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/playing-with-dolls?width=141&height=207" />
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/strangerland?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/boost?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/swelter?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/queen-of-the-desert?width=141&height=207" />
                </div>
            </div>
        </div>
        <%--digital premier--%>
        <div class="row">
            <div class="col-lg-12" style="margin-top: 60px;">
                <h1 style="margin-left: 0; padding-left: 0;">
                    <b>DIGITALE FORPREMIERER</b>
                </h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3" style="">
                <img src="//images.blockbuster.dk/movie/boelgen?width=292&height=425" />
            </div>
            <div class="col-lg-3" style="">
                <img src="//images.blockbuster.dk/movie/paranormal-activity---the-ghost-dimension?width=292&height=425" />
            </div>
            <div class="col-lg-3" style="">
                <img src="//images.blockbuster.dk/movie/digging-for-fire?width=292&height=425" />
            </div>
            <div class="col-lg-3" style="">
            </div>
        </div>
        <%--mest populere--%>
        <div class="row">
            <div class="col-lg-12" style="margin-top: 60px;">
                <h1 style="margin-left: 0; padding-left: 0;">
                    <b>MEST POPULÆRE</b>
                </h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3" style="">
                <img src="//images.blockbuster.dk/movie/007---spectre?width=292&height=425" />
            </div>
            <div class="col-lg-3" style="">
                <img src="//images.blockbuster.dk/movie/martian-the?width=292&height=425" />
            </div>
            <div class="col-lg-3" style="">
                <img src="//images.blockbuster.dk/movie/hotel-transylvania-2?width=292&height=425" />
            </div>
            <div class="col-lg-3" style="">
                <img src="//images.blockbuster.dk/movie/praktikanten?width=292&height=425" />
            </div>
        </div>
        <div class="row" style="margin-top: 15px;">
            <div class="col-lg-3" style="">
                <img src="//images.blockbuster.dk/movie/far-til-fires-vilde-ferie?width=292&height=425" />
            </div>
            <div class="col-lg-3" style="">
                <img src="//images.blockbuster.dk/movie/sicario?width=292&height=425" />
            </div>
            <div class="col-lg-3" style="">
                <img src="//images.blockbuster.dk/movie/klovn-forever?width=292&height=425" />
            </div>
            <div class="col-lg-3" style="">
                <img src="//images.blockbuster.dk/movie/krigen?width=292&height=425" />
            </div>
        </div>
        <div class="row" style="margin-top: 15px;">
            <div class="col-lg-3" style="">
                <img src="//images.blockbuster.dk/movie/fasandraeberne?width=292&height=425" />
            </div>
            <div class="col-lg-3" style="">
                <img src="//images.blockbuster.dk/movie/black-mass?width=292&height=425" />
            </div>
            <div class="col-lg-3" style="">
                <img src="//images.blockbuster.dk/movie/everest?width=292&height=425" />
            </div>
            <div class="col-lg-3" style="">
                <img src="//images.blockbuster.dk/movie/transporter---refueled?width=292&height=425" />
            </div>
        </div>
    </div>
    <%--<div style="position: relative; width: 100%; background-color: #000; margin-top: 40px;">
        <div class="container">
            <div class="row" style="padding-top: 60px; padding-bottom: 60px;">
                <div class="col-lg-6">
                    <div class="col-lg-3 text-right">
                        <div id="blackMenu" class="text-right blackMenu" style="padding-top: 50px; padding-right: 30px;">
                            <a href="#">Action</a><br />
                            <a href="#">Animation</a><br />
                            <a href="#">Børnefilm</a><br />
                            <a href="#">Danskefilm</a><br />
                            <a href="#">Dokumentar</a><br />
                            <a href="#">Drama</a><br />
                            <a href="#">Eventyr</a><br />
                            <a href="#">Gyser</a><br />
                            <a href="#">Komedie</a><br />
                            <a href="#">Krigsfilm</a><br />
                            <a href="#">Krimi</a><br />
                            <a href="#">Romantik</a><br />
                            <a href="#">Science fiction</a><br />
                            <a href="#">Stand-up og satire</a><br />
                            <a href="#">thriller</a><br />
                        </div>
                    </div>
                    <div class="col-lg-9">
                        <div class="row">
                            <div class="col-lg-4 text-left">
                                <img src="//images.blockbuster.dk/movie/frank-hvam-upassende?width=141&height=207" />
                            </div>
                            <div class="col-lg-4 text-left">
                                <img src="//images.blockbuster.dk/movie/the-uffe-holm-show-4?width=141&height=207" />
                            </div>
                            <div class="col-lg-4 text-left">
                                <img src="//images.blockbuster.dk/movie/linda-p-linda-ps-hovedpine?width=141&height=207" />
                            </div>
                        </div>
                        <div class="row" style="margin-top: 15px;">
                            <div class="col-lg-4 text-left">
                                <img src="//images.blockbuster.dk/movie/carsten-bang-dyret?width=141&height=207" />
                            </div>
                            <div class="col-lg-4 text-left">
                                <img src="//images.blockbuster.dk/movie/christian-fuhlendorff-enestaaende?width=141&height=207" />
                            </div>
                            <div class="col-lg-4 text-left">
                                <img src="//images.blockbuster.dk/movie/hartmann-chris-mens-room?width=141&height=207" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="row" style="margin-left: 0px; margin-right: 0px;">
                        <div class="col-lg-3 text-left">
                            <img src="//images.blockbuster.dk/movie/thomas-hartmann-xii?width=141&height=207" />
                        </div>
                        <div class="col-lg-3 text-left">
                            <img src="//images.blockbuster.dk/movie/linie-3-live-2013?width=141&height=207" />
                        </div>
                        <div class="col-lg-3 text-left">
                            <img src="//images.blockbuster.dk/movie/mick-oegendahl-propaganda?width=141&height=207" />
                        </div>
                        <div class="col-lg-3 text-left">
                            <img src="//images.blockbuster.dk/movie/oerkenens-soenner-et-skud-i-taagen?width=141&height=207" />
                        </div>
                    </div>
                    <div class="row" style="margin-left: 0px; margin-right: 0px; margin-top: 15px;">
                        <div class="col-lg-3 text-left">
                            <img src="//images.blockbuster.dk/movie/mick-oegendahl-spas?width=141&height=207" />
                        </div>
                        <div class="col-lg-3 text-left">
                            <img src="//images.blockbuster.dk/movie/casper-og-frank-nu-som-mennesker?width=141&height=207" />
                        </div>
                        <div class="col-lg-3 text-left">
                            <img src="//images.blockbuster.dk/movie/christian-fuhlendorff-mit-foerste-one-man-show?width=141&height=207" />
                        </div>
                        <div class="col-lg-3 text-left">
                            <img src="//images.blockbuster.dk/movie/city-singler-1?width=141&height=207" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>
    <div class="container">
        <%--Susanne bier--%>
        <div class="row">
            <div class="col-lg-12" style="margin-top: 60px;">
                <h1 style="margin-left: 0; padding-left: 0;">
                    <b>SUSANNE BIER</b>
                </h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/en-chance-til?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/den-skaldede-frisoer?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/haevnen?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/efter-brylluppet?width=141&height=207" />
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/elsker-dig-for-evigt?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/broedre?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/den-eneste-ene?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/freud-flytter-hjemmefra?width=141&height=207" />
                </div>
            </div>
        </div>
        <%--redaktionens favoritter--%>
        <div class="row">
            <div class="col-lg-12" style="margin-top: 60px;">
                <h1 style="margin-left: 0; padding-left: 0;">
                    <b>REDAKTIONENS FAVORITTER</b>
                </h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/son-of-rambow?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/ondskabens-oejne?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/lad-den-rette-komme-ind?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/fortryllet?width=141&height=207" />
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/true-grit?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/chronicle?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/rush?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/a-single-man?width=141&height=207" />
                </div>
            </div>
        </div>
        <div class="row" style="margin-top: 15px;">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/wolf-of-wall-street-the?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/tilbage-til-fremtiden?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/way-way-back-the?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/jeff-who-lives-at-home?width=141&height=207" />
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/i-love-you-man?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/forfalskerne?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/bennys-badekar?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/royal-tenenbaums-the?width=141&height=207" />
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12>" style="height: 100px;">
        </div>
    </div>
    <div class="container text-center" style="background-color: #192236; width: 100%; text-align: center !important; margin: 0px-auto;">
        <div class="container">
            <bb id="BB-FOOTER_2392">
	<div id="DIV_2393">
		<h2 id="H2_2394">
			Her kan du se BLOCKBUSTER
		</h2>
		<div id="DIV_2395" style="display:block;">			
			<div id="DIV_2397" style="float:left;position:table-grid;">
				<span id="A_2396">
				<img src="images/bb-icon__phone.png" id="IMG_2398" alt='' />
				<h3 id="H3_2399">
					mobil
				</h3>
				</span>
			</div>
			<div id="DIV_2401"  style="float:left;position:table-grid;">
				<span id="A_2400">
				<img src="images/bb-icon__tablet.png" id="IMG_2402" alt='' />
				<h3 id="H3_2403">
					tablet
				</h3>
				</span>
			</div>
			<div id="DIV_2405"  style="float:left;position:table-grid;">
				<span id="A_2404">
				<img src="images/bb-icon__computer.png" id="IMG_2406" alt='' />
				<h3 id="H3_2407">
					pc/mac
				</h3>
				</span>
			</div>
			<div id="DIV_2409"  style="float:left;position:table-grid;">
				<span id="A_2408">
				<img src="images/bb-icon__console.png" id="IMG_2410" alt='' />
				<h3 id="H3_2411">
					playstation
				</h3>
				</span>
			</div>
			<div id="DIV_2413"  style="float:left;position:table-grid;">
				<span id="A_2412">
				<img src="images/bb-icon__television.png" id="IMG_2414" alt='' />
				<h3 id="H3_2415">
					smart tv
				</h3>
				</span>
			</div>
		</div>
		<div id="DIV_2416">
			<div id="DIV_2417">
				<div id="DIV_2418">
					<div id="DIV_2419">
					</div>
					<h2 id="H2_2420">
						Start
					</h2>
				</div>
				<ul id="UL_2421">
					<li id="LI_2422">
						 <%--<a href="#" id="A_2423">Opret profil</a>--%>Opret profil
					</li>
					<li id="LI_2424">
						 <%--<a href="#" id="A_2425">Lej film</a>--%>Lej film
					</li>
					<li id="LI_2426">
						 <%--<a href="#" id="A_2427">K&#248;b film</a>--%>K&#248;b film
					</li>
					<li id="LI_2428">
						 <%--<a href="#" id="A_2429">Installer player</a>--%>Installer player
					</li>
				</ul>
			</div>
			<div id="DIV_2430">
				<div id="DIV_2431">
					<div id="DIV_2432">
					</div>
					<h2 id="H2_2433">
						Om
					</h2>
				</div>
				<ul id="UL_2434">
					<li id="LI_2435">
						 <%--<a href="#" id="A_2436">Om Blockbuster</a>--%>Om Blockbuster
					</li>
					<li id="LI_2437">
						 <%--<a href="#" id="A_2438">Priser</a>--%>Priser
					</li>
					<li id="LI_2439">
						 <%--<a href="#" id="A_2440">Vilk&#229;r</a>--%>Vilk&#229;r
					</li>
					<li id="LI_2441">
						 <%--<a href="#" id="A_2442">Persondatapolitik</a>--%>Persondatapolitik
					</li>
					<li id="LI_2443">
						 <%--<a href="#" id="A_2444">M&#248;d os p&#229; Facebook</a>--%>M&#248;d os p&#229; Facebook
					</li>
				</ul>
			</div>
			<div id="DIV_2445">
				<div id="DIV_2446">
					<div id="DIV_2447">
					</div>
					<h2 id="H2_2448">
						Hj&#230;lp
					</h2>
				</div>
				<ul id="UL_2449">
					<li id="LI_2450">
						 <%--<a href="#" id="A_2451">FAQ</a>--%>FAQ
					</li>
					<li id="LI_2452">
						 <%--<a href="#" id="A_2453">Kontakt kundeservice</a>--%>Kontakt kundeservice
					</li>
					<li id="LI_2454">
						 <%--<a href="#" id="A_2455">Facebook kundeservice</a--%>Facebook kundeservice
					</li>
					<li id="LI_2456">
						 <%--<a href="#" id="A_2457">Installer player</a>--%>Installer player
					</li>
					<li id="LI_2458">
						 <%--<a href="#" id="A_2459">Glemt adgangskode</a>--%>Glemt adgangskode
					</li>
				</ul>
			</div>
			<div id="DIV_2460">
				<div id="DIV_2461">
					<div id="DIV_2462">
					</div>
					<h2 id="H2_2463">
						Profil
					</h2>
				</div>
				<ul id="UL_2464">
					<li id="LI_2465">
						 <%--<a href="#" id="A_2466">Min Samling</a>--%>Min Samling
					</li>
					<li id="LI_2467">
						 <%--<a href="#" id="A_2468">K&#248;bshistorik</a>--%>K&#248;bshistorik
					</li>
					<li id="LI_2469">
						 <%--<a href="#" id="A_2470">K&#248;b klippekort</a>--%>K&#248;b klippekort
					</li>
					<li id="LI_2471">
						 <%--<a href="#" id="A_2472">Skift betalingskort</a>--%>Skift betalingskort
					</li>
					<li id="LI_2473">
						 <%--<a href="#" id="A_2474">Tilmeld Nyhedsbrev</a>--%>Tilmeld Nyhedsbrev
					</li>
				</ul>
			</div>
			<div id="DIV_2475">
				<div id="DIV_2476">
					<div id="DIV_2477">
					</div>
					<h2 id="H2_2478">
						Genveje
					</h2>
				</div>
				<ul id="UL_2479">
					<li id="LI_2480">
						 <%--<a href="#" id="A_2481">Se film p&#229; Smart TV</a>--%>Se film p&#229; Smart TV
					</li>
					<li id="LI_2482">
						 <%--<a href="#" id="A_2483">Se film p&#229; PlayStation</a>--%>Se film p&#229; PlayStation
					</li>
					<li id="LI_2484">
						 <%--<a href="#" id="A_2485">Se film p&#229; mobil</a>--%>Se film p&#229; mobil
					</li>
					<li id="LI_2486">
						 <%--<a href="#" id="A_2487">Se film p&#229; tablet</a>--%>Se film p&#229; tablet
					</li>
					<li id="LI_2488">
						 <%--<a href="#" id="A_2489">Se film p&#229; PC/Mac</a>--%>Se film p&#229; PC/Mac
					</li>
				</ul>
			</div>
		</div>
		<div id="DIV_2490">
			<p id="P_2491">
				©2014 BLOCKBUSTER. Alle rettigheder forbeholdes. BLOCKBUSTER udbydes af TDC A/S, Teglholmsgade 1, 0900 K&#248;benhavn CVR 14773908, kundeservice@blockbuster.dk <a href="#" id="A_2492">cookies</a>
			</p>
			</div>
		</div>
	</bb>
        </div>
    </div>
    <!-- jQuery -->
    <script src="js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <!-- /.container -->
    </form>
</body>
</html>
