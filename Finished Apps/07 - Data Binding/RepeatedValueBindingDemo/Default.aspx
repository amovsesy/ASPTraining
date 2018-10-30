<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Repeated Value Binding Demo</title>
</head>
<body style="font-family: Arial">
    <form id="form1" runat="server">
    <div>
        <table style="width: 948px">
            <tr>
                <td style="width: 219px" valign="top">
                    <asp:Label ID="ListBoxLabel" runat="server" Text="ListBox data" Font-Bold="True"></asp:Label></td>
                <td valign="top">
                    <asp:Label ID="DropDownListLabel" runat="server" Text="DropDownList data" Font-Bold="True"></asp:Label></td>
                <td valign="top" style="width: 250px">
                    <asp:Label ID="CheckBoxListLabel" runat="server" Text="CheckBoxList data" Font-Bold="True"></asp:Label></td>
                <td style="width: 220px; height: 20px;" valign="top">
                    <asp:Label ID="RadioButtonListLabel" runat="server" Text="RadioButtonList data:" Font-Bold="True"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 219px" valign="top">

        <asp:ListBox ID="StatesListBox" runat="server" Width="180px" Rows="10" AutoPostBack="True" OnSelectedIndexChanged="StatesListBox_SelectedIndexChanged" />
        <br /><br />
        <asp:Label ID="ResultLabel" Font-Bold="true" runat="server"></asp:Label>
</td>
                <td valign="top">
        
        <asp:DropDownList ID="StatesDropDownList" runat="server" Width="180px" /></td>
                <td valign="top" style="width: 250px">
        
        <asp:CheckBoxList ID="StatesCheckBoxList" runat="server" Width="180px" /></td>
                <td style="width: 220px" valign="top">

        <asp:RadioButtonList ID="StatesRadioButtonList" runat="server" Width="180px" /></td>
            </tr>
        </table>
        
    </div>
    </form>
</body>
</html>
