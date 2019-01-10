<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Week4Accordion.aspx.cs" Inherits="Chapman.Pages.Week4Accordion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        
        .accordionHeader{
            border: 1px ridge black;
            color:burlywood;
            background-color:darkcyan;
            cursor: pointer;
        }

        .accordionContent{
            border: 1px groove black;
            color:darkslategrey;
            background-color:antiquewhite;
        }

        .accordionHeaderSelected{
            border: 1px double gray;
            color:burlywood;
            background-color:cadetblue;
            cursor: pointer;
        }

    </style>
    <asp:Label ID="FAQLabel" runat="server" Font-Bold="true" Font-Size="XX-Large" Text="Rummage Sale FAQ"></asp:Label>
    <br /><br />
    <ajaxToolkit:Accordion ID="FAQ" runat="server" FadeTransitions="True" TransitionDuration="300"
        HeaderCSSClass="accordionHeader"
        HeaderSelectedCSSClass="accordionHeaderSelected"
        ContentCSSClass="accordionContent"
        >
        <Panes>
            <ajaxToolkit:AccordionPane ID="firstFAQ" runat="server">
                <Header><b>What's a Rummage Sale?</b></Header>
                <Content>
                    <div style="font-style:italic">
                        A rummage sale is: a sale of miscellaneous secondhand articles, typically held in order to raise money for a charity or a special event.
                    </div>
                </Content>
            </ajaxToolkit:AccordionPane>
            <ajaxToolkit:AccordionPane ID="secondFAQ" runat="server">
                <Header><b>What items are for sale?</b></Header>
                <Content>
                    <div>There are a lot of items for sale.  These items include:</div>
                    <br />
                <asp:BulletedList ID="rummageItems" runat="server">
                    <asp:ListItem Text="Books" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Pens" Value="2"></asp:ListItem>
                    <asp:ListItem Text="Clothing" Value="3"></asp:ListItem>
                    <asp:ListItem Text="Furniture" Value="4"></asp:ListItem>
                    <asp:ListItem Text="Paper" Value="5"></asp:ListItem>
                    <asp:ListItem Text="Antiques" Value="6"></asp:ListItem>
                    <asp:ListItem Text="More!" Value="5"></asp:ListItem>
                </asp:BulletedList>
                </Content>
            </ajaxToolkit:AccordionPane>
            <ajaxToolkit:AccordionPane ID="thirdFAQ" runat="server">
                <Header><b>What form  of payment is accepted?</b></Header>
                <Content>
                    <div>Many forms of payments are accepted, though cash is preferable!</div>
                    <asp:Image runat="server" ID="cashTypes" ImageUrl="~/Images/money.png" Width="308" Height="200"/>
                </Content>
            </ajaxToolkit:AccordionPane>
            <ajaxToolkit:AccordionPane ID="fourthFAQ" runat="server">
                <Header><b>Where can I learn more?</b></Header>
                <Content>
                    <div>
                        Please feel free to contact us by e-mail for further questions.  Also explore our site more to learn even more today!
                    </div>
                </Content>
            </ajaxToolkit:AccordionPane>
        </Panes>
    </ajaxToolkit:Accordion>
</asp:Content>
