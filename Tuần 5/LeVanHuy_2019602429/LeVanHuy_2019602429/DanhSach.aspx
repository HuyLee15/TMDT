<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DanhSach.aspx.cs" Inherits="LeVanHuy_2019602429.DanhSach" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Danh Sach</h2>

        </div>
        <p>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="masv" DataSourceID="SqlDataSource1" Width="734px">
                <Columns>
                    <asp:BoundField DataField="masv" HeaderText="Mã sinh viên" InsertVisible="False" ReadOnly="True" SortExpression="masv" />
                    <asp:BoundField DataField="hoten" HeaderText="Họ tên" SortExpression="hoten" />
                    <asp:BoundField DataField="diachi" HeaderText="Địa chỉ" SortExpression="diachi" />
                    <asp:BoundField DataField="anh" HeaderText="Ảnh" SortExpression="anh" />
                    <asp:BoundField DataField="dienthoai" HeaderText="Điện thoại" SortExpression="dienthoai" />
                    <asp:BoundField DataField="malop" HeaderText="Mã lớp" SortExpression="malop" />
                    <asp:BoundField DataField="tenlop" HeaderText="Tên Lớp" SortExpression="tenlop" />
                    <asp:TemplateField ShowHeader="True" HeaderText="Xóa">
                        <ItemTemplate>
                            &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" 
                                CommandName="Delete" Text="Xóa" OnClientClick="return confirm('Bạn có chắc muốn xóa không')"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:HyperLinkField DataNavigateUrlFields="masv" DataNavigateUrlFormatString="Sua.aspx?masv={0}" Text="Edit" HeaderText="Edit" />
                </Columns>
            </asp:GridView>
            <br /><br />
            <asp:Button runat="server" Text="Thêm sinh viên" PostBackUrl="~/Them.aspx" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:truonghocdb1ConnectionString %>" DeleteCommand="DELETE FROM [sinhvien] WHERE [masv] = @masv" InsertCommand="INSERT INTO [sinhvien] ([hoten], [diachi], [dienthoai], [malop], [anh]) VALUES (@hoten, @diachi, @dienthoai, @malop, @anh)" SelectCommand="select masv, hoten, diachi, anh, dienthoai, sinhvien.malop, tenlop from sinhvien inner join lophoc on sinhvien.malop = lophoc.malop" UpdateCommand="UPDATE [sinhvien] SET [hoten] = @hoten, [diachi] = @diachi, [dienthoai] = @dienthoai, [malop] = @malop, [anh] = @anh WHERE [masv] = @masv">
                <DeleteParameters>
                    <asp:Parameter Name="masv" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="hoten" Type="String" />
                    <asp:Parameter Name="diachi" Type="String" />
                    <asp:Parameter Name="dienthoai" Type="String" />
                    <asp:Parameter Name="malop" Type="Int32" />
                    <asp:Parameter Name="anh" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="hoten" Type="String" />
                    <asp:Parameter Name="diachi" Type="String" />
                    <asp:Parameter Name="dienthoai" Type="String" />
                    <asp:Parameter Name="malop" Type="Int32" />
                    <asp:Parameter Name="anh" Type="String" />
                    <asp:Parameter Name="masv" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
    </form>
</body>
</html>
