<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BBAbout.aspx.cs" Inherits="BBSurveyVer2.BBAbout" %>

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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/styles.css" rel="stylesheet" />

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
       <div style="position: relative; width: 100%; background-color: #000;">
        <div class="row">
            <div class="col-lg-12 text-center" style="opacity: 1; background-image: url(images/about_header_devices.jpg);background-position: center center; background-size: cover; background-repeat: no-repeat;">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="c-cms-about-title">
                                <h1 style="color: #ffc429;">OM BLOCKBUSTER</h1>
                            </div>
                            <%--<div style="visible: true; padding-top: 50px;">
                                <img style="height: 250px;" src="images/about_header_devices.jpg" />
                            </div>--%>
                            <div class="c-cms-underlay c-cms-about-title-background"></div>
                            <div class="c-cms-underlay-dark-blur"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
       <%-- <div class="main-container col1-layout">
            <div class="main container_12">
                <div class="col-main">
                    <div class="c-cms-block-wrapper">
                        <div class="c-cms-about-title">
                            <h1>Om Blockbuster</h1>
                        </div>
                        <div class="c-cms-underlay c-cms-about-title-background"></div>
                        <div class="c-cms-underlay-dark-blur"></div>
                    </div>
                </div>
            </div>
        </div>--%>
    <!-- Page Content -->
        <div class="c-cms-block-wrapper" style="margin-top:2.1%;">
            <div class="c-cms-txt-wrapper c-cms-about-top-txt" style="padding:50px 20% 30px 20%;text-align:left;">
                <div class="c-cms-txt-block">
                     <h3 class="c-cms-orange">Velkommen til BLOCKBUSTER!</h3>
                    <p style="line-height: 1.7; text-align: left; font-size: 22px;">
                        Vi er Danmarks største online filmtjeneste med over
                            7.000 titler som du kan leje eller købe og streame som det passer dig. BLOCKBUSTER
                        tilbyder både de nyeste film som de absolut første efter biograferne, samt de nyeste
                        tv-serier. Vores mission er at give dig det absolut fedeste indhold og lade det
                        være op til dig hvor og hvornår du vil se det; kort sagt, så er vi din online biograf.
                    </p>
                </div>
                <div class="c-cms-txt-block">
                    <h3 class="c-cms-orange">Fra butikker til online streaming</h3>
                    <p style="line-height: 1.7; font-size: 22px;">
                        Mange kender BLOCKBUSTER fra de utallige butikker
                            man tidligere kunne finde rundt i landet. Disse hører dog fortiden til, og BLOCKBUSTER
                        er nu en rendyrket online streaming tjeneste, som hører hjemme på blockbuster.dk.
                        Vi har set en klar udvikling hvor vores måde at se film på, er gået fra at leje
                        og købe fysiske produkter til nu at være noget vi gør online og streamer som det
                        passer os. Derfor er det også muligt at se det indhold du lejer eller køber på blockbuster.dk
                        på alle dine enheder.
                    </p>
                </div>
                <div class="c-cms-txt-block">
                    <h3 class="c-cms-orange">Intet abonnement</h3>
                    <p style="line-height: 1.7; font-size: 22px;">
                        BLOCKBUSTER skiller sig ud fra andre streamingtjenester
                            eftersom vi ikke har noget abonnement, og du betaler kun for det du ser. Du
                        kan
                            derfor oprette en gratis profil lige her, og så er du ellers klar til at leje
                        og
                            købe præcis de film og tv-serier du vil. 

                    </p>
                </div>
            </div>
            <div class="c-cms-underlay c-cms-alt-bg-blue"></div>
        </div>
        <div class="container">
        <div class="main-container col1-layout">            
        <div>
            <div class="c-cms-block-wrapper grid_full c-cms-feature-block" data-name="punchcard-buy-rent-facebook">
                <div class="grid_4 hyphenate c-cms-pos-relative">
                    <a href="#" class="c-cms-feature-text c-cms-center left-block c-cms-block-link-wrapper">
                        <div class="feature-icon left-icon">
                            <div class="fa-icon-wrapper"><span class="fa fa-ticket"></span></div>
                        </div>
                        <h5>Klippekort</h5>
                        <p style="line-height: 1.7; font-size: 22px;">Hvis du ligesom os, er vild med film, bliver du glad for et BLOCKBUSTER klippekort.
                            Med sådan et, kan du nemlig frit vælge mellem 3 lejefilm for bare 99 kr.</p>
                        <h6 class="imitate-link">Læs mere...</h6>
                    </a>
                </div>
                <div class="grid_4 hyphenate c-cms-pos-relative">
                    <a href="#" class="c-cms-feature-text c-cms-center center-block c-cms-block-link-wrapper">
                        <div class="feature-icon">
                            <div class="fa-icon-wrapper fa-icon-left-correction-3"><span class="fa fa-play"></span>
                            </div>
                        </div>
                        <h5>Leje & køb</h5>
                        <p style="line-height: 1.7; font-size: 22px;">Du kan afspille dine lejefilm i 48 timer, og du har 28 dage til at starte afspilningen.
                            Når du køber indhold, ligger det i "Min samling". Det kan også downloades og afspilles
                            uden internetforbindelse.</p>
                        <h6 class="imitate-link">Læs mere...</h6>
                    </a>
                </div>
                <div class="grid_4 hyphenate c-cms-pos-relative">
                    <a href="#" target="_blank" class="c-cms-feature-text c-cms-center right-block c-cms-block-link-wrapper">
                        <div class="feature-icon right-icon">
                            <div class="fa-icon-wrapper"><span class="fa fa-facebook-square"></span></div>
                        </div>
                        <h5>Facebook</h5>
                        <p style="line-height: 1.7; font-size: 22px;">Kom og mød os på Facebook. Hold dig opdateret på de nyeste film samt deltag i konkurrencer
                            og meget mere.</p>
                        <h6 class="imitate-link">Læs mere...</h6>
                    </a>
                </div>
                <div class="c-cms-underlay c-cms-alt-bg-grey"></div>
            </div>
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
				<%--<a href="#" id="A_2396">--%>
				<img src="images/bb-icon__phone.png" id="IMG_2398" alt='' />
				<h3 id="H3_2399">
					mobil
				</h3>
				<%--</a>--%>
                </span>
			</div>
			<div id="DIV_2401"  style="float:left;position:table-grid;">
				<%--<a href="#" id="A_2400">--%>
                    <span id="A_2400">
				<img src="images/bb-icon__tablet.png" id="IMG_2402" alt='' />
				<h3 id="H3_2403">
					tablet
				</h3>
				<%--</a>--%>
                        </span>
			</div>
			<div id="DIV_2405"  style="float:left;position:table-grid;">
				<span id="A_2404">
                    <%--<a href="#" id="A_2404">--%>
				<img src="images/bb-icon__computer.png" id="IMG_2406" alt='' />
				<h3 id="H3_2407">
					pc/mac
				</h3>
				</span>
			</div>
			<div id="DIV_2409"  style="float:left;position:table-grid;">
                <span id="A_2408">
				<%--<a href="#" id="A_2408">--%>
				<img src="images/bb-icon__console.png" id="IMG_2410" alt='' />
				<h3 id="H3_2411">
					playstation
				</h3>
				</span>
			</div>
			<div id="DIV_2413"  style="float:left;position:table-grid;">
                <span id="A_2412">
				<%--<a href="#" id="A_2412">--%>
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
