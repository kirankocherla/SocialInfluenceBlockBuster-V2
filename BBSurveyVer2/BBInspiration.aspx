<%@ page language="C#" autoeventwireup="true" codebehind="BBInspiration.aspx.cs" inherits="BBSurveyVer2.BBInspiration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title></title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <!-- Custom CSS -->
    <link href="css/half-slider.css" rel="stylesheet" />
    <link href="css/Footer.css" rel="stylesheet" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->


</head>
<body>
    <form id="form1" runat="server">
    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="BBHome.aspx">BLOCKBUSTER</a>
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


    <!-- Page Content -->
    <div class="container">

        <%--action--%>
        <div class="row">
            <div class="col-lg-12" style="height: 30px;">
            </div>
        </div>
        <div class="row" style="margin-top: 30px;margin-bottom: 15px;">
            <div class="col-lg-12" style="">
                <div style="visible: true;" id="divTableWrapper" runat="server">
                    <table style="margin-top: 15px;">
                        <asp:repeater runat="server" id="rptFriends" onitemdatabound="rptFriends_OnItemDataBound">
                            <headertemplate>
                                <tr>
                                    <td style="wrap: no-wrap; text-wrap: none; text-align: left; padding-right: 0px; font-size: 18px; font-weight: bold; vertical-align: middle; color: #000; font-family: Conv_AvenirNextLTPro-DemiCn;">
                                        <asp:literal runat="server" id="textForFriend" text="Disse venner bruger allerede Blockbuster:" />
                                    </td>
                                    <td style="text-align: center; padding-left: 5px; font-size: 14px; font-weight: bold;">
                                        <img src="images/FbIcon.png" style="height: 50px; width: 50px;" />
                                    </td>
                            </headertemplate>
                            <itemtemplate>
                                <td style="text-align: center; padding-left: 5px; font-size: 14px; font-weight: bold;">
                                    <asp:image runat="server" id="img" width="50" height="50" />
                                </td>
                            </itemtemplate>
                            <footertemplate>
                                </tr>            
                            </footertemplate>
                        </asp:repeater>
                    </table>                    
                </div>
                <%--<h1 style="margin-left: 0; padding-left: 0;"><b>REDAKTIONENS FAVORITTER</b></h1>--%>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/tordenhjerte?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/universal-soldier?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/total-recall?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/love-actually?width=141&height=207" />
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/leaving-las-vegas?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left"> 
                    <img src="http://images.blockbuster.dk/movie/iskoldt-begaer?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/doors-the?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/cliffhanger?width=141&height=207" />
                </div>
            </div>
        </div>
        <div class="row" style="margin-top: 15px;">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/billy-elliot?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/about-a-boy?width=141&height=207" />  
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/en-russer-rydder-op-i-chicago?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/bedrag?width=141&height=207" />  
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/moon?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/spraengfarlig-bombe?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/son-of-rambow?width=141&height=207" />  
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/ondskabens-oejne?width=141&height=207" /> 
                </div>
            </div>
        </div>

        <%--KLASSIKERE--%>
        <div class="row" style="margin-top: 60px;">
            <div class="col-lg-12" style="">
                <h1 style="margin-left: 0; padding-left: 0;"><b>KLASSIKERE</b></h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/the-godfather?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/indiana-jones-jagten-paa-den-forsvundne-skat?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/en-verden-udenfor?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/doedens-gab?width=141&height=207" /> 
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/goodfellas?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/robin-hood-1938?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/festen?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/patton-pansergeneralen?width=141&height=207" /> 
                </div>
            </div>
        </div>
        <div class="row" style="margin-top: 15px;">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/pulp-fiction?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/fight-club?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/en-verden-udenfor?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/doedens-gab?width=141&height=207" />
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/goodfellas?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/robin-hood-1938?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/festen?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/singing-in-the-rain?width=141&height=207" />
                </div>
            </div>
        </div>

        <%--HURTIGE BILER OG LÆKRE ØSER--%>

        <div class="row" style="margin-top: 60px;">
            <div class="col-lg-12" style="">
                <h1 style="margin-left: 0; padding-left: 0;"><b>HURTIGE BILER OG LÆKRE ØSER</b></h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/fast-furious-6?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/fast-furious-5?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/fast-furious?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/2-fast-2-furious?width=141&height=207" />
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/gone-in-60-seconds?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/gone-in-60-seconds-1974?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/need-for-speed?width=141&height=207 " />                  
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/drive-angry?width=141&height=207" />
                </div>
            </div>
        </div>
        <div class="row" style="margin-top: 15px;">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/rush?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/drive?width=141&height=207" />  
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/death-race?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/speed-racer?width=141&height=207" />  
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/boerning?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/days-of-thunder?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/drive-hard?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/med-stroemerne-i-bakspejlet?width=141&height=207" /> 
                </div>
            </div>
        </div>

        <%--KOMMER DER IKKE SNART EN 2'ER?--%>

        <div class="row" style="margin-top: 60px;">
            <div class="col-lg-12" style="">
                <h1 style="margin-left: 0; padding-left: 0;"><b>KOMMER DER IKKE SNART EN 2'ER?</b></h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/dredd?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/paul?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/graesroedderne?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/en-ny-dag-truer?width=141&height=207" />
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/the-a-team?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/araknofobi?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/familien-miller-langt-over-graensen?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/fortryllet?width=141&height=207" />
                </div>
            </div>
        </div>
        <div class="row" style="margin-top: 15px;">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/spraengfarlig-bombe?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/tintin-enhjoerningens-hemmelighed?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/dude-wheres-my-car?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/superbad?width=141&height=207" />
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/deep-blue-sea?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/congo?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/demolition-man?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/starsky-hutch?width=141&height=207" />
                </div>
            </div>
        </div>



        <%--TIDSREJSER--%>

        <div class="row" style="margin-top: 60px;">
            <div class="col-lg-12" style="">
                <h1 style="margin-left: 0; padding-left: 0;"><b>TIDSREJSER</b></h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/project-almanac?width=141&height=207" /> 
                 </div>    
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/interstellar?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/predestination?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/edge-of-tomorrow?width=141&height=207" /> 
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/the-jacket?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/tilbage-til-fremtiden?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/tilbage-til-fremtiden-ii?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/tilbage-til-fremtiden-iii?width=141&height=207" />
                </div>
            </div>
        </div>
        <div class="row" style="margin-top: 15px;">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/lake-house-the?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/repeaters?width=141&height=207" />  
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/safety-not-guaranteed?width=141&height=207" /> 
                </div> 
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/deja-vu?width=141&height=207" /> 
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/safety-not-guaranteed?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/deja-vu?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/bagstiv-i-boblebadet?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/paycheck?width=141&height=207" />
                </div>
            </div>
        </div>


        <%--POPULÆRE FILMFÆNOMENER--%>

        <div class="row" style="margin-top: 60px;">
            <div class="col-lg-12" style="">
                <h1 style="margin-left: 0; padding-left: 0;"><b>POPULÆRE FILMFÆNOMENER</b></h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/hunger-games?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/hunger-games-catching-fire?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/hunger-games-mockingjay-del-1?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/divergent?width=141&height=207" />
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/twilight?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/twilight-2-new-moon?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/twilight-3-eclipse?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/twilight-4-breaking-dawn-1?width=141&height=207" />
                </div>
            </div>
        </div>

        <%--SPIONFILM--%>
        <div class="row" style="margin-top: 60px;">
            <div class="col-lg-12" style="">
                <h1 style="margin-left: 0; padding-left: 0;"><b>SPIONFILM</b></h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/marathonmanden?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/jagten-paa-roede-oktober?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/body-of-lies?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/en-fjende-iblandt-os?width=141&height=207" /> 
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/spy-game?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/debt-the?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/007-never-say-never-again?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/dame-konge-es-spion?width=141&height=207" />
                </div>
            </div>
        </div>
        <div class="row" style="margin-top: 15px;">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/spy-game?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/mnchen?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/black-book?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/bourne-identity?width=141&height=207" />
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/alle-praesidentens-maend?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/get-smart-2008?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/traitor?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/enemy-of-the-state?width=141&height=207" />
                </div>
            </div>
        </div>

        <%--ACTION-KITSCH OG SCI-FI RABALDER--%>
        <div class="row" style="margin-top: 60px;">
            <div class="col-lg-12" style="">
                <h1 style="margin-left: 0; padding-left: 0;"><b>ACTION-KITSCH OG SCI-FI RABALDER</b></h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/100-degrees-below-zero?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/pompeii-the-apocalypse?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/500-mph-storm?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/age-of-dinosaurs-the?width=141&height=207" />
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/age-of-tomorrow?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/aliens-vs.-avatars?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/apocalypse-earth?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/asteroid-vs.-earth?width=141&height=207" />
                </div>
            </div>
        </div>
        <div class="row" style="margin-top: 15px;">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/battledogs?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/bermuda-tentacles?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/dinosaur-experiment-the?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/killer-ants?width=141&height=207" />
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/mega-shark-vs.-mecha-shark?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/mega-shark-vs.-giant-octopus?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/poseidon-rex?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/robotic-cop?width=141&height=207" />
                </div>
            </div>
        </div>

        <%--KATASTROFEFILM--%>

        <div class="row" style="margin-top: 60px;">
            <div class="col-lg-12" style="">
                <h1 style="margin-left: 0; padding-left: 0;"><b>KATASTROFEFILM</b></h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/day-after-tomorrow-the?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/2012?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/worlds-end-the?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/pompeji?width=141&height=207" />
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/det-taarnhoeje-helvede?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/independence-day?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/world-invasion-battle-los-angeles?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/after-earth?width=141&height=207" />
                </div>
            </div>
        </div>
        <div class="row" style="margin-top: 15px;">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/cloverfield?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/dannys-dommedag?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/100-degrees-below-zero?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/deep-core?width=141&height=207" />
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/the-road?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/s.o.s.-poseidon-kalder-1972?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/i-am-legend?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/apocalypse-earth?width=141&height=207" />
                </div>
            </div>
        </div>



        <div class="row">
            <div class="col-lg-12>" style="height: 100px;">
            </div>
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
				©2014 BLOCKBUSTER. Alle rettigheder forbeholdes. BLOCKBUSTER udbydes af TDC A/S, Teglholmsgade 1, 0900 K&#248;benhavn CVR 14773908, kundeservice@blockbuster.dk <a href="/hj&#230;lp/cookies" id="A_2492">cookies</a>
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