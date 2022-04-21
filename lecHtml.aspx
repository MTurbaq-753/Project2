<%@ Page Title="" Language="C#" MasterPageFile="~/MainSite.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="IS424_Project.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <hr />

<h1 class="intro">
       1- Introduction to HTML
    </h1>

    <center>
        <video class="video" controls width="600" height="400" autoplay muted>
            <source src="videos/httml.mp4" type="video/mp4" />
            Your browser does not support the video tag.
        </video>
    </center>
    <hr />

        <center>
            <h2>2- Creating the first web page</h2>
            <video class="video" controls width="600" height="400">
                <source src="videos/firsthtml.mp4" type="video/mp4" />
                Your browser does not support the video tag.
            </video>
            </center>

        <hr />

</asp:Content>
