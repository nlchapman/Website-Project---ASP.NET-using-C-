<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Week4Ajax.aspx.cs" Inherits="Chapman.Pages.Week4Ajax" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 style="color:goldenrod">Rummage Sales in Colorado!</h1>
    <br /> <br />
    <asp:Image ID="rummageImg" runat="server" Width="881" Height="270" ImageUrl="~/Images/rummage.png"/>
    <br /><br />
    <div>
        <asp:Label ID="rummageSaleLabel" runat="server" Text="Find a variety of items:" Font-Bold="true" Font-Size="XX-Large"></asp:Label>
        <br />
        <asp:Panel ID="rummagePanel" runat="server" ScrollBars="Vertical">
            <asp:BulletedList ID="rummageItems" runat="server">
                <asp:ListItem Text="Books" Value="1"></asp:ListItem>
                <asp:ListItem Text="Pens" Value="2"></asp:ListItem>
                <asp:ListItem Text="Clothing" Value="3"></asp:ListItem>
                <asp:ListItem Text="Furniture" Value="4"></asp:ListItem>
                <asp:ListItem Text="Paper" Value="5"></asp:ListItem>
                <asp:ListItem Text="Antiques" Value="6"></asp:ListItem>
                <asp:ListItem Text="More!" Value="5"></asp:ListItem>
            </asp:BulletedList>
            <br /><br />
            <asp:Label ID="rummageLocationLabel" runat="server" Text="Find different Locations:" Font-Bold="true" Font-Size="XX-Large"></asp:Label>
            <br />
            <asp:BulletedList ID="rummageLoc" runat="server">
                <asp:ListItem Text="Fort Collins" Value="1"></asp:ListItem>
                <asp:ListItem Text="Aurora" Value="2"></asp:ListItem>
                <asp:ListItem Text="Boulder" Value="3"></asp:ListItem>
                <asp:ListItem Text="Denver" Value="4"></asp:ListItem>
                <asp:ListItem Text="Wellington" Value="5"></asp:ListItem>
            </asp:BulletedList>
            <asp:Label ID="rummageLocation" Text="Rummage Locator: " runat="server"></asp:Label>
            <asp:HyperLink ID="rummageLink" runat="server" NavigateUrl="https://garagesalefinder.com/yard-sales/by-location/CO/">Rummage Sale Finder Website</asp:HyperLink>
        </asp:Panel>
        <br />
        <asp:UpdatePanel ID="emailRegister" runat="server">
            <ContentTemplate>
                <b>Enter your email to be added to the Rummage Sale E-mail list!: </b><br />
                <asp:TextBox ID="email" runat="server" TextMode="Email" ></asp:TextBox>
                <br />
                <asp:ImageButton ID="register" runat="server" ImageUrl="~/Images/register.png" width="150" Height="79" OnClick="register_Click" />
                <br /><br />
                <asp:Label ID="registerComplete" runat="server"></asp:Label>
            </ContentTemplate>
        </asp:UpdatePanel>
        

    </div>
</asp:Content>
