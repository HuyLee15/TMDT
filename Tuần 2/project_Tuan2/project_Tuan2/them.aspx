<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="them.aspx.cs" Inherits="project_Tuan2.them" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Nhap thong tin: </h1>
            <p>
                <label>Ma SV: </label>
                <asp:TextBox ID="masv" runat="server"></asp:TextBox>
            </p>
            <p>
                <label>Ho Ten: </label>
                <asp:TextBox ID="ten" runat="server"></asp:TextBox>
            </p>
            <p>
                <label>Tuoi: </label>
                <asp:TextBox ID="tuoi" runat="server"></asp:TextBox>
            </p>
            <input type="hidden" name="action" value="nhap" />
            <asp:Button ID="send" Text="Send" runat="server" PostBackUrl="~/xuly.aspx" />
        </div>
    </form>
</body>
</html>
