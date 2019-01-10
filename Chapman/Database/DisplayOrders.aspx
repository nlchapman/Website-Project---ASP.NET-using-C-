<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DisplayOrders.aspx.cs" Inherits="Chapman.Database.DisplayOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h1>Orders</h1>
    <br /> <br />
    <asp:SqlDataSource ID="orderSource" runat="server"
        ConnectionString="<%$ ConnectionStrings:ChapmanSQL %>"
        SelectCommand="SELECT * FROM orders"
        >
    </asp:SqlDataSource>
    <asp:DropDownList ID="orderList" runat="server" AutoPostBack="true"
        DataSourceID="orderSource" DataTextField="orderID"
        DataValueField="orderID"       
        >
    </asp:DropDownList>
    <br /><br />
        <asp:SqlDataSource ID="detailSource" runat="server"
        ConnectionString="<%$ ConnectionStrings:ChapmanSQL %>"
        SelectCommand="SELECT * FROM orders WHERE orderID=@orderID"
        >
            <SelectParameters>
                <asp:ControlParameter Name="orderID" ControlID="orderList" PropertyName="SelectedValue" />
            </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="orderDet" runat="server"></asp:SqlDataSource>
    <asp:DetailsView CommandRowStyle-BackColor="LightYellow" AlternatingRowStyle-BackColor="#ccffcc" BackColor="#ffffcc" BorderStyle="Groove" Font-Bold="true" ID="detailsProducts" runat="server" DataSourceID="detailSource" AutoGenerateRows="true"></asp:DetailsView>
</asp:Content>
