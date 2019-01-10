<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeleteCategories.aspx.cs" Inherits="Chapman.Database.DeleteCategories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h1>Delete Categories</h1>
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
    <br />
    <asp:SqlDataSource ID="delete" runat="server"
        ConnectionString="<%$ ConnectionStrings:ChapmanSQL %>"
        SelectCommand=""
        ></asp:SqlDataSource>
    <asp:Button ID="deleteRecord" runat="server" DataSourceID="delete" Text="Delete Record" />
    <br /><br />
        <asp:SqlDataSource ID="detailSource" runat="server"
        ConnectionString="<%$ ConnectionStrings:ChapmanSQL %>"
        SelectCommand="DELETE FROM categories WHERE rummageID=@rummageID"
        >
            <SelectParameters>
                <asp:ControlParameter Name="rummageID" ControlID="categoryList" PropertyName="SelectedValue" />
            </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="productDet" runat="server"></asp:SqlDataSource>
    <asp:DetailsView CommandRowStyle-BackColor="LightYellow" AlternatingRowStyle-BackColor="#ccffcc" BackColor="#ffffcc" BorderStyle="Groove" Font-Bold="true" ID="detailsProducts" runat="server" DataSourceID="detailSource" AutoGenerateRows="true"></asp:DetailsView>
</asp:Content>
