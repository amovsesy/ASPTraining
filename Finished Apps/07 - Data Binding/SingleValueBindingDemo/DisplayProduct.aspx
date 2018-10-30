<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DisplayProduct.aspx.cs" Inherits="DisplayProduct" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Product Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-family: Arial">

        <asp:Label ID="ProductLabel" runat="server"> <%# "Here are the details for product " + Request.QueryString["ProductID"] %> </asp:Label> <br /><br />

        <asp:Image ID="ProductImage" runat="server" ImageUrl='<%# "~/Product" + Request.QueryString["ProductID"] + ".jpg" %>' /> <br /><br />

    </div>
    </form>
</body>
</html>
