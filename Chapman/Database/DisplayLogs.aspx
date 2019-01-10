<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DisplayLogs.aspx.cs" Inherits="Chapman.Database.DisplayLogs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h1>Website Logs</h1>
    <br /> <br />
    <asp:SqlDataSource ID="logSource" runat="server"
        ConnectionString="<%$ ConnectionStrings:ChapmanSQL %>"
        SelectCommand="SELECT authUser, logID FROM log"
        >
    </asp:SqlDataSource>
    <asp:DropDownList ID="logList" runat="server" AutoPostBack="true"
        DataSourceID="logSource" DataTextField="authUser"
        DataValueField="logID"       
        >
    </asp:DropDownList>
    <br /><br />
        <asp:SqlDataSource ID="detailSource" runat="server"
        ConnectionString="<%$ ConnectionStrings:ChapmanSQL %>"
        SelectCommand="SELECT * FROM log WHERE logID=@logID"
        >
            <SelectParameters>
                <asp:ControlParameter Name="logID" ControlID="logList" PropertyName="SelectedValue" />
            </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="logDet" runat="server"></asp:SqlDataSource>
    <asp:DetailsView CommandRowStyle-BackColor="LightYellow" AlternatingRowStyle-BackColor="#ccffcc" BackColor="#ffffcc" BorderStyle="Groove" Font-Bold="true" ID="detailsProducts" runat="server" DataSourceID="detailSource" AutoGenerateRows="true"></asp:DetailsView>
</asp:Content>
