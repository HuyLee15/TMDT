<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MuaHang.aspx.cs" Inherits="Tuan3.MuaHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Ban da chon mua: </h2>
            <%
                List<string> ds;
                if(Session["giohang"] == null)
                {
                    ds = new List<string>();
                    Session["giohang"] = ds;
                }
                else
                {
                    ds = (List<string>)Session["giohang"];
                }
                string hang = Request.Form["hang"];
                if(hang != null && ds.Contains(hang) == false)
                {
                    ds.Add(hang);
                }
                Session["giohang"] = ds;
                if(ds.Count > 0)
                {
                    foreach(string item in ds)
                    {
                        Response.Write(item + "<br/>");
                    }
                }


                %><br />
            <a href="HangHoa.aspx">Mua tiep</a>
            <a href="DatMua.aspx">Dat mua</a>
        </div>
    </form>
</body>
</html>
