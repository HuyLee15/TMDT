<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="input2.aspx.cs" Inherits="WebApplication1.input2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        label{
            width:120px;
            float: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2 style="color:blue">Thong tin nhanh vien </h2>
            <p>
                <label>Ma nhan vien:</label>
                <asp:TextBox ID="manv" runat="server"></asp:TextBox>
            </p>
            <p>
                <label>Ho ten: </label>
                <asp:TextBox ID="hoten" runat="server"></asp:TextBox>
            </p>
            <p>
                <label>Gioi tinh: </label>
                <asp:RadioButtonList ID="gt" runat="server">
                    <asp:ListItem Text="Nam" Value="nam"></asp:ListItem>
                    <asp:ListItem Text="Nu" Value="Nu"></asp:ListItem>
                </asp:RadioButtonList>
            </p>
            <p>
                <label>Ngoai ngu: </label>
                <asp:CheckBoxList ID="language" runat="server">
                    <asp:ListItem Text="Anh" Value="Anh"></asp:ListItem>
                    <asp:ListItem Text="Phap" Value="Phap"></asp:ListItem>
                    <asp:ListItem Text="Nga" Value="Nga"></asp:ListItem>
                </asp:CheckBoxList>
            </p>
            <p>
                <label>Bac luong: </label>
                <asp:TextBox ID="luong" runat="server"></asp:TextBox>
            </p>
            <p>
                <label>So ngay cong: </label>
                <asp:TextBox ID="ngaycong" runat="server"></asp:TextBox>
            </p>
            <p>
                <label>Chuc vu: </label>
                <asp:ListBox ID="list" runat="server">
                    <asp:ListItem Text="Truong phong" Value="Truong phong"></asp:ListItem>
                    <asp:ListItem Text="Pho Phong" Value="Pho phong"></asp:ListItem>
                    <asp:ListItem Text="Nhan vien" Value="Nhan vien"></asp:ListItem>
                </asp:ListBox>
            </p>
            <p>
                <asp:Button runat="server" Text="Tinh luong" PostBackUrl="~/output2.aspx" />
                <asp:Button runat="server" Text="reset"/>
            </p>
        </div>
    </form>
</body>
</html>
