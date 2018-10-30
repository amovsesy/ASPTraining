<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OrderPage.aspx.cs" Inherits="OrderPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="WelcomeLabel" runat="server" Font-Bold="True" Font-Names="Arial" Text="Please place your order"></asp:Label>
        <br />
        <br />
        <table style="width: 537px">
            <tr>
                <td style="width: 74px">
                    <asp:Label ID="ProductLabel" runat="server" Text="Product"></asp:Label></td>
                <td style="width: 165px">
                    <asp:TextBox ID="ProductTextBox" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="ProductRequiredFieldValidator" runat="server" ControlToValidate="ProductTextBox"
                        ErrorMessage="Product required" SetFocusOnError="True">Product required</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 74px">
                    <asp:Button ID="CheckoutButton" runat="server" Text="Go to checkout" OnClick="CheckoutButton_Click" /></td>
                <td style="width: 165px">
                </td>
                <td>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
