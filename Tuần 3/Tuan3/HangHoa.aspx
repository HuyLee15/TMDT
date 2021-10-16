<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HangHoa.aspx.cs" Inherits="Tuan3.HangHoa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server">Danh sách hàng</asp:Label><br />
            <asp:DropDownList runat="server" ID="hang" size="6">
                <asp:ListItem>SSD 512GB</asp:ListItem>
                <asp:ListItem>Monitor</asp:ListItem>
                <asp:ListItem>Screen</asp:ListItem>
                <asp:ListItem>Keyboard</asp:ListItem>
                <asp:ListItem>Mouse</asp:ListItem>
                <asp:ListItem>RAM</asp:ListItem>
            </asp:DropDownList><br />
            <asp:Button runat="server" PostBackUrl="~/MuaHang.aspx"  Text="Mua"/>
        </div>
    </form>
</body>
</html>
