<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Them.aspx.cs" Inherits="LeVanHuy_2019602429.Them" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Thêm sinh viên</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Thêm sinh viên</h2>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="masv" DataSourceID="SqlDataSource1" Width="346px" DefaultMode="Insert" OnItemInserted="InsertedCmd" OnPageIndexChanging="FormView1_PageIndexChanging">
                <InsertItemTemplate>
                    Họ Tên:
                    <asp:TextBox ID="hotenTextBox" runat="server" Text='<%# Bind("hoten") %>' />
                    <br />
                    Địa Chỉ:
                    <asp:TextBox ID="diachiTextBox" runat="server" Text='<%# Bind("diachi") %>' />
                    <br />
                    Điện Thoại:
                    <asp:TextBox ID="dienthoaiTextBox" runat="server" Text='<%# Bind("dienthoai") %>' />
                    <br />
                    Mã Lớp:
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="tenlop" DataValueField="malop" SelectedValue='<%# Bind("malop") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:truonghocdb1ConnectionString %>" SelectCommand="SELECT * FROM [lophoc]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:truonghocdb1ConnectionString %>" SelectCommand="SELECT * FROM [lophoc]"></asp:SqlDataSource>
                    <br />
                    Ảnh:
                    <asp:TextBox ID="anhTextBox" runat="server" Text='<%# Bind("anh") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:truonghocdb1ConnectionString %>" InsertCommand="INSERT INTO [sinhvien] ([hoten], [diachi], [dienthoai], [malop], [anh]) VALUES (@hoten, @diachi, @dienthoai, @malop, @anh)" SelectCommand="SELECT * FROM [sinhvien]">
                
                <InsertParameters>
                    <asp:Parameter Name="hoten" Type="String" />
                    <asp:Parameter Name="diachi" Type="String" />
                    <asp:Parameter Name="dienthoai" Type="String" />
                    <asp:Parameter Name="malop" Type="Int32" />
                    <asp:Parameter Name="anh" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="errmsg" runat="server" ForeColor="Red"></asp:Label>
            <br />
            <asp:Button runat="server" Text="Danh sách sinh viên" PostBackUrl="~/DanhSach.aspx" />
        </div>
    </form>
</body>
</html>
