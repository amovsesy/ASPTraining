<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Messaging Demonstration</title>
</head>
<body style="font-size: 12pt; color: navy; font-family: Arial; background-color: #ffff99">
    <form id="form1" runat="server">
    <div style="font-weight: bold">
        <table style="width: 626px">
            <tr>
                <td style="width: 151px">
                    <asp:Label ID="UserNameLabel" runat="server" Text="User name"></asp:Label></td>
                <td style="width: 371px">
                    <asp:TextBox ID="UserNameTextBox" runat="server" Width="378px" TabIndex="1"></asp:TextBox></td>
                <td style="width: 73px">
        <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" TabIndex="4" /></td>
            </tr>
            <tr>
                <td style="width: 151px">
                    <asp:Label ID="EmailLabel" runat="server" Text="Email address"></asp:Label></td>
                <td style="width: 371px">
                    <asp:TextBox ID="EmailTextBox" runat="server" TabIndex="2" Width="378px"></asp:TextBox></td>
                <td style="width: 73px">
                </td>
            </tr>
            <tr>
                <td style="width: 151px" valign="top">
                    <asp:Label ID="FaultLabel" runat="server" Text="Fault description"></asp:Label></td>
                <td style="width: 371px" valign="top">
                    <asp:TextBox ID="FaultTextBox" runat="server" Rows="10" TabIndex="3" TextMode="MultiLine" Width="378px"></asp:TextBox></td>
                <td valign="top" style="width: 73px">
                </td>
            </tr>
            <tr>
                <td colspan="3" valign="top">
                    <asp:Label ID="ConfirmationLabel" runat="server" ForeColor="#C00000" Width="616px"></asp:Label></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
