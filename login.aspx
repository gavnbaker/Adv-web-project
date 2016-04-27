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
                <asp:Login ID="Login1" runat="server" CreateUserText="Sign Up " CreateUserUrl="~/SignUp.aspx" DestinationPageUrl="~/Default.aspx" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" Height="273px" Width="593px">
                    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                    <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
                    <TextBoxStyle Font-Size="0.8em" />
                    <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
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

