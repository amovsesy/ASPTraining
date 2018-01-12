<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DomesticProducts.aspx.cs" Inherits="DomesticProducts" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
            <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
        </div>
        <table style="width: 732px; height: 466px">
            <tr>
                <td style="width: 228px; background-color: #ffffcc" valign="top">
                    &nbsp;<asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" DataSourceID="SiteMapDataSource1"
                        DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98"
                        StaticSubMenuIndent="10px">
                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                        <DynamicMenuStyle BackColor="#B5C7DE" />
                        <StaticSelectedStyle BackColor="#507CD1" />
                        <DynamicSelectedStyle BackColor="#507CD1" />
                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
                    </asp:Menu>
                </td>
                <td valign="top">
                    <asp:SiteMapPath ID="SiteMapPath1" runat="server" PathDirection="CurrentToRoot">
                    </asp:SiteMapPath>
                    <br />
                    <br />
                    <asp:Label ID="WelcomeLabel" runat="server" Text="This is the Domestic Products page."></asp:Label></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
