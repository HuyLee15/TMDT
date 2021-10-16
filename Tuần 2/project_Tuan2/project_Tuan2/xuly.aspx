<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="xuly.aspx.cs" Inherits="project_Tuan2.xuly" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%
                string act = Request["action"];
                if(act == "nhap")
                {
                    string masv = Request.Form["masv"];
                    string hoten = Request.Form["hoten"];
                    string tuoi = Request.Form["tuoi"];
                    Response.Write($"<h1> Da them vao sinh vien </h1>");
                    Response.Write($"Ma SV: {masv} <br />");
                    Response.Write($"Ho ten: {hoten} <br />");
                    Response.Write($"Tuoi: {tuoi} <br />");
                }
                else if(act == "xoa")
                {
                    string masv = Request.Form["masv"];
                    Response.Write($"Da xoa sinh vien co ma sv la {masv}");
                }
                else
                {
                    Server.Transfer("xem.aspx");
                }
            %>
        </div>
    </form>
</body>
</html>
