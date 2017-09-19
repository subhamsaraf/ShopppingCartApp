<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminAccess.aspx.cs" Inherits="DBAPage.AdminAccess" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="Grid_List" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="p_id" DataSourceID="SqlDataSource2" Font-Size="Larger" Height="356px" Width="1141px" ShowFooter="True">
            <Columns>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
                <asp:TemplateField HeaderText="p_id" SortExpression="p_id">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("p_id") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("p_id") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:LinkButton ID="lbInsert" ValidationGroup="Insert"
                            runat="server" OnClick="lbInsert_Click">Insert
                        </asp:LinkButton>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Name" SortExpression="Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEditName" runat="server"
                            ErrorMessage="Name is a required field"
                            ControlToValidate="TextBox1" Text="*" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertName" runat="server"
                            ErrorMessage="Name is a required field"
                            ControlToValidate="txtName" Text="*" ForeColor="Red"
                            ValidationGroup="Insert">
                        </asp:RequiredFieldValidator>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Price" SortExpression="Price">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEditPrice" runat="server"
                            ErrorMessage="City is a required field" Text="*"
                            ControlToValidate="TextBox2" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertPrice" runat="server"
                            ErrorMessage="Price is a required field"
                            ControlToValidate="txtPrice" Text="*" ForeColor="Red"
                            ValidationGroup="Insert">
                        </asp:RequiredFieldValidator>
                    </FooterTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:productDBConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [p_id] = @p_id" InsertCommand="INSERT INTO [Product] ([Name], [Price]) VALUES (@Name, @Price)" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [Name] = @Name, [Price] = @Price WHERE [p_id] = @p_id">
            <DeleteParameters>
                <asp:Parameter Name="p_id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="p_id" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Price" Type="Double" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Price" Type="Double" />
                <asp:Parameter Name="p_id" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <div>
        </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
