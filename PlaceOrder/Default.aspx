<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/FrontEnd.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">   
    <div>    
        <h1>    
        <span class="auto-style1">Welcome To Gavin&#39;s Bakery</span></h1>
        Please select a pastry:<br />
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Muffins</asp:ListItem>
            <asp:ListItem>Sweet Potato Pies</asp:ListItem>
            <asp:ListItem>Cup Cakes</asp:ListItem>
            <asp:ListItem>Danishes</asp:ListItem>
            <asp:ListItem>Cheese Cake</asp:ListItem>
            <asp:ListItem>Brownies</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label3" runat="server"></asp:Label>
        <br />
        <br />
        Please select decorations:<asp:CheckBoxList ID="CheckBoxList1" runat="server">
            <asp:ListItem>Butter Cream Frosting</asp:ListItem>
            <asp:ListItem>Cheese Cream Frosting</asp:ListItem>
            <asp:ListItem> Swiss Meringue Buttercream</asp:ListItem>
            <asp:ListItem>Italian Meringue Buttercream</asp:ListItem>
            <asp:ListItem>Whipped Cream</asp:ListItem>
        </asp:CheckBoxList>
        <asp:Label ID="Label4" runat="server"></asp:Label>
        <br />
        <br />
        Please select how many would you would like to order:<asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem>12 </asp:ListItem>
            <asp:ListItem>24</asp:ListItem>
            <asp:ListItem>36</asp:ListItem>
            <asp:ListItem>48</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Label ID="Label5" runat="server"></asp:Label>
        <br />
        <br />
        Please Select a delivery date:<br />
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" Width="330px">
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
            <DayStyle BackColor="#CCCCCC" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
            <TodayDayStyle BackColor="#999999" ForeColor="White" />
        </asp:Calendar>
        Delivery Date is:
        <asp:Label ID="Label2" runat="server"></asp:Label>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
        <br />    
    </div>  
</asp:Content>

