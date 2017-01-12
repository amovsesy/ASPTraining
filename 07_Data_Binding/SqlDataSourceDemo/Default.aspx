<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>SqlDataSource Demonstration</title>
</head>
<body style="font-size: 12pt; font-family: arial">
    <form id="form1" runat="server">
    <div>

        <asp:Label ID="AllProductsLabel" runat="server" Font-Bold=true Text="All products"></asp:Label><br />
        <asp:ListBox ID="AllProductsListBox" runat="server"></asp:ListBox>

        <br /><br /><br />
        <asp:Label ID="SomeProductsLabel" runat="server" Font-Bold=true Text="Products in range"></asp:Label><br />

        <table style="width: 332px">
            <tr>
                <td style="width: 180px">
                    <asp:Label ID="LowerLabel" runat="server" Text="Lower price"></asp:Label></td>
                <td style="width: 197px">
                    <asp:TextBox ID="LowerTextBox" runat="server"></asp:TextBox></td>
                <td>
                    <asp:Button ID="RefreshButton" runat="server" Text="Refresh" /></td>
            </tr>
            <tr>
                <td style="width: 180px">
                    <asp:Label ID="UpperLabel" runat="server" Text="Upper price"></asp:Label></td>
                <td style="width: 197px">
                    <asp:TextBox ID="UpperTextBox" runat="server"></asp:TextBox></td>
            </tr>
        </table>

        <br />

        <asp:ListBox ID="SomeProductsListBox" runat="server"></asp:ListBox>
    </div>
    </form>
</body>
</html>
