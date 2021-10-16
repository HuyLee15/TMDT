<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="input1.aspx.cs" Inherits="WebApplication1.input1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" action="output1.aspx">
        <div>
            <h2 style="color:blue;">Thông tin nhân viên</h2>
            <table>
                <tr>
                    <td>Mã nhân viên: </td>
                    <td><input type="text" name="manv"/></td>
                </tr>
                <tr>
                    <td>Họ Tên: </td>
                    <td><input type="text" name="hoten" /></td>
                </tr>
                <tr>
                    <td>Giới Tính: </td>
                    <td>
                        <input type="radio" name="gender" value="nam"/>Nam 
                        <input type="radio" name="gender" value="nu" />Nu
                    </td>
                </tr>
                <tr>
                    <td>Ngoại Ngữ: </td>
                    <td>
                        <input type="checkbox" name="language" value="Anh" />Anh 
                        <input type="checkbox" name="language" value="Phap" />Phap
                        <input type="checkbox" name="language" value="Nga" />Nga
                    </td>
                </tr>
                <tr>
                    <td>Bậc Lương: </td>
                    <td><input type="text" name="salary" /></td>
                </tr>
                <tr>
                    <td>Số ngày công: </td>
                    <td><input type="text" name="workdays" /></td>
                </tr>
                <tr>
                    <td>Chức vụ: </td>
                    <td>
                        <select name="chucvu">
                            <option>Trưởng Phòng</option>
                            <option>Phó Phòng</option>
                            <option>Nhân Viên</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Tinh luong" />
                        <input type="reset" value="Nhap lai" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
