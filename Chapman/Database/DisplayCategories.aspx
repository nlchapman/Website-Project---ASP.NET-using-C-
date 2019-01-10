<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DisplayCategories.aspx.cs" Inherits="Chapman.Database.DisplayCategories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h1>Avaliable Categories</h1>
    <br /> <br />
    <asp:SqlDataSource ID="categorySource" runat="server"
        ConnectionString="<%$ ConnectionStrings:ChapmanSQL %>"
        SelectCommand="SELECT rummageName, rummageID FROM categories"
        >
    </asp:SqlDataSource>
    <asp:DropDownList ID="categoryList" runat="server" AutoPostBack="true"
        DataSourceID="categorySource" DataTextField="rummageName"
        DataValueField="rummageID"       
        >
    </asp:DropDownList>
    <br /><br />
        <asp:SqlDataSource ID="detailSource" runat="server"
        ConnectionString="<%$ ConnectionStrings:ChapmanSQL %>"
        SelectCommand="SELECT * FROM categories WHERE rummageID=@rummageID"
        >
            <SelectParameters>
                <asp:ControlParameter Name="rummageID" ControlID="categoryList" PropertyName="SelectedValue" />
            </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="productDet" runat="server"></asp:SqlDataSource>
    <asp:DetailsView CommandRowStyle-BackColor="LightYellow" AlternatingRowStyle-BackColor="#ccffcc" BackColor="#ffffcc" BorderStyle="Groove" Font-Bold="true" ID="detailsProducts" runat="server" DataSourceID="detailSource" AutoGenerateRows="true"></asp:DetailsView>
</asp:Content>
