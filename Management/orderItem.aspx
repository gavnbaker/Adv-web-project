<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Management.master" AutoEventWireup="true" CodeFile="orderItem.aspx.cs" Inherits="Management_orderItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="OrderItemId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="OrderItemId" HeaderText="OrderItemId" ReadOnly="True" SortExpression="OrderItemId" />
                <asp:BoundField DataField="OrderId" HeaderText="OrderId" SortExpression="OrderId" />
                <asp:BoundField DataField="ProductId" HeaderText="ProductId" SortExpression="ProductId" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="OrderItemId" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="OrderItemId" HeaderText="OrderItemId" ReadOnly="True" SortExpression="OrderItemId" />
                <asp:BoundField DataField="OrderId" HeaderText="OrderId" SortExpression="OrderId" />
                <asp:BoundField DataField="ProductId" HeaderText="ProductId" SortExpression="ProductId" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [OrderItem	] WHERE [OrderItemId] = @OrderItemId" InsertCommand="INSERT INTO [OrderItem	] ([OrderItemId], [OrderId], [ProductId], [Quantity]) VALUES (@OrderItemId, @OrderId, @ProductId, @Quantity)" SelectCommand="SELECT * FROM [OrderItem	]" UpdateCommand="UPDATE [OrderItem	] SET [OrderId] = @OrderId, [ProductId] = @ProductId, [Quantity] = @Quantity WHERE [OrderItemId] = @OrderItemId">
            <DeleteParameters>
                <asp:Parameter Name="OrderItemId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="OrderItemId" Type="Int32" />
                <asp:Parameter Name="OrderId" Type="Int32" />
                <asp:Parameter Name="ProductId" Type="Int32" />
                <asp:Parameter Name="Quantity" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="OrderId" Type="Int32" />
                <asp:Parameter Name="ProductId" Type="Int32" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="OrderItemId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
    </p>
</asp:Content>

