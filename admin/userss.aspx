<%@ Page Title="" Language="C#" MasterPageFile="~/SAdmin.Master" AutoEventWireup="true" CodeBehind="userss.aspx.cs" Inherits="IS424_Project.admin.userss" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div class="jumbotron">
        <h1>
            Users Info.
        </h1>
    </div>
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" Width="100%" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="user_id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="user_id" HeaderText="user_id" InsertVisible="False" ReadOnly="True" SortExpression="user_id" />
            <asp:BoundField DataField="user_fname" HeaderText="user_fname" SortExpression="user_fname" />
            <asp:BoundField DataField="user_lname" HeaderText="user_lname" SortExpression="user_lname" />
            <asp:BoundField DataField="user_email" HeaderText="user_email" SortExpression="user_email" />
            <asp:BoundField DataField="user_password" HeaderText="user_password" SortExpression="user_password" />
            <asp:BoundField DataField="role" HeaderText="role" SortExpression="role" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ExamDBConnectionString %>" DeleteCommand="DELETE FROM [users] WHERE [user_id] = @user_id" InsertCommand="INSERT INTO [users] ([user_fname], [user_lname], [user_email], [user_password], [role]) VALUES (@user_fname, @user_lname, @user_email, @user_password, @role)" SelectCommand="SELECT * FROM [users]" UpdateCommand="UPDATE [users] SET [user_fname] = @user_fname, [user_lname] = @user_lname, [user_email] = @user_email, [user_password] = @user_password, [role] = @role WHERE [user_id] = @user_id">
        <DeleteParameters>
            <asp:Parameter Name="user_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="user_fname" Type="String" />
            <asp:Parameter Name="user_lname" Type="String" />
            <asp:Parameter Name="user_email" Type="String" />
            <asp:Parameter Name="user_password" Type="String" />
            <asp:Parameter Name="role" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="user_fname" Type="String" />
            <asp:Parameter Name="user_lname" Type="String" />
            <asp:Parameter Name="user_email" Type="String" />
            <asp:Parameter Name="user_password" Type="String" />
            <asp:Parameter Name="role" Type="String" />
            <asp:Parameter Name="user_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
