<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DisplayCustomers.aspx.cs" Inherits="Chapman.Database.DisplayCustomers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h1>Avaliable Products</h1>
    <br /> <br />
    <asp:SqlDataSource ID="customerSource" runat="server"
        ConnectionString="<%$ ConnectionStrings:ChapmanSQL %>"
        SelectCommand="SELECT customerFirstName, customerID FROM customers"
        >
    </asp:SqlDataSource>
    <asp:DropDownList ID="customerList" runat="server" AutoPostBack="true"
        DataSourceID="customerSource" DataTextField="customerFirstName"
        DataValueField="customerID"       
        >
    </asp:DropDownList>
    <br /><br />
        <asp:SqlDataSource ID="detailSource" runat="server"
        ConnectionString="<%$ ConnectionStrings:ChapmanSQL %>"
        SelectCommand="SELECT * FROM customers WHERE customerID=@customerID"
        >
            <SelectParameters>
                <asp:ControlParameter Name="customerID" ControlID="customerList" PropertyName="SelectedValue" />
            </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="customerID" runat="server"></asp:SqlDataSource>
    <asp:DetailsView CommandRowStyle-BackColor="LightYellow" AlternatingRowStyle-BackColor="#ccffcc" BackColor="#ffffcc" BorderStyle="Groove" Font-Bold="true" ID="detailsProducts" runat="server" DataSourceID="detailSource" AutoGenerateRows="true"></asp:DetailsView>
</asp:Content>
