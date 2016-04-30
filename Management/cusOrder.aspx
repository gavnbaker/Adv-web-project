<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Management.master" AutoEventWireup="true" CodeFile="cusOrder.aspx.cs" Inherits="Management_cusOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="OrderId" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="OrderId" HeaderText="OrderId" ReadOnly="True" SortExpression="OrderId" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                <asp:BoundField DataField="CustomerId" HeaderText="CustomerId" SortExpression="CustomerId" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="OrderId" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
            <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="OrderId" HeaderText="OrderId" ReadOnly="True" SortExpression="OrderId" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                <asp:BoundField DataField="CustomerId" HeaderText="CustomerId" SortExpression="CustomerId" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
        </asp:DetailsView>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [CustomerOrder] WHERE [OrderId] = @OrderId" InsertCommand="INSERT INTO [CustomerOrder] ([OrderId], [Date], [Time], [CustomerId]) VALUES (@OrderId, @Date, @Time, @CustomerId)" SelectCommand="SELECT * FROM [CustomerOrder]" UpdateCommand="UPDATE [CustomerOrder] SET [Date] = @Date, [Time] = @Time, [CustomerId] = @CustomerId WHERE [OrderId] = @OrderId">
            <DeleteParameters>
                <asp:Parameter Name="OrderId" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="OrderId" Type="String" />
                <asp:Parameter DbType="Date" Name="Date" />
                <asp:Parameter DbType="Time" Name="Time" />
                <asp:Parameter Name="CustomerId" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter DbType="Date" Name="Date" />
                <asp:Parameter DbType="Time" Name="Time" />
                <asp:Parameter Name="CustomerId" Type="String" />
                <asp:Parameter Name="OrderId" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
    </p>
</asp:Content>

