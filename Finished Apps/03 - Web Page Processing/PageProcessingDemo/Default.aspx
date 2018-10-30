<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="WelcomeLabel" runat="server" Text="Enter your name and travel details for this year or last year."></asp:Label><br /><br />
        <asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox><br /><br />
        <asp:ListBox ID="CountryList" runat="server" SelectionMode="Multiple">
        </asp:ListBox><br /><br />
        <asp:Button ID="ThisYearButton" runat="server" Text="Visited This Year" OnClick="TheButton_Click" CommandName="ThisYearCommand" /> &nbsp;
        <asp:Button ID="LastYearButton" runat="server" Text="Visited Last Year" CommandName="LastYearCommand" OnClick="TheButton_Click" /> <br /><br />
        <asp:Label ID="ResultLabel" runat="server"></asp:Label>
        <hr />
    </div>
        <asp:Label ID="TimestampLabel" runat="server"></asp:Label>
    </form>
</body>
</html>
