<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Input2.aspx.cs" Inherits="Proj1_S7.Input2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title></title>
     <style type="text/css">
          label {
               width: 120px;
               float: left;
          }
     </style>
</head>
<body>
     <form id="form1" runat="server">
          <div>
               <h2>Input infor</h2>
               <p>
                    <label>Name</label>
                    <asp:TextBox ID="name" runat="server" Font-Names="#9Slide05 Dancing Script" ForeColor="#0033CC"></asp:TextBox>
               </p>
               <p>
                    <label>Age</label>
                    <asp:TextBox ID="age" runat="server"></asp:TextBox>
               </p>
               <p>
                    <label>Gender</label>
                    <asp:RadioButtonList ID="gender" runat="server">
                         <asp:ListItem Value="male" Text="Male" />
                         <asp:ListItem Value="female" Text="Female" />
                    </asp:RadioButtonList>
               </p><p>
                    <label>Address</label>
                    <asp:DropDownList ID="address" runat="server" size="3">
                         <asp:ListItem Value="hn" Text="Ha noi" />
                         <asp:ListItem Value="qn" Text="Quang ninh" />
                         <asp:ListItem Value="hp" Text="Hai phong" />
                    </asp:DropDownList>
               </p><p>
                    <label>Subject</label>
                    <asp:CheckBoxList ID="subject" runat="server">
                         <asp:ListItem Value="tmdt" Text="Thuong mai dien tu" />
                         <asp:ListItem Value="ltweb" Text="Lap trinh web" />
                         <asp:ListItem Value="csdl" Text="Co so du lieu" />
                    </asp:CheckBoxList>
               </p>
             <p>
                  <asp:Button ID="b1" Text="Send" runat="server" PostBackUrl="~/Output2.aspx"  />
                  <asp:Button ID="b2" Text="Reset" runat="server" />
             </p>               
               <asp:Label ID="tieude" runat="server" Font-Size="Large" ForeColor="Blue"/><br />
               <asp:Label ID="lblname" runat="server" /><br />
               <asp:Label ID="lblgender" runat="server" /><br />
               <asp:Label ID="lblage" runat="server" /><br />
               <asp:Label ID="lbladdress" runat="server" /><br />
               <asp:Label ID="lblsubject" runat="server" /><br />

          </div>

     </form>
</body>
</html>
