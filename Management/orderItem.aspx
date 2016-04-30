<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Management.master" AutoEventWireup="true" CodeFile="orderItem.aspx.cs" Inherits="Management_orderItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="OrderItemId" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="OrderItemId" HeaderText="OrderItemId" ReadOnly="True" SortExpression="OrderItemId" />
                <asp:BoundField DataField="OrderId" HeaderText="OrderId" SortExpression="OrderId" />
                <asp:BoundField DataField="ProductId" HeaderText="ProductId" SortExpression="ProductId" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="OrderItemId" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
            <EditRowStyle BackColor="#7C6F57" />
            <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="OrderItemId" HeaderText="OrderItemId" ReadOnly="True" SortExpression="OrderItemId" />
                <asp:BoundField DataField="OrderId" HeaderText="OrderId" SortExpression="OrderId" />
                <asp:BoundField DataField="ProductId" HeaderText="ProductId" SortExpression="ProductId" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
        </asp:DetailsView>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [OrderItem	] WHERE [OrderItemId] = @OrderItemId" InsertCommand="INSERT INTO [OrderItem	] ([OrderItemId], [OrderId], [ProductId], [Quantity]) VALUES (@OrderItemId, @OrderId, @ProductId, @Quantity)" SelectCommand="SELECT * FROM [OrderItem	]" UpdateCommand="UPDATE [OrderItem	] SET [OrderId] = @OrderId, [ProductId] = @ProductId, [Quantity] = @Quantity WHERE [OrderItemId] = @OrderItemId">
            <DeleteParameters>
                <asp:Parameter Name="OrderItemId" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="OrderItemId" Type="String" />
                <asp:Parameter Name="OrderId" Type="String" />
                <asp:Parameter Name="ProductId" Type="String" />
                <asp:Parameter Name="Quantity" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="OrderId" Type="String" />
                <asp:Parameter Name="ProductId" Type="String" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="OrderItemId" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
    </p>
</asp:Content>

