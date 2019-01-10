<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Chapman.Pages.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h1>Admin Page, Welcome!</h1>
        <br />
        <br />
        Users Online:
        <asp:Label runat="server" ID="onlineUsers"></asp:Label>
        <br />
        <br />
        Total Number of Visitors:
        <asp:Label runat="server" ID="totalVisitors"></asp:Label>
        <asp:HyperLink runat="server" Text="Trace Report" NavigateUrl="~/Pages/TraceReport.aspx"></asp:HyperLink>
        <br />
    </div>
</asp:Content>
