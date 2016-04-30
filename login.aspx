<%@ Page Title="Log in to Gavin's Bakery" Language="C#" MasterPageFile="~/MasterPages/FrontEnd.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    .auto-style2 {
        text-align: left;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <h1 class="auto-style1">Login to Gavin&#39;s Bakery</h1>
    <p class="auto-style2">
        <asp:LoginView ID="LoginView1" runat="server" OnViewChanged="LoginView1_ViewChanged">
            <AnonymousTemplate>
                <asp:Login ID="Login1" runat="server" CreateUserText="Sign Up " CreateUserUrl="~/SignUp.aspx" DestinationPageUrl="~/Management/Default.aspx" Height="273px" Width="593px">
                </asp:Login>
            </AnonymousTemplate>
            <LoggedInTemplate>
                You are already logged in.<br /> &nbsp;Click Here to enter <a href="Management/Default.aspx">Management</a>
            </LoggedInTemplate>
        </asp:LoginView>
    </p>
<p class="auto-style2">
    <asp:LoginStatus ID="LoginStatus1" runat="server" />
</p>
</asp:Content>

