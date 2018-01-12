<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-size: 12pt; font-family: Arial">

        <asp:Label ID="Label1" runat="server"> The result of 7 plus 4 is <%# 7 + 4 %> </asp:Label> <br /> <br />

        <asp:Label ID="Label2" runat="server"> The result of 7 minus 4 is <%# 7 - 4 %> </asp:Label> <br /> <br />

        <asp:Label ID="Label3" runat="server"> The current date and time is <%# DateTime.Now %> </asp:Label> <br /> <br />

        <asp:Label ID="Label4" runat="server"> The physical URL of this page is <%# Request.PhysicalPath %> </asp:Label> <br /> <br />

        <asp:Label ID="Label5" runat="server"> The user's preferred language is <%# Request.UserLanguages[0] %> </asp:Label> <br /> <br />

        <asp:Label ID="Label6" runat="server"> Universal Coordinated Time is <%# UtcTime %> </asp:Label> <br /> <br />

        <asp:Label ID="Label7" runat="server"> Time in New York City is <%# GetTimeInTimeZone(-5) %> </asp:Label> <br /> <br />

        <asp:Label ID="Label8" runat="server"> Top product ID is <%# TopProductID %> </asp:Label> <br /> <br />
        
        <asp:TextBox ID="TextBox1" runat="server" Text="<%# TopProductID %>"/> <br /> <br />
        
        <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "~/DisplayProduct.aspx?ProductID=" + TopProductID %>' runat="server">Display product</asp:HyperLink> <br /> <br />
        
    </div>
    </form>
</body>
</html>
