<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">

    <title>Validation Demonstration</title>

    <script language=javascript>
    function MyClientsideValidator(source, args)
    {
        if (args.Value.indexOf("buzz") == -1)
        {
            args.IsValid = false;
        }
        else
        {
            args.IsValid = true;
        }
    }
    </script>

</head>

<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td style="width: 118px">
                    <asp:Label ID="NameLabel" runat="server" Text="Name"></asp:Label></td>
                <td>
                    <asp:TextBox ID="NameTextBox" runat="server" ValidationGroup="ValidationGroup1"></asp:TextBox></td>
                <td style="width: 403px">
                    &nbsp;<asp:RequiredFieldValidator ID="NameRequiredFieldValidator" runat="server"
                        ControlToValidate="NameTextBox" Display="Dynamic" ErrorMessage="Name required"
                        SetFocusOnError="True" ValidationGroup="ValidationGroup1">
                        <img src=Error.gif alt="*" />
                        </asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 118px">
                    <asp:Label ID="AgeLabel" runat="server" Text="Age"></asp:Label></td>
                <td>
                    <asp:TextBox ID="AgeTextBox" runat="server" ValidationGroup="ValidationGroup1"></asp:TextBox></td>
                <td style="width: 403px">
                    &nbsp;<asp:RequiredFieldValidator ID="AgeRequiredFieldValidator" runat="server" ControlToValidate="AgeTextBox"
                        Display="Dynamic" ErrorMessage="Age required" SetFocusOnError="True" ValidationGroup="ValidationGroup1">Age required</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="AgeRangeValidator" runat="server" ControlToValidate="AgeTextBox"
                        Display="Dynamic" ErrorMessage="Age must be between 18 and 65 inclusive" MaximumValue="65"
                        MinimumValue="18" SetFocusOnError="True" Type="Integer" ValidationGroup="ValidationGroup1">Age must be between 18 and 65</asp:RangeValidator></td>
            </tr>
            <tr>
                <td style="width: 118px">
                    <asp:Label ID="EnrolmentLabel" runat="server" Text="Enrolment date"></asp:Label></td>
                <td>
                    <asp:TextBox ID="EnrolmentTextBox" runat="server" ValidationGroup="ValidationGroup1"></asp:TextBox></td>
                <td style="width: 403px">
                    &nbsp;<asp:RequiredFieldValidator ID="EnrolmentRequiredFieldValidator" runat="server"
                        ControlToValidate="EnrolmentTextBox" Display="Dynamic" ErrorMessage="Enrolment date required"
                        SetFocusOnError="True" ValidationGroup="ValidationGroup1">Enrolment date required</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="EnrolmentRangeValidator" runat="server" ControlToValidate="EnrolmentTextBox"
                        Display="Dynamic" ErrorMessage="Enrolment date out of range" MaximumValue="12/31/2005"
                        MinimumValue="08/20/2005" SetFocusOnError="True" Type="Date" ValidationGroup="ValidationGroup1">Enrolment date out of range</asp:RangeValidator></td>
            </tr>
            <tr>
                <td style="width: 118px">
                    <asp:Label ID="PasswordLabel" runat="server" Text="Password"></asp:Label></td>
                <td>
                    <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password" Width="149px" ValidationGroup="ValidationGroup1"></asp:TextBox></td>
                <td style="width: 403px">
                    &nbsp;<asp:RequiredFieldValidator ID="PasswordRequiredFieldValidator" runat="server"
                        ControlToValidate="PasswordTextBox" Display="Dynamic" ErrorMessage="Password required"
                        SetFocusOnError="True" ValidationGroup="ValidationGroup1">Password required</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="PasswordCompareValidator" runat="server" ControlToValidate="PasswordTextBox"
                        Display="Dynamic" ErrorMessage="Please choose a more cryptic password :-}" Operator="NotEqual"
                        SetFocusOnError="True" ValueToCompare="password" ValidationGroup="ValidationGroup1">Please choose a more cryptic password :-}</asp:CompareValidator></td>
            </tr>
            <tr>
                <td style="width: 118px; height: 26px;">
                    <asp:Label ID="ConfirmLabel" runat="server" Text="Confirm"></asp:Label></td>
                <td style="height: 26px">
                    <asp:TextBox ID="ConfirmTextBox" runat="server" TextMode="Password" Width="149px" ValidationGroup="ValidationGroup1" ></asp:TextBox></td>
                <td style="width: 403px; height: 26px;">
                    &nbsp;<asp:RequiredFieldValidator ID="CompareRequiredFieldValidator" runat="server"
                        ControlToValidate="ConfirmTextBox" Display="Dynamic" ErrorMessage="Password confirmation required"
                        SetFocusOnError="True" ValidationGroup="ValidationGroup1">Password confirmation required</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="ConfirmCompareValidator" runat="server" ControlToCompare="PasswordTextBox"
                        ControlToValidate="ConfirmTextBox" Display="Dynamic" ErrorMessage="Password confirmation mismatch"
                        SetFocusOnError="True" ValidationGroup="ValidationGroup1">Password confirmation mismatch</asp:CompareValidator></td>
            </tr>
            <tr>
                <td style="width: 118px">
                    <asp:Label ID="EmailLabel" runat="server" Text="Email address"></asp:Label></td>
                <td>
                    <asp:TextBox ID="EmailTextBox" runat="server" ValidationGroup="ValidationGroup1"></asp:TextBox></td>
                <td style="width: 403px">
                    &nbsp;<asp:RequiredFieldValidator ID="EmailRequiredFieldValidator" runat="server"
                        ControlToValidate="EmailTextBox" Display="Dynamic" ErrorMessage="Email address required"
                        SetFocusOnError="True" ValidationGroup="ValidationGroup1">Email address required</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="EmailRegularExpressionValidator" runat="server"
                        ControlToValidate="EmailTextBox" Display="Dynamic" ErrorMessage="Invalid email address"
                        SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="ValidationGroup1">Invalid email address</asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td style="width: 118px">
                    <asp:Label ID="SecurityCodeLabel" runat="server" Text="Security code"></asp:Label></td>
                <td>
                    <asp:TextBox ID="SecurityCodeTextBox" runat="server" ValidationGroup="ValidationGroup1"></asp:TextBox></td>
                <td style="width: 403px">
                    &nbsp;<asp:CustomValidator ID="SecurityCodeCustomValidator" runat="server" ClientValidationFunction="MyClientsideValidator"
                        ControlToValidate="SecurityCodeTextBox" Display="Dynamic" ErrorMessage="Invalid security code"
                        SetFocusOnError="True" ValidateEmptyText="True" OnServerValidate="SecurityCodeCustomValidator_ServerValidate" ValidationGroup="ValidationGroup1">Invalid security code</asp:CustomValidator></td>
            </tr>
        </table>
    
    </div>
    
        <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" ValidationGroup="ValidationGroup1" /> <br />
        <asp:Label ID="ResultLabel" runat="server"></asp:Label><br /><br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Please fix these errors on the page:" ValidationGroup="ValidationGroup1" />
        <br /><br />
        <asp:Panel ID="Panel1" runat="server" Height="50px" Width="690px">
            <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="ValidationGroup2"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                ErrorMessage="RequiredFieldValidator" ValidationGroup="ValidationGroup2"></asp:RequiredFieldValidator>
            <asp:Button ID="Button1" runat="server" Text="Button" ValidationGroup="ValidationGroup2" /></asp:Panel>

    </form>
</body>
</html>
