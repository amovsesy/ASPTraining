<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Validation Demonstration</title>
</head>

<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td style="width: 118px">
                    <asp:Label ID="NameLabel" runat="server" Text="Name"></asp:Label></td>
                <td>
                    <asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox></td>
                <td style="width: 403px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 118px">
                    <asp:Label ID="AgeLabel" runat="server" Text="Age"></asp:Label></td>
                <td>
                    <asp:TextBox ID="AgeTextBox" runat="server"></asp:TextBox></td>
                <td style="width: 403px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 118px">
                    <asp:Label ID="EnrolmentLabel" runat="server" Text="Enrolment date"></asp:Label></td>
                <td>
                    <asp:TextBox ID="EnrolmentTextBox" runat="server"></asp:TextBox></td>
                <td style="width: 403px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 118px">
                    <asp:Label ID="PasswordLabel" runat="server" Text="Password"></asp:Label></td>
                <td>
                    <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password" Width="149px"></asp:TextBox></td>
                <td style="width: 403px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 118px; height: 26px;">
                    <asp:Label ID="ConfirmLabel" runat="server" Text="Confirm"></asp:Label></td>
                <td style="height: 26px">
                    <asp:TextBox ID="ConfirmTextBox" runat="server" TextMode="Password" Width="149px" ></asp:TextBox></td>
                <td style="width: 403px; height: 26px;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 118px">
                    <asp:Label ID="EmailLabel" runat="server" Text="Email address"></asp:Label></td>
                <td>
                    <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox></td>
                <td style="width: 403px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 118px">
                    <asp:Label ID="SecurityCodeLabel" runat="server" Text="Security code"></asp:Label></td>
                <td>
                    <asp:TextBox ID="SecurityCodeTextBox" runat="server"></asp:TextBox></td>
                <td style="width: 403px">
                    </td>
            </tr>
        </table>
    
    </div>
    
        <asp:Button ID="SubmitButton" runat="server" Text="Submit" /> <br />
        <asp:Label ID="ResultLabel" runat="server"></asp:Label><br /><br />
        <br /><br />

    </form>
</body>
</html>
