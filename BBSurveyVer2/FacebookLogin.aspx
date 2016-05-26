<%@ page title="" language="C#" masterpagefile="~/SurveyMaster.Master" autoeventwireup="true" codebehind="FacebookLogin.aspx.cs" inherits="BBSurveyVer2.FacebookLogin" %>

<asp:content id="Content1" contentplaceholderid="head" runat="server">
</asp:content>

<asp:content id="Content2" contentplaceholderid="ContentPlaceHolder1" runat="server">
    <script>
        // This is called with the results from from FB.getLoginStatus().
        function statusChangeCallback(response) {
            console.log('statusChangeCallback');
            console.log(response);
            // The response object is returned with a status field that lets the
            // app know the current login status of the person.
            // Full docs on the response object can be found in the documentation
            // for FB.getLoginStatus().
            if (response.status === 'connected') {
                // Logged into your app and Facebook.
                //alert(response.authResponse.accessToken);
                var resId = <% =ResponseId %>;
                var surveyType = "<%= SurveyMode %>";
                $.ajax({
                    method: "POST",
                    url: "FacebookLogin.aspx/PostAuthToken",
                    contentType: "application/json",
                    data: JSON.stringify({ authToken: response.authResponse.accessToken, fbUserId: response.authResponse.userID, responseId: resId, expType: surveyType }),
                    success: function (data) {
                        
                        if (surveyType == "pre") {
                            window.location.href = "FriendsInspireRate.aspx?ResponseId=" + resId;
                        } else {
                            window.location.href = "BBLauncher.aspx?ResponseId=" + resId;
                        }

                        //alert(data.d);
                        //if (data.d > 0)
                        //    window.location.href = "PostFacebookFetch.aspx?ResponseId=" + resId;
                        //else {
                        //    alert("Something went wrong.");
                        //}
                    }
                }).done(function () {

                }).error(function () {
                    //alert("BPGJ");
                });
                testAPI();
            } else if (response.status === 'not_authorized') {
                // The person is logged into Facebook, but not your app.
                document.getElementById('status').innerHTML = 'Please log ' +
                  'into this app.';
            } else {
                // The person is not logged into Facebook, so we're not sure if
                // they are logged into this app or not.
                document.getElementById('status').innerHTML = 'Please log ' +
                  'into Facebook.';
            }
        }

        // This function is called when someone finishes with the Login
        // Button.  See the onlogin handler attached to it in the sample
        // code below.
        function checkLoginState() {
            FB.getLoginStatus(function (response) {
                statusChangeCallback(response);
            });
        }

        window.fbAsyncInit = function () {
            FB.init({
                appId: '1626818734231157',
                cookie: true,  // enable cookies to allow the server to access 
                // the session
                xfbml: true,  // parse social plugins on this page
                version: 'v2.2' // use version 2.2
            });

            // Now that we've initialized the JavaScript SDK, we call 
            // FB.getLoginStatus().  This function gets the state of the
            // person visiting this page and can return one of three states to
            // the callback you provide.  They can be:
            //
            // 1. Logged into your app ('connected')
            // 2. Logged into Facebook, but not your app ('not_authorized')
            // 3. Not logged into Facebook and can't tell if they are logged into
            //    your app or not.
            //
            // These three cases are handled in the callback function.

            FB.getLoginStatus(function (response) {
                statusChangeCallback(response);
            });

        };

        // Load the SDK asynchronously
        (function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/en_US/sdk.js";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));

        // Here we run a very simple test of the Graph API after login is
        // successful.  See statusChangeCallback() for when this call is made.
        function testAPI() {
            console.log('Welcome!  Fetching your information.... ');
            FB.api('/me', function (response) {
                console.log('Successful login for: ' + response.name);
                document.getElementById('status').innerHTML =
                  'Thanks for logging in, ' + response.name + '!';
            });
        }
    </script>
    <div class="container" style="margin-top: 100px;">
        <div class="row">
            <div class="col-lg-12" style="height: 30px;" id="divQuestion" runat="server">
                <h4>Venligst klik på den blå Facebook-knap nedenfor. Facebook-app’en ”CSSL Survey Tool” vil herefter bede om adgang til de af dine oplysninger på Facebook, som er offentligt tilgængelige, samt din liste over venner. Som tidligere nævnt er denne tilladelse nødvendig for at kunne gennemføre resten af undersøgelsen, og app’en vil IKKE kunne poste opslag på hverken din eller dine venners sider, og vi vil ikke kontakte dine venner. Disse informationer vil udelukkende blive brugt i denne undersøgelse og vil - ligesom dine svar i resten af undersøgelsen - blive behandlet fortroligt.</h4>

                <div class="row">
                    <div class="col-lg-6 text-right" style="padding-right: 15px;">
                        <asp:button runat="server" text="Tilbage" onclick="OnPreviousClick" id="cmdPrevious" width="100" />
                    </div>
                    <div class="col-lg-6" style="padding-right: 15px;">
                        <fb:login-button scope="public_profile,email,user_friends" onlogin="checkLoginState();">
                        </fb:login-button>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div id="status" style="display: none;"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:content>

