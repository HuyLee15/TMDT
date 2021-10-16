<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tainguyen.aspx.cs" Inherits="project_Tuan2.tainguyen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Welcom <%= Request.Form["user"] %> to file tai nguyen</h2>
        </div>
    </form>
</body>
</html>
