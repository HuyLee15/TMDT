<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cookie.aspx.cs" Inherits="Tuan3.cookie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%
                HttpCookie cookie = new HttpCookie("color");
                cookie.Value = "red";
                DateTime d = DateTime.Now;
                TimeSpan tsMinute = new TimeSpan(0, 1, 0, 0);
                cookie.Expires = d + tsMinute;
                Response.SetCookie(cookie);
            %>
            <a href="Display.aspx">Next</a>
        </div>
    </form>
</body>
</html>
