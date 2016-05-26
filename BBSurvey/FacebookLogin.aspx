<%@ page title="" language="C#" masterpagefile="~/SurveyMaster.Master" autoeventwireup="true" codebehind="FacebookLogin.aspx.cs" inherits="BBSurvey.FacebookLogin" %>

<asp:content id="Content1" contentplaceholderid="head" runat="server">
</asp:content>

<asp:content id="Content2" contentplaceholderid="ContentPlaceHolder1" runat="server">
    <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
    <script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <%--    <div id="DIV_81">
		<div id="DIV_82">			
			<div id="DIV_138" style="height:600px;">
				<div id="DIV_139" style="height: 500px;width: 100%;">
					<h1>
					    Facebook Login
					</h1>
                    <br />
                    <br />     
                    <p>Facebook login code here</p>
				</div>
			<div id="DIV_83" style="text-align:right;">				
				<div id="DIV_129" style="float:right;">
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
	</div>--%>
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
                alert(response.authResponse.accessToken);
                $.ajax({
                    method: "POST",
                    url: "FacebookLogin.aspx/PostAuthToken",
                    contentType: "application/json",
                    data: JSON.stringify({ authToken: response.authResponse.accessToken, fbUserId: response.authResponse.userID }),
                    success: function(data) {
                        alert(data.d);
                        if (data.d > 0)
                            window.location.href = "PostFacebookFetch.aspx?ResponseId=" + data.d;
                        else {
                            alert("Something went wrong.");
                        }
                    }
                }).done(function () {
                    
                }).error(function() {
                    alert("BPGJ");
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
                appId: '590761764360613',
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

    <!--
  Below we include the Login Button social plugin. This button uses
  the JavaScript SDK to present a graphical Login button that triggers
  the FB.login() function when clicked.
-->

    <fb:login-button scope="public_profile,email,user_friends" onlogin="checkLoginState();">
    </fb:login-button>

    <div id="status">
    </div>
</asp:content>

