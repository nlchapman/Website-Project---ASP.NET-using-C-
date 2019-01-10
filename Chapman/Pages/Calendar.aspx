<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Calendar.aspx.cs" Inherits="Chapman.Pages.Calendar" Theme="Theme1"%>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <div style="width:50%; margin: 0 auto;">
        <asp:Calendar runat="server" ID="MyCalendar" OnDayRender="MyCalendar_DayRender" OnSelectionChanged="MyCalendar_OnSelectionChanged" SkinID="MyCalendarSkin"></asp:Calendar>
        <br />
        <br />
        <asp:Label runat="server" ID="SelectedDate"></asp:Label>
    </div>
</asp:Content>
