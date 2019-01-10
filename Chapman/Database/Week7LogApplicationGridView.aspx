<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Week7LogApplicationGridView.aspx.cs" Inherits="Chapman.Database.Week7LogApplicationGridView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1><b>Log Table Viewer:</b></h1>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="logID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Font-Bold="True" Font-Italic="True" Width="801px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="logID" HeaderText="Login Identity" InsertVisible="False" ReadOnly="True" SortExpression="logID" />
            <asp:TemplateField HeaderText="Customer Identity" SortExpression="customerID">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("customerID") %>'></asp:TextBox>
                    <ajaxToolkit:DropShadowExtender ID="TextBox2_DropShadowExtender" runat="server" BehaviorID="TextBox2_DropShadowExtender" TargetControlID="TextBox2" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("customerID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="IP Address" SortExpression="ipddress">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("ipddress") %>'></asp:TextBox>
                    <ajaxToolkit:DropShadowExtender ID="TextBox4_DropShadowExtender" runat="server" BehaviorID="TextBox4_DropShadowExtender" TargetControlID="TextBox4" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("ipddress") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Session Identity" SortExpression="sessionID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("sessionID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("sessionID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Date and Time of Visit" SortExpression="dateVisitBegin">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="DateTime"></asp:TextBox>
                    <ajaxToolkit:DropShadowExtender ID="TextBox1_DropShadowExtender" runat="server" BehaviorID="TextBox1_DropShadowExtender" TargetControlID="TextBox1" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("dateVisitBegin") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Browser" SortExpression="browser">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <ajaxToolkit:DropShadowExtender ID="TextBox3_DropShadowExtender" runat="server" BehaviorID="TextBox3_DropShadowExtender" TargetControlID="TextBox3" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("browser") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" AccessibleHeaderText="Edit Records" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <ajaxToolkit:DropShadowExtender ID="GridView1_DropShadowExtender" runat="server" BehaviorID="GridView1_DropShadowExtender" TargetControlID="GridView1" />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ChapmanSQL %>" DeleteCommand="DELETE FROM [log] WHERE [logID] = @logID" InsertCommand="INSERT INTO [log] ([customerID], [ipddress], [sessionID], [dateVisitBegin], [browser]) VALUES (@customerID, @ipddress, @sessionID, @dateVisitBegin, @browser)" SelectCommand="SELECT [logID], [customerID], [ipddress], [sessionID], [dateVisitBegin], [browser] FROM [log] ORDER BY [dateVisitBegin]" UpdateCommand="UPDATE [log] SET [customerID] = @customerID, [ipddress] = @ipddress, [sessionID] = @sessionID, [dateVisitBegin] = @dateVisitBegin, [browser] = @browser WHERE [logID] = @logID">
        <DeleteParameters>
            <asp:Parameter Name="logID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="customerID" Type="Int32" />
            <asp:Parameter Name="ipddress" Type="String" />
            <asp:Parameter Name="sessionID" Type="String" />
            <asp:Parameter Name="dateVisitBegin" Type="DateTime" />
            <asp:Parameter Name="browser" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="customerID" Type="Int32" />
            <asp:Parameter Name="ipddress" Type="String" />
            <asp:Parameter Name="sessionID" Type="String" />
            <asp:Parameter Name="dateVisitBegin" Type="DateTime" />
            <asp:Parameter Name="browser" Type="String" />
            <asp:Parameter Name="logID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
