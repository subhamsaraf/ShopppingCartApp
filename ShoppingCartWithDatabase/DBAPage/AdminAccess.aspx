<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminAccess.aspx.cs" Inherits="DBAPage.AdminAccess" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="p_id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="p_id" HeaderText="p_id" ReadOnly="True" SortExpression="p_id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineStoreConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [p_id] = @p_id" InsertCommand="INSERT INTO [Product] ([p_id], [Name], [Price]) VALUES (@p_id, @Name, @Price)" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [Name] = @Name, [Price] = @Price WHERE [p_id] = @p_id">
            <DeleteParameters>
                <asp:Parameter Name="p_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="p_id" Type="Int32" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Price" Type="Double" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Price" Type="Double" />
                <asp:Parameter Name="p_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add To DataBase" />
        </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
