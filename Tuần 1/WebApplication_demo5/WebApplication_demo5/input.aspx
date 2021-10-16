<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="input.aspx.cs" Inherits="WebApplication_demo5.input" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" action="output.aspx">
        <h2 style="color: blue">Thông tin nhân viên</h2>
        <div>
            <p>
                  <label>Mã nhân viên</label>
                   <input type="text" name="ma"/>
            </p>
            <p>
                  <label>Họ tên</label>
                   <input type="text" name="name"/>
            </p>
            <p>
                  <label>Gender</label>
                   <input type="radio" name="gender" value="male"/>Nam
                   <input type="radio" name="gender" value="female"/>Nữ
            </p>
            
            <p>
                <label>Ngoại ngữ</label>
                <input type="checkbox" name="lang" value="Anh"/>Anh
                <input type="checkbox" name="lang" value="Phap"/>Pháp
                <input type="checkbox" name="lang" value="Nga"/>Nga
            </p>

            

            <p>
                  <label>Bậc lương</label>
                   <input type="text" name="bl"/>
            </p>

            <p>
                  <label>Số ngày công</label>
                   <input type="text" name="snc"/>
            </p>

            <p>
                  <label>Chức vụ</label>
                   <select name="chucVu">
                       <option value="tp">Trường phòng</option>
                       <option value="gd">Giám đốc</option>
                       <option value="nv">Nhân viên</option>
                   </select>
            </p>
            <p>
                <input style="margin-left: 120px" type="submit" name="sb" value="Tính lương" />
                <input type="reset" name="rs" value="Nhập lại" />
            </p>
        </div>
    </form>
</body>
</html>
