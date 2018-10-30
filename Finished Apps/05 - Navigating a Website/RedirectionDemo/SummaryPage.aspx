<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SummaryPage.aspx.cs" Inherits="SummaryPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="SummaryLabel" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="12pt"></asp:Label>
        <br /><br />
        <asp:HyperLink ID="HomeHyperLink" runat="server" NavigateUrl="~/Default.aspx">Return to home page</asp:HyperLink></div>
    </form>
</body>
</html>
