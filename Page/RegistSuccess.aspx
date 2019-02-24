<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistSuccess.aspx.cs" Inherits="WebApplication1.Page.RegistSuccess" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>注册成功</title>
    <style type="text/css">
        .style1
        {
            width: 102px;
        }
    </style>
    <script>
        var myCount = 3;
        function count() {
            document.getElementById("test").innerText = myCount + "秒后自动跳转";
            myCount--;
            if (myCount == 0) {
                self.location = 'Login.aspx';
                return;

            }
            setTimeout("count()", 1000);
        }
    </script>
</head>
<body onload="setTimeout('count()',10);">
    <form id="form1" runat="server">
       <div id="test"></div>
    </form>
</body>
</html>