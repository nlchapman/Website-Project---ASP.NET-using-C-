<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="week8chart.aspx.cs" Inherits="Chapman.Database.week8chart" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Height="406px" Width="835px" BackColor="LemonChiffon" BackGradientStyle="DiagonalLeft" Palette="SeaGreen">
    <Titles>
        <asp:Title Font="Times New Roman, 12pt, style=Bold, Italic" Name="Title1" 
            Text="Five Most Expensive Products">
        </asp:Title>
    </Titles>
    <series>
        <asp:Series Name="Series1" ChartArea="ChartArea1" XValueMember="productName" YValueMembers="cost">
        </asp:Series>
    </series>
    <chartareas>
        <asp:ChartArea Name="ChartArea1">
        </asp:ChartArea>
    </chartareas>
</asp:Chart>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ChapmanSQL %>" SelectCommand="SELECT TOP (5) productName, cost FROM products ORDER BY cost DESC"></asp:SqlDataSource>
    <br />
    <br />
    <br />
    <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource2" Height="378px" Width="830px" BackColor="LightBlue" Palette="SeaGreen">
        <Titles>
        <asp:Title Font="Times New Roman, 12pt, style=Bold, Italic" Name="Title1" 
            Text="Total Number of Customers from Each State">
        </asp:Title>
    </Titles>
        <series>
            <asp:Series Name="Series1" XValueMember="customerState" YValueMembers="numberOfPeople">
            </asp:Series>
        </series>
        <chartareas>
            <asp:ChartArea Name="ChartArea2">
            </asp:ChartArea>
        </chartareas>
    </asp:Chart>
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ChapmanSQL %>" SelectCommand="SELECT customerState, COUNT(*) AS numberOfPeople FROM customers GROUP BY customerState ORDER BY customerState"></asp:SqlDataSource>
    <br />
    <asp:Chart ID="Chart3" runat="server" BackColor="LemonChiffon" DataSourceID="SqlDataSource3" Height="349px" Palette="SeaGreen" Width="826px">
        <Titles>
        <asp:Title Font="Times New Roman, 12pt, style=Bold, Italic" Name="Title1" 
            Text="Five Most Expensive Orders">
        </asp:Title>
    </Titles>
        <series>
            <asp:Series Name="Series1" XValueMember="productName" YValueMembers="totalAmount">
            </asp:Series>
        </series>
        <chartareas>
            <asp:ChartArea Name="ChartArea3">
            </asp:ChartArea>
        </chartareas>
    </asp:Chart>
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ChapmanSQL %>" SelectCommand="SELECT TOP (5) orders.orderID, orders.productID, orders.totalAmount, [products	].productName FROM orders INNER JOIN [products	] ON orders.productID = [products	].productID ORDER BY orders.totalAmount DESC"></asp:SqlDataSource>
    <br />
    <br />
    <asp:Chart ID="Chart4" runat="server" BackColor="LightBlue" DataSourceID="SqlDataSource4" Height="398px" Palette="SeaGreen" Width="818px">
        <Titles>
        <asp:Title Font="Times New Roman, 12pt, style=Bold, Italic" Name="Title1" 
            Text="Products that have made the most profit">
        </asp:Title>
    </Titles>
        <series>
            <asp:Series Name="Series1" XValueMember="productName" YValueMembers="profits" IsValueShownAsLabel="True" LegendText="Profits from Products" IsVisibleInLegend="True">
            </asp:Series>
        </series>
        <chartareas>
            <asp:ChartArea Name="ChartArea4">
            </asp:ChartArea>
        </chartareas>
    </asp:Chart>
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ChapmanSQL %>" SelectCommand="SELECT productName ,cost - price AS profits FROM [orders] INNER JOIN [products	] ON [orders].productID = [products	].productID ORDER BY profits DESC"></asp:SqlDataSource>
    <br />
</asp:Content>
