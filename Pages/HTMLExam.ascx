<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="HTMLExam.ascx.cs" Inherits="IS424_Project.Pages.HTMLExam" %>
<link href="../bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />

<div class="container">
    <div class="jumbotron">
        <h1 style="color:darkred;text-align:center;text-decoration:underline dashed">HTML EXAM</h1>
    </div>
    <hr />
    <div>
        <span style="font-weight:bold;text-decoration:underline">Question # 1 :-</span> <asp:Label ID="Q1" runat="server">What does HTML stand for?</asp:Label>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem Value="0">A. Hyper Text Markup Language</asp:ListItem>
            <asp:ListItem Value="1">B. Home Tool Markup Language</asp:ListItem>
            <asp:ListItem Value="2">C. Hyperlinks and Text Markup Language</asp:ListItem>
        </asp:RadioButtonList>
       <hr />
         <span style="font-weight:bold;text-decoration:underline">Question # 2 :-</span> <asp:Label ID="Label1" runat="server">Who is making the Web standards?</asp:Label>
        <asp:RadioButtonList ID="RadioButtonList2" runat="server">
            <asp:ListItem Value="0">A. The World Wide Web Consortium</asp:ListItem>
            <asp:ListItem Value="1">B. Mozilla</asp:ListItem>
            <asp:ListItem Value="2">C. Microsoft</asp:ListItem>
            <asp:ListItem Value="3">D. Google</asp:ListItem>
        </asp:RadioButtonList>
         <hr />
         <span style="font-weight:bold;text-decoration:underline">Question # 3 :-</span> 
        <asp:Label ID="Label2" runat="server">Choose the correct HTML element for the largest heading:</asp:Label>
        <asp:RadioButtonList ID="RadioButtonList3" runat="server">
            <asp:ListItem Value="0">A. h6</asp:ListItem>
            <asp:ListItem Value="1">B. heading</asp:ListItem>
            <asp:ListItem Value="2">C. head</asp:ListItem>
            <asp:ListItem Value="3">D. h1</asp:ListItem>
        </asp:RadioButtonList>
        <hr />
         <span style="font-weight:bold;text-decoration:underline">Question # 4 :-</span> 
        <asp:Label ID="Label3" runat="server">What is the correct HTML element for inserting a line break?</asp:Label>
        <asp:RadioButtonList ID="RadioButtonList4" runat="server">
            <asp:ListItem Value="0">A. lb</asp:ListItem>
            <asp:ListItem Value="1">B. br</asp:ListItem>
            <asp:ListItem Value="2">C. break</asp:ListItem>
        </asp:RadioButtonList>
         <hr />
         <span style="font-weight:bold;text-decoration:underline">Question # 5 :-</span> 
        <asp:Label ID="Label4" runat="server">What is the correct HTML for adding a background color?</asp:Label>
        <asp:RadioButtonList ID="RadioButtonList5" runat="server">
            <asp:ListItem Value="0">A. body bg="yellow"</asp:ListItem>
            <asp:ListItem Value="1">B. body style="background-color:yellow;"</asp:ListItem>
            <asp:ListItem Value="2">C. background>yellow</asp:ListItem>
             
        </asp:RadioButtonList>
        <div>
            <asp:Button CssClass="btn btn-success" ID="btnSubmit" Text="Submit" runat="server" PostBackUrl="~/Pages/ThankFullMsg.aspx" />
        </div>
    </div>
</div>