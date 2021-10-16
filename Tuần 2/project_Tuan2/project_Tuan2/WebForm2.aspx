<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="project_Tuan2.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        label{
            width: 120px;
            float:left;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div>
            <h2>WebForm 2 running!!!</h2>
            <p>
                <label>Name: </label>
                <label><%= Request.Form["name"] %></label><br />
                <label>Age: </label>
                <label><%= Request.Form["age"] %></label><br />
                <label>UserName: </label>
                <label><%= Request.Form["user"] %></label><br />
                <label>PassWord: </label>
                <label>Đã ẩn</label><br />
                <label>Phone: </label>
                <label><%= Request.Form["phone"] %></label><br />
                <label>Email: </label>
                <label><%= Request.Form["email"] %></label><br />
            </p>
        </div>
    </form>
</body>
</html>
