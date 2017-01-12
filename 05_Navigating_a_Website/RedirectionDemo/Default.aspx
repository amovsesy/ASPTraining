<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="WelcomeLabel" runat="server" Text="Welcome to our Online Retailing  web site" Font-Bold="True" Font-Names="Arial"></asp:Label> <br /><br />
        <table style="width: 537px">
            <tr>
                <td style="width: 74px">
                    <asp:Label ID="NameLabel" runat="server" Text="Name"></asp:Label></td>
                <td style="width: 165px">
                    <asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="NameRequiredFieldValidator" runat="server" ErrorMessage="Name required"
                        SetFocusOnError="True" ControlToValidate="NameTextBox">Name required</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 74px">
                    <asp:Button ID="LoginButton" runat="server" Text="Login" /></td>
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
