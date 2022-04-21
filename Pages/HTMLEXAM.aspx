<%@ Page Title="" Language="C#" MasterPageFile="~/MainSite.Master" AutoEventWireup="true" CodeBehind="HTMLEXAM.aspx.cs" Inherits="IS424_Project.Pages.HTMLEXAM" %>

<%@ Register Src="~/Pages/HTMLExam.ascx" TagPrefix="uc1" TagName="HTMLExam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <uc1:HTMLExam runat="server" ID="HTMLExam" />
    </div>
</asp:Content>
