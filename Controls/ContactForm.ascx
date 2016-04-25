<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ContactForm.ascx.cs" Inherits="Controls_ContactForm" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }

    .auto-style2 {
        text-align: center;
    }

    .auto-style4 {
        width: 397px;
    }

    .auto-style5 {
        width: 200px;
        height: 28px;
        text-align: left;
    }

    .auto-style6 {
        width: 397px;
        height: 28px;
    }

    .auto-style7 {
        height: 28px;
        text-align: left;
    }

    .auto-style8 {
        width: 200px;
        height: 29px;
        text-align: left;
    }

    .auto-style9 {
        width: 397px;
        height: 29px;
    }

    .auto-style10 {
        height: 29px;
        text-align: left;
    }
    .auto-style11 {
        width: 200px;
        text-align: left;
    }
    .auto-style12 {
        text-align: left;
    }

</style>

<script>
    function validatePhoneNumbers(source, args) {
        var phoneHome = document.getElementById('<%= PhoneHome.ClientID %>');
        var phoneBusiness = document.getElementById('<%= PhoneBusiness.ClientID %>');
        if (phoneHome.value != '' || phoneBusiness.value != '') {
            args.IsValid = true;
        }
        else {
            args.IsValid = false;
        }
    }
</script>



<table class="auto-style1">
    <tr>
        <td class="auto-style2" colspan="3">
            <h1 class="auto-style2">Contact US</h1>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">Name</td>
        <td class="auto-style4">
            <asp:TextBox ID="Name" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style12">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" CssClass="ErrorMessage" ErrorMessage="Enter your name" Display="Dynamic">*Required</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Email Address</td>
        <td class="auto-style9">
            <asp:TextBox ID="EmailAddress" runat="server" TextMode="Email"></asp:TextBox>
        </td>
        <td class="auto-style10">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter an email address">*Required</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter a valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">Confirm email address</td>
        <td class="auto-style4">
            <asp:TextBox ID="ConfirmEmailAddress" runat="server" TextMode="Email"></asp:TextBox>
        </td>
        <td class="auto-style12">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ConfirmEmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Confirm the email address">*Required</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="EmailAddress" ControlToValidate="ConfirmEmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="The email addresses don't match">*</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Cell phone number</td>
        <td class="auto-style6">
            <asp:TextBox ID="PhoneHome" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style7">
            <asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="validatePhoneNumbers" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter your home or cell phone number" OnServerValidate="CustomValidator1_ServerValidate">*Required</asp:CustomValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">Home phone number</td>
        <td class="auto-style4">
            <asp:TextBox ID="PhoneBusiness" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style12">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style11">Comments</td>
        <td class="auto-style4">
            <asp:TextBox ID="Comments" runat="server" Height="143px" TextMode="MultiLine" Width="390px"></asp:TextBox>
        </td>
        <td class="auto-style12">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Comments" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter a comment">*Required</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style4">
            <asp:Button ID="SendButton" runat="server" Text="Send" />
        </td>
        <td class="auto-style12">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="3" class="auto-style12">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage" HeaderText="Make these corrections in order to submit form:" />
        </td>
    </tr>
</table>

