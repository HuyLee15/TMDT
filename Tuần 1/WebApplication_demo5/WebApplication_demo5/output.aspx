<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="output.aspx.cs" Inherits="WebApplication_demo5.output" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%
                string maNV = Request.Form["ma"];
                string hoTen = Request.Form["name"];
                string gioiTinh = Request.Form["gender"];
                string ngoaiNgu = Request.Form["lang"];
                string bl = Request.Form["bl"];
                int luongCoBan = 800000;
                string ngayCong = Request.Form["snc"];
                string chucVu = Request.Form["chucVu"];
                int phuCap = 0;
                if (chucVu == "nv")
                {
                    phuCap = 100000;
                } 
                else if (chucVu == "gd")
                {
                    phuCap = 500000 ;
                } 
                else
                {
                    phuCap = 300000;
                }
                int thuong = 0;
                if (Int32.Parse(ngayCong) > 25)
                {
                    for (var i = 0; i< Int32.Parse(ngayCong)-25; i++ )
                    {
                        thuong += 200000;
                    }
                }
                int tong = luongCoBan * Int32.Parse(bl) + thuong + phuCap;
            %>
            <h2>Tính lương nhân viên</h2>
            <table style="width:50%">  
                <tr>
                    <td>Mã nhân viên</td>
                    <td><%= maNV %></td>
                </tr>
                <tr>
                    <td>Họ tên</td>
                    <td><%= hoTen %></td>
                </tr>
                <tr>
                    <td>Giới tính</td>
                    <td><%= gioiTinh %></td>
                </tr>
                <tr>
                    <td>Ngoại ngữ</td>
                    <td><%= ngoaiNgu %></td>
                </tr>
                <tr>
                    <td>Bậc lương</td>
                    <td><%= bl %></td>
                </tr>
                <tr>
                    <td>Lương cơ bản</td>
                    <td><%= luongCoBan %></td>
                </tr>
                <tr>
                    <td>Ngày công</td>
                    <td><%= ngayCong %></td>
                </tr>
                <tr>
                    <td>Chức vụ</td>
                    <td><%= chucVu %></td>
                </tr>
                <tr>
                    <td>Phụ cấp</td>
                    <td><%= phuCap %></td>
                </tr>
                <tr>
                    <td>Thưởng</td>
                    <td><%= thuong %></td>
                </tr>
                <tr>
                    <td>Tổng lương</td>
                    <td><%= tong %></td>
                </tr>
                
            </table>
        </div>
    </form>
</body>
</html>
