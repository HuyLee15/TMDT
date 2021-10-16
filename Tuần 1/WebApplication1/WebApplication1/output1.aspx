<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="output1.aspx.cs" Inherits="WebApplication1.output1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%
                string manv = Request.Form["manv"];
                string hoten = Request.Form["hoten"];
                string gt = Request.Form["gender"];
                string language = Request.Form["language"];
                string bacluong = Request.Form["salary"];
                string ngaycong = Request.Form["workdays"];
                string chucvu = Request.Form["chucvu"];
                int phucap = 0;
                if (chucvu == "Trưởng Phòng") phucap = 500000;
                else if (chucvu == "Phó Phòng") phucap = 300000;
                else phucap = 100000;
                int thuong = 0;
                if (int.Parse(ngaycong) > 25) thuong = (int.Parse(ngaycong) - 25) * 200000;
                int tongluong = 800000 * int.Parse(bacluong) + phucap + thuong;
            %>

            <table border="1" cellspacing="0" cellpadding="5px">
                <tr>
                    <td>Mã Nhân Viên: </td>
                    <td><%=  manv%></td>
                </tr>
                <tr>
                    <td>Họ Tên: </td>
                    <td><%= hoten %></td>
                </tr>
                <tr>
                    <td>Giới tính: </td>
                    <td><%= gt %></td>
                </tr>
                <tr>
                    <td>Ngoại ngữ: </td>
                    <td><%= language %></td>
                </tr>
                <tr>
                    <td>Bậc lương: </td>
                    <td><%= bacluong %></td>
                </tr>
                <tr>
                    <td>Lương cơ bản: </td>
                    <td>800000</td>
                </tr>
                <tr>
                    <td>Ngày công: </td>
                    <td><%= ngaycong %></td>
                </tr>
                <tr>
                    <td>Chức vụ: </td>
                    <td><%= chucvu %></td>
                </tr>
                <tr>
                    <td>Phụ Cấp: </td>
                    <td><%= phucap %></td>
                </tr>
                <tr>
                    <td>Thưởng: </td>
                    <td><%= thuong %></td>
                </tr>
                <tr>
                    <td>Tổng lương: </td>
                    <td><%= tongluong %></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
