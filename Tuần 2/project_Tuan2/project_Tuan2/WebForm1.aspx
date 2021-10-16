<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="project_Tuan2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        label{
            width: 120px;
            float:left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>
                <label>Name: </label>
                <asp:TextBox ID="name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="vname"
                    ControlToValidate="name"
                    runat="server"
                    ErrorMessage="Ban khong duoc de trong o nay"
                    ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="vname2" ControlToValidate="name" ValidationExpression="[a-zA-Z][a-zA-Z ]+"  runat="server"
                    ErrorMessage="Ten khong duoc co ky tu dac biet va chu so"
                    ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
            </p>
            <p>
                <label>Age: </label>
                <asp:TextBox ID="age" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="vage"
                    ControlToValidate="name"
                    runat="server"
                    ErrorMessage="Ban khong duoc de trong o nay"
                    ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="vage2" runat="server" ControlToValidate="age" Type="Integer" MinimumValue="12" MaximumValue="65"
                    ErrorMessage="Ban phai nhap tuoi la so va lon hon 12"
                    ForeColor="Red" Display="Dynamic"></asp:RangeValidator>
            </p>
            <p>
                <label>Username: </label>
                <asp:TextBox ID="user" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="vuser"
                    ControlToValidate="name"
                    runat="server"
                    ErrorMessage="Ban khong duoc de trong o nay"
                    ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="vuser2" runat="server" ControlToValidate="user" ValidationExpression="[a-zA-Z][a-zA-Z0-z]{4,50}"
                    ErrorMessage="Ban phai nhap vao username toi thieu 5 ky tu"
                    ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
            </p>
            <p>
                <label>Password: </label>
                <asp:TextBox ID="pass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="vpass"
                    ControlToValidate="name"
                    runat="server"
                    ErrorMessage="Ban khong duoc de trong o nay"
                    ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="vpass2" runat="server" ControlToValidate="pass" ValidationExpression=".{6,}"
                    ErrorMessage="Password toi thieu 6 ky tu"
                    ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
            </p>
            <p>
                <label>Re-Password: </label>
                <asp:TextBox ID="repass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="vrepass1" runat="server" ControlToCompare="pass" ControlToValidate="repass"
                    ErrorMessage="Re-Password phai trung voi password"
                    ForeColor="Red" Display="Dynamic"></asp:CompareValidator>
            </p>
            <p>
                <label>Phone: </label>
                <asp:TextBox ID="phone" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="vphone"
                    ControlToValidate="name"
                    runat="server"
                    ErrorMessage="Ban khong duoc de trong o nay"
                    ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="vphone2" runat="server" ControlToValidate="phone" ValidationExpression="\d{3}-\d{3}-\d{4}"
                    ErrorMessage="Phone phai co dinh dang xxx-xxx-xxxx va la so"
                    ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
            </p>
            <p>
                <label>Email: </label>
                <asp:TextBox ID="email" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="vemail"
                    ControlToValidate="name"
                    runat="server"
                    ErrorMessage="Ban khong duoc de trong o nay"
                    ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="vemail2" runat="server" ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    ErrorMessage="Email phai dung dinh dang"
                    ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
            </p>
            <p>
                <asp:Button ID="b1" Text="submit" runat="server" PostBackUrl="~/WebForm2.aspx" />
                <input type="reset" value="reset" />
            </p>
        </div>
    </form>
</body>
</html>
