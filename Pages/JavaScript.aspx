<%@ Page Title="" Language="C#" MasterPageFile="~/MainSite.Master" AutoEventWireup="true" CodeBehind="JavaScript.aspx.cs" Inherits="IS424_Project.Pages.JavaScript" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="jumbotran">
            <h2>Java Script Questions</h2>
        </div>
        <asp:GridView ID="GridView1" HeaderStyle-BackColor="#3AC0F2" Width="100%" HeaderStyle-ForeColor="White"
            RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
            runat="server" AutoGenerateColumns="false" AllowPaging="true" OnPageIndexChanging="OnPageIndexChanging" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Questions" />
                <asp:BoundField DataField="title" HeaderText="Question Description" />

                <asp:BoundField DataField="answer1" HeaderText="Choice 1" />
                <asp:BoundField DataField="answer2" HeaderText="Choice 2" />
                <asp:BoundField DataField="answer3" HeaderText="Choice 3" />
                <asp:BoundField DataField="answer4" HeaderText="Choice 4" />
            </Columns>
        </asp:GridView>
        <hr />
    </div>
    
</asp:Content>
