<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DisplayProducts.aspx.cs" Inherits="Chapman.Database.DisplayProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Avaliable Products</h1>
    <br /> <br />
    <asp:SqlDataSource ID="productSource" runat="server"
        ConnectionString="<%$ ConnectionStrings:ChapmanSQL %>"
        SelectCommand="SELECT * FROM products"
        >
    </asp:SqlDataSource>
    <asp:DropDownList ID="productList" runat="server" AutoPostBack="true"
        DataSourceID="productSource" DataTextField="productName"
        DataValueField="productID"       
        >
    </asp:DropDownList>
    <br /><br />
        <asp:SqlDataSource ID="detailSource" runat="server"
        ConnectionString="<%$ ConnectionStrings:ChapmanSQL %>"
        SelectCommand="SELECT * FROM products WHERE productID=@productID"
        >
            <SelectParameters>
                <asp:ControlParameter Name="productID" ControlID="productList" PropertyName="SelectedValue" />
            </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="productDet" runat="server"></asp:SqlDataSource>
    <asp:DetailsView CommandRowStyle-BackColor="LightYellow" AlternatingRowStyle-BackColor="#ccffcc" BackColor="#ffffcc" BorderStyle="Groove" Font-Bold="true" ID="detailsProducts" runat="server" DataSourceID="detailSource" AutoGenerateRows="true"></asp:DetailsView>
</asp:Content>
