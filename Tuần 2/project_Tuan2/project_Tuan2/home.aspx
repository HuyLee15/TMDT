<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="project_Tuan2.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo hiddenfield</h1>
            <p>
                <asp:Button ID="them" runat="server" Text="Them" PostBackUrl="~/them.aspx" />
                <asp:Button ID="xoa" runat="server" Text="Xoa" PostBackUrl="~/xoa.aspx" />
                <asp:Button ID="xem" runat="server" Text="Xem" PostBackUrl="~/xuly.aspx?action=xem" />
            </p>
        </div>
    </form>
</body>
</html>
