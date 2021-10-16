<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="project_Tuan2.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>
                <label>Nhap vao username: </label>
                <asp:TextBox ID="user" runat="server"></asp:TextBox>
            </p>
            <p>
                <label>Nhap vao password: </label>
                <asp:TextBox ID="pass" runat="server" TextMode="Password"></asp:TextBox>
            </p>
            <p>
                <asp:Button ID="bt" Text="dang nhap" runat="server" PostBackUrl="~/controllers.aspx" />
                <input type="reset" value="reset"></input>
            </p>
        </div>
    </form>
</body>
</html>
