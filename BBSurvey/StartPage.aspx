<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StartPage.aspx.cs" Inherits="BBSurvey.StartPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Social ties - Behaviour study</title>
    <link href="Style/SurveyStyleSheet.css" rel="stylesheet" />
    <style>
    
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 1210px;border: 1px solid;border-color: gray;text-align: center;">
        <div style="width: 1000px;border: 1px solid;border-color: gray;padding: 50px;">
            <h1>Instructions</h1>
            <h2>Purpose of study</h2>
            <p>To get your opinion about a new movie streaming service </p>   
            
            <h2>Compensation</h2>
            <p>As thanks for your time, all participants will enter a draw for an Apple iPad/Gift card and a number of other attractive prizes.  </p>   
            
            <h2>Contact Info</h2>
            <p>If you have any questions or concerns in regard to this survey, please feel free to contact XX</p>   
            
            <h2>Duration and flow</h2>
            <p>
                You will be asked to look at a website and then answer a couple of questions about your experience with the website. Should not take more than 5 minutes. In the beginning of the survey you will be asked (via a Facebook pop-up) for permission for this survey to get access to your list of friends and your basic profile info. The information will only be used in this survey, and will, like the rest of the survey, be treated with confidentiality. And we will not post anything on Facebook, neither on your own wall or your friends’. This permission will be deleted after 1 month of your completion of the survey. 
            </p>   
        </div>
        <div style="width: 100%;text-align: right;padding-right: 15px;margin-right: 30px;">
            <asp:linkbutton onclick="OnNextClick" id="linkNext" runat="server" cssclass="A_131">Next</asp:linkbutton>
        </div>    
    </div>
    </form>
</body>
</html>
