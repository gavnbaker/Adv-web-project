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
        <asp:LoginView ID="LoginView1" runat="server">
            <AnonymousTemplate>
                <asp:Login ID="Login1" runat="server" CreateUserText="Sign Up " CreateUserUrl="~/SignUp.aspx" DestinationPageUrl="~/Default.aspx">
                </asp:Login>
            </AnonymousTemplate>
            <LoggedInTemplate>
                You are already logged in.
            </LoggedInTemplate>
        </asp:LoginView>
    </p>
<p class="auto-style2">
    <asp:LoginStatus ID="LoginStatus1" runat="server" />
</p>
</asp:Content>

