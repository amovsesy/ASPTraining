<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Data Binding to a Database by Using a SqlDataSource</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <asp:Label ID="MessageLabel" runat="server" Font-Names="Arial" EnableViewState="False" /> <br /><br />
        
        <asp:Label ID="AllProductsLabel" runat="server" Font-Names="Arial" Text="Products:"></asp:Label>&nbsp;<br />

    </div>
    </form>
</body>
</html>
