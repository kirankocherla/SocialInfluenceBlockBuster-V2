<%@ page language="C#" autoeventwireup="true" codebehind="BBCategory.aspx.cs" inherits="BBSurveyVer2.BBCategory" %>

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

    <div style="position: relative; width: 100%; background-color: #000; margin-top: 40px;">
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
    </div>

    <%--<div class="container" style="margin-top: 50px;">
        <div class="row">
            <div class="col-lg-12">
                <div style="visible: true;">
                    <div class="row" id="divTableWrapper" runat="server">
                        <div class="col-lg-12 text-center">
                            <table style="height: 100px; margin-top: 15px;">
                                <asp:repeater runat="server" id="rptFriends" onitemdatabound="rptFriends_OnItemDataBound">
                                    <headertemplate>
                                        <tr>
                                            <td style="wrap: no-wrap; text-wrap: none; width: 250px; text-align: right; padding-right: 0px; font-size: 12px; font-weight: bold; vertical-align: middle; color: #ffc429;">
                                                <asp:literal runat="server" id="textForFriend" text="Disse venner bruger allerede Blockbuster:" />
                                            </td>
                                    </headertemplate>
                                    <itemtemplate>
                                        <td style="width: 100px; text-align: center; padding-left: 5px; font-size: 14px; font-weight: bold;">
                                            <asp:image runat="server" id="img" width="100" height="100" />
                                        </td>
                                    </itemtemplate>
                                    <footertemplate>
                                        </tr>            
                                    </footertemplate>
                                </asp:repeater>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>


    <!-- Page Content -->
    <div class="container">

        <%--action--%>
        <div class="row">
            <div class="col-lg-12" style="height: 30px;">
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12" style="">
                <div style="visible: true;" id="divTableWrapper" runat="server">

                    <table style="margin-top: 15px;">
                        <asp:repeater runat="server" id="rptFriends" onitemdatabound="rptFriends_OnItemDataBound">
                            <headertemplate>
                                <tr>
                                    <td style="wrap: no-wrap; text-wrap: none; text-align: left; padding-right: 0px; font-size: 18px; font-weight: bold; vertical-align: middle; color: #000; font-family: Conv_AvenirNextLTPro-DemiCn;">
                                       <h1><b><asp:literal runat="server" id="textForFriend" text="Disse venner bruger allerede Blockbuster:" /></b></h1>
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
                <br />
                <br />
                <br />
                <%--<h1 style="margin-left: 0; padding-left: 0;"><b>ACTION ></b></h1>--%>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/kollektivet?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/alice---the-darker-side-of-the-mirror?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                     <img src="//images.blockbuster.dk/movie/pel---birth-of-a-legend?width=141&height=207" />  
                </div>
                <div class="col-lg-3 text-left">
                  <img src="//images.blockbuster.dk/movie/grease-live?width=141&height=207" />  
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                   <img src="//images.blockbuster.dk/movie/steve-jobs?width=141&height=207" />   
                </div>
                <div class="col-lg-3 text-left">
                   <img src="//images.blockbuster.dk/movie/benefactor-the?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                     <img src="//images.blockbuster.dk/movie/macbeth?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/creed?width=141&height=207" />
                </div>
            </div>
        </div>
        <div class="row" style="margin-top: 15px;">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/hyena-road?width=141&height=207" />  
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/fear-the?width=141&height=207" />  
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/krop-og-sjael?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/big-short-the?width=141&height=207" /> 
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/driftless-area-the?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/revenant-the?width=141&height=207" /> 
                </div> 
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/el-club?width=141&height=207" />  
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/colonia?width=141&height=207" /> 
                </div>
            </div>
        </div>





        <%--<div class="row">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/jupiter-ascending?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/blackhat?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/assassin?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/tracers?width=141&height=207" />
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/convict?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/american-sniper?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/persecuted?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/stretch?width=141&height=207" />
                </div>
            </div>
        </div>
        <div class="row" style="margin-top: 15px;">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/mutant-world?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/red-sky?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/taken-3?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/bag-fjendens-linjer?width=141&height=207" />
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/northmen-a-viking-saga?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/exodus?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/hobbitten-femhaereslaget?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/a-good-man?width=141&height=207" />
                </div>
            </div>
        </div>--%>

        <%--børnefilm--%>
        <div class="row" style="margin-top: 60px;">
            <div class="col-lg-12" style="">
                <h1 style="margin-left: 0; padding-left: 0;"><b>BØRNEFILM ></b></h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/monster-high---skraek-i-koralrevet?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/lego-justice-league---cosmic-clash?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/barbie---superagenterne?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/emma--julemanden?width=141&height=207" /> 
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/scooby-doo-og-robotterne?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/scooby-doo-og-spoegelserne?width=141&amp;height=207" />  
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/tom--jerry---husdyr-paa-vagt?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/tom--jerry---vintereventyr?width=141&height=207" /> 
                </div>
            </div>
        </div>
        <div class="row" style="margin-top: 15px;">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/hotel-transylvania-2-orig?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/villads-fra-valby?width=141&height=207" />                     
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/trenk---den-lille-ridder?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/far-til-fires-vilde-ferie?width=141&height=207" />  
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/alvinnn---jeanette-forhekset?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/alvinnn---simon-som-formand?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/alvinnn---alvins-vilde-eventyr?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/inderst-inde?width=141&height=207" /> 
                </div>
            </div>
        </div>


        <%--danske film--%>
        <div class="row" style="margin-top: 60px;">
            <div class="col-lg-12" style="">
                <h1 style="margin-left: 0; padding-left: 0;"><b>DANSKE FILM ></b></h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/emma--julemanden?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/noegle-hus-spejl?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/far-til-fires-vilde-ferie?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/1864---broedre-i-krig?width=141&height=207" />  
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/krigen?width=141&height=207" />  
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/klovn-forever?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/comeback?width=141&height=207" />  
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/sommeren-92?width=141&height=207" />  
                </div>
            </div>
        </div>
        <div class="row" style="margin-top: 15px;">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/guldkysten?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/rosita?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/i-dine-haender?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/lang-historie-kort?width=141&height=207" />  
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/idealisten?width=141&height=207" />   
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/9.-april?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/skammerens-datter?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/mennesker-bliver-spist?width=141&height=207 " />  
                </div>
            </div>
        </div>


        <%--dokumentar--%>
        <div class="row" style="margin-top: 60px;">
            <div class="col-lg-12" style="">
                <h1 style="margin-left: 0; padding-left: 0;"><b>DOKUMENTAR ></b></h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/the-roxette-diaries?width=141&height=207" />  
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/meru?width=141&height=207" />  
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/motleys-law?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/mavis?width=141&height=207" /> 
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/misfits?width=141&height=207" />  
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/station-to-station?width=141&height=207" />  
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/dukales-dream?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/steve-jobs---the-man-in-the-machine?width=141&height=207" />  
                </div>
            </div>
        </div>
        <div class="row" style="margin-top: 15px;">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/hitchcocktruffaut?width=141&height=207" />  
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/sneakerheadz?width=141&height=207" />  
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/eskimo-diva?width=141&height=207" />  
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/jeg-er-ingrid?width=141&height=207" />  
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/welcome-to-leith?width=141&height=207" />  
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/barca-dreams?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/amy?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/listen-to-me-marlon?width=141&height=207" /> 
                </div>
            </div>
        </div>


        <%--drama--%>
        <div class="row" style="margin-top: 60px;">
            <div class="col-lg-12" style="">
                <h1 style="margin-left: 0; padding-left: 0;"><b>DRAMA ></b></h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/digging-for-fire?width=141&height=207" />  
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/truth?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/noegle-hus-spejl?width=141&height=207" />  
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/girl-king-the?width=141&height=207" /> 
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/our-brand-is-crisis?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/walk-the?width=141&height=207" />  
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/queen-of-the-desert?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/strangerland?width=141&height=207" />  
                </div>
            </div>
        </div>
        <div class="row" style="margin-top: 15px;">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/i-skyggen-af-kvinder?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/kvinden-i-guld?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/jennys-wedding?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/tangerine?width=141&height=207" /> 
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/pan?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/crimson-peak?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/shes-wild-again-tonight?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="//images.blockbuster.dk/movie/straight-outta-compton?width=141&height=207" />
                </div>
            </div>
        </div>


        <%--gyser--%>
        <div class="row" style="margin-top: 60px;">
            <div class="col-lg-12" style="">
                <h1 style="margin-left: 0; padding-left: 0;"><b>GYSER ></b></h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/forsaken?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/paranormal-activity---the-ghost-dimension?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/playing-with-dolls?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/sand-the?width=141&height=207" /> 
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/devil-complex-the?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/knock-knock?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/deathgasm?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/crimson-peak?width=141&height=207" />   
                </div>
            </div>
        </div>
        <div class="row" style="margin-top: 15px;">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/entity-the?width=141&height=207" />  
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/decay?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/crying-wolf?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/visit-the?width=141&height=207" /> 
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/ouija-exorcism-the?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/inhabitants-the?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/vatican-tapes-the?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/abandoned-dead?width=141&height=207" /> 
                </div>
            </div>
        </div>


        <%--eventyr--%>
        <div class="row" style="margin-top: 60px;">
            <div class="col-lg-12" style="">
                <h1 style="margin-left: 0; padding-left: 0;"><b>EVENTYR ></b></h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/skammerens-datter?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/earth-to-echo?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/hobbitten-femhaereslaget?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/maleficent?width=141&height=207" /> 
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/tarzan-2013?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/oz-the-great-and-powerful?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/treasure-island-2012?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/kon-tiki?width=141&height=207" /> 
                </div>
            </div>
        </div>
        <div class="row" style="margin-top: 15px;">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/lille-spejl-paa-vaeggen-der-orig?width=141&height=207" />  
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/jack-the-giant-slayer?width=141&height=207" /> 
                   
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/harry-potter-og-doedsregalierne-del-2?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/tintin-enhjoerningens-hemmelighed?width=141&height=207" /> 

                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/avril-and-the-extraordinary-world?width=141&height=207" />                     
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/jabberwock-dragon-siege?width=141&height=207" />  
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/ironclad?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/dawn-of-the-dragonslayer?width=141&height=207" />  
                </div>
            </div>
        </div>

        <%--KOMEDIE--%>
        <div class="row" style="margin-top: 60px;">
            <div class="col-lg-12" style="">
                <h1 style="margin-left: 0; padding-left: 0;"><b>KOMEDIE ></b></h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/digging-for-fire?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/our-brand-is-crisis?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/wingman-inc?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/tangerine?width=141&height=207" />  
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/jennys-wedding?width=141&height=207" />  
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/pan?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/people-places-things?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/praktikanten?width=141&height=207" /> 
                </div>
            </div>
        </div>
        <div class="row" style="margin-top: 15px;">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/no-stranger-than-love?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/accidental-love?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/dope?width=141&height=207" />  
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/ricki-and-the-flash?width=141&height=207" /> 
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/all-roads-lead-to-rome?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/martian-the?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/american-ultra?width=141&height=207" />
                </div> 
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/irrational-man?width=141&height=207" /> 
                </div>
            </div>
        </div>

        <%--krigsfilm--%>
        <div class="row" style="margin-top: 60px;">
            <div class="col-lg-12" style="">
                <h1 style="margin-left: 0; padding-left: 0;"><b>KRIGSFILM ></b></h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/jarhead---the-siege?width=141&height=207" />  
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/1864---broedre-i-krig?width=141&height=207" />  
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/krigen?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/suite-francaise?width=141&height=207" /> 
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/9.-april?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/kilo-two-bravo?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/corn-island?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/testament-of-youth?width=141&height=207" /> 
                </div>
            </div>
        </div>
        <div class="row" style="margin-top: 15px;">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/fort-bliss?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/water-diviner-the?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/warsaw-44?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/silent-mountain-the?width=141&height=207" /> 
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/imitation-game-the?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/unbroken?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/fury?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/boys-of-abu-ghraib?width=141&height=207" /> 
                </div>
            </div>
        </div>


        <%--krimi--%>
        <div class="row" style="margin-top: 60px;">
            <div class="col-lg-12" style="">
                <h1 style="margin-left: 0; padding-left: 0;"><b>KRIMI ></b></h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/beck---gunvald?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/midnight-man-the?width=141&height=207" />  
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/black-mass?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/mr.-holmes?width=141&height=207" /> 
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/tiger-house?width=141&height=207" />  
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/broken-horses?width=141&height=207" />  
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/checkmate?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/kidnapping-mr.-heineken?width=141&height=207" /> 
                </div>
            </div>
        </div>
        <div class="row" style="margin-top: 15px;">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/laugh-killer-laugh?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/cleveland-abduction?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/focus?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/beautiful--twisted?width=141&height=207" /> 
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/beck-sygehusmordene?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/beck-invasionen?width=141&height=207" />  
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/beck-familien?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/beck-rum-302?width=141&height=207" />  
                </div>
            </div>
        </div>


        <%--romantik--%>
        <div class="row" style="margin-top: 60px;">
            <div class="col-lg-12" style="">
                <h1 style="margin-left: 0; padding-left: 0;"><b>ROMANTIK ></b></h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/no-stranger-than-love?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/accidental-love?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/all-roads-lead-to-rome?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/trainwreck?width=141&height=207" />  
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/sommeren-med-sangaile?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/we-are-your-friends?width=141&height=207" />  
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/man-up?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/ashby?width=141&height=207" /> 
                </div>
            </div>
        </div>
        <div class="row" style="margin-top: 15px;">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/paper-towns?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/age-of-adaline-the?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/suite-francaise?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/longest-ride-the?width=141&height=207" /> 
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/rosita?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/lang-historie-kort?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/aloha?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/far-from-the-madding-crowd?width=141&height=207" /> 
                </div>
            </div>
        </div>

        <%--science fiction--%>
        <div class="row" style="margin-top: 60px;">
            <div class="col-lg-12" style="">
                <h1 style="margin-left: 0; padding-left: 0;"><b>SCIENCE FICTION ></b></h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/sand-the?width=141&height=207" />   
                </div> 
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/martian-the?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/maze-runner-2---infernoet?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left"> 
                    <img src="http://images.blockbuster.dk/movie/absolutely-anything?width=141&height=207" /> 
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/martian-land-the?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/selfless?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/fantastic-four?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/halo---fall-of-reach?width=141&height=207" /> 
                </div>
            </div>
        </div>
        <div class="row" style="margin-top: 15px;">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/sharknado-3---oh-hell-no?width=141&height=207" />  
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/ant-man?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/terminator-genisys?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/jurassic-world?width=141&height=207" /> 
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/turbo-kid?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/synchronicity?width=141&height=207" />                    
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/road-wars?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/air?width=141&height=207" /> 
                </div>
            </div>
        </div>


        <%--stand-up of satire--%>
        <div class="row" style="margin-top: 60px;">
            <div class="col-lg-12" style="">
                <h1 style="margin-left: 0; padding-left: 0;"><b>STAND-UP OG SATIRE ></b></h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/thomas-hartmann---jokebox?width=141&height=207" />  
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/andreas-bo---original?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/tobias-dybvad---er-det-ikke-dig-fra-dybvad?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/sanne-soendergaard---kvinde?width=141&height=207" /> 
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/cirkusrevyen-2015?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/thomas-hartmann---betamax?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/lasse-rimmer---selvtilfreds?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/torben-chris---jydelogik?width=141&height=207" /> 
                </div>
            </div>
        </div>
        <div class="row" style="margin-top: 15px;">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/alex-thelander---live?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/sanne-soendergaard---mandehader?width=141&height=207" />  
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/brian-moerk-og-lasse-rimmer-redder-verden?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/anders-fjelsted-lige-ved-og-voksen?width=141&height=207" /> 
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/carsten-bang-dyret?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/per-helge-soerensen-djoef-med-loegn?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/the-uffe-holm-show-4?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/hartmann--chris-mens-room-2?width=141&height=207" /> 
                </div>
            </div>
        </div>


        <%--thriller--%>
        <div class="row" style="margin-top: 60px;">
            <div class="col-lg-12" style="">
                <h1 style="margin-left: 0; padding-left: 0;"><b>THRILLER ></b></h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/beck---gunvald?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left"> 
                    <img src="http://images.blockbuster.dk/movie/midnight-man-the?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/home-invasion?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/truth?width=141&height=207" /> 
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/boelgen?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/playing-with-dolls?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/walk-the?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/devil-complex-the?width=141&height=207" /> 
                </div>
            </div>
        </div>
        <div class="row" style="margin-top: 15px;">
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/en-doedelig-loegn?width=141&height=207" />
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/knock-knock?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left"> 
                    <img src="http://images.blockbuster.dk/movie/strangerland?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/backtrack?width=141&height=207" /> 
                </div>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/sicario?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/crimson-peak?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/entity-the?width=141&height=207" /> 
                </div>
                <div class="col-lg-3 text-left">
                    <img src="http://images.blockbuster.dk/movie/decay?width=141&height=207" /> 
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

    <script>
        $(document).ready(function () {
            $.each($('#bs-example-navbar-collapse-1').find('a'), function (index, aItem) {
                if (window.location.href.indexOf($(aItem).attr('href')) >= 0) {
                    $(aItem).css('color', '#ffc429');
                }
                else {
                    $(aItem).css('color', '#FFFFFF');
                }
            });
        });
    </script>    
    <!-- /.container -->
    </form>
</body>
</html>