<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Output.aspx.cs" Inherits="Proj1_S7.Output" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title></title>
</head>
<body>
     <form id="form1" runat="server">
          <div>
               <%
                    string name = Request.Form["name"];
                    string age = Request.Form["age"];
                    string gender = Request.Form["gender"];
                    string address = Request.Form["address"];
                    string subject = Request.Form["subject"];
                    //Response.Write("<h2>Your infor:</h2>");
                    //Response.Write("Name:" + name + "<br />");
                    //Response.Write("Age:" + age + "<br />");                
               %>
               <table style="width: 50%">
                    <tr>
                         <td>Name</td>
                         <td><%= name%></td>
                         <%--Response.Write(name)--%>
                    </tr>
                    <tr>
                         <td>Age</td>
                         <td><%= age %></td>
                    </tr>
                    <tr>
                         <td>Gender</td>
                         <td><%= gender %></td>
                    </tr>
                    <tr>
                         <td>Address</td>
                         <td><%= address %></td>
                    </tr>
                    <tr>
                         <td>Subject</td>
                         <td><%= subject %></td>
                    </tr>
               </table>
               <hr />
               <h3>Number from 1 to 500</h3>
               <%
                    for (int i = 1; i < 501; i++)  //render
                    {
                         Response.Write(i + " ");
                    }
               %>
          </div>
     </form>
</body>
</html>
