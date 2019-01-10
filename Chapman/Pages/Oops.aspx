<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Oops.aspx.cs" Inherits="Chapman.Pages.Oops" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h1>Oops! Something went wrong!</h1>
        <br />
        <asp:Label runat="server" ID="errorLabel"></asp:Label>
    </div>
</asp:Content>
