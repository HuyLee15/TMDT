<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Input.aspx.cs" Inherits="Proj1_S7.Input" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Input student info</title>
     <style type="text/css">
          label{
               width:120px;
               float:left;
          }
     </style>
</head>
<body>
     <form id="form1" runat="server" action="Output.aspx">
          <div>
               <h2>Input Student Information</h2>
               <p>
                    <label>Name</label>
                    <input type="text" name="name" />
               </p>
               <p>
                    <label>Age</label>
                    <input type="text" name="age" />
               </p><p>
                    <label>Gender</label>
                    <input type="radio" name="gender" value="male" />Male
                    <input type="radio" name="gender" value="female" />Female
               </p><p>
                    <label>Address</label>
                    <select name="address">
                         <option value="hn">Hà nội</option>
                         <option value="hp">Hải phòng</option>
                         <option value="qn">Quảng ninh</option>
                    </select>
               </p><p>
                    <label>Subject</label>
                    <input type="checkbox" name="subject" value="tmdt"/>PT ứng dụng TMĐT
                    <input type="checkbox" name="subject" value="ltnet"/>Lập trình .net
                    <input type="checkbox" name="subject" value="csdl"/>Cơ sở dữ liệu
               </p>
               <p>
                    <input style="margin-left:120px" type="submit" name="sb" value="Send" />
                    <input type="reset" name="rs" value="Cancel" />
               </p>
          </div>
     </form>
</body>
</html>
