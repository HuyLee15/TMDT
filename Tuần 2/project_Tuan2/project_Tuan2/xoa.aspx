<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="xoa.aspx.cs" Inherits="project_Tuan2.xoa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Xoa theo Ma SV: </h1>
            <p>
                <label>Nhap vao Ma SV can xoa: </label>
                <asp:TextBox ID="masv" runat="server"></asp:TextBox>
            </p>
            <input type="hidden" name="action" value="xoa" />
            <asp:Button ID="send" Text="Send" runat="server" PostBackUrl="~/xuly.aspx" />
        </div>
    </form>
</body>
</html>
