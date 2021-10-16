<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DatMua.aspx.cs" Inherits="Tuan3.DatMua" %>
    
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Ban da dat mua: </h2>
            <table width="50%">
                <tr>
                    <td>Thu tu</td>
                    <td>Ten hang</td>
                </tr>
            <%
                    List<string> ds = (List<string>)Session["giohang"];
                    int sl = 0;
                    foreach(string item in ds)
                    {
                        %>
                    <tr>
                    <td><%=sl+1%></td>
                    <td><%=item%></td>
                </tr>
                <%
                        sl++;
                    }
            %>
                </table>
            <p>So luong hang ban dat la: <%=ds.Count %></p>
            <%
                Session.Remove("giohang");
                %>
            <asp:Button runat="server" PostBackUrl="~/HangHoa.aspx" Text="Mua tiep" />
        </div>
    </form>
</body>
</html>
