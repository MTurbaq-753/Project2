<%@ Page Title="" Language="C#" MasterPageFile="~/SAdmin.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="IS424_Project.admin.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div class="jumbotron">
        <h1>Questions Details</h1>
    </div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" Width="100%" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="QuestionName" HeaderText="QuestionName" SortExpression="QuestionName" />
            <asp:BoundField DataField="Op1" HeaderText="Op1" SortExpression="Op1" />
            <asp:BoundField DataField="Op2" HeaderText="Op2" SortExpression="Op2" />
            <asp:BoundField DataField="Op3" HeaderText="Op3" SortExpression="Op3" />
            <asp:BoundField DataField="Op4" HeaderText="Op4" SortExpression="Op4" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ExamDBConnectionString %>" DeleteCommand="DELETE FROM [Question] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Question] ([QuestionName], [Op1], [Op2], [Op3], [Op4]) VALUES (@QuestionName, @Op1, @Op2, @Op3, @Op4)" SelectCommand="SELECT * FROM [Question]" UpdateCommand="UPDATE [Question] SET [QuestionName] = @QuestionName, [Op1] = @Op1, [Op2] = @Op2, [Op3] = @Op3, [Op4] = @Op4 WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="QuestionName" Type="String" />
            <asp:Parameter Name="Op1" Type="String" />
            <asp:Parameter Name="Op2" Type="String" />
            <asp:Parameter Name="Op3" Type="String" />
            <asp:Parameter Name="Op4" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="QuestionName" Type="String" />
            <asp:Parameter Name="Op1" Type="String" />
            <asp:Parameter Name="Op2" Type="String" />
            <asp:Parameter Name="Op3" Type="String" />
            <asp:Parameter Name="Op4" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
