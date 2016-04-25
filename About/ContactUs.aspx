<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/FrontEnd.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="About_ContactUs" %>

<%@ Register Src="~/Controls/ContactForm.ascx" TagPrefix="uc1" TagName="ContactForm" %>


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
    <h1 class="auto-style1">Contact Information</h1>
    <p class="auto-style2">
        <a href="mailto:Email:gavinsbakery@domain.com">Email:gavinsbakery@domain.com</a></p>
    <p class="auto-style2">
        Telephone: 801-345-9876</p>
    <p class="auto-style2">
        Fax: 801-345-9800</p>
    <p class="auto-style2">
        Location: 505 Ramapo Valley Road, Mahwah New Jersey</p>
    <uc1:ContactForm runat="server" ID="ContactForm" />
</asp:Content>

