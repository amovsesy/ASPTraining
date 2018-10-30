<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
    
    </div>
        <table style="width: 732px; height: 466px">
            <tr>
                <td style="width: 228px; background-color: #ffffcc" valign="top">
                    <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1" ImageSet="Simple"
                        NodeIndent="10">
                        <ParentNodeStyle Font-Bold="True" Font-Italic="True" />
                        <HoverNodeStyle BackColor="Maroon" Font-Underline="True" ForeColor="MediumTurquoise" />
                        <SelectedNodeStyle BackColor="SpringGreen" BorderWidth="1px" Font-Underline="True"
                            ForeColor="Red" HorizontalPadding="0px" VerticalPadding="0px" />
                        <RootNodeStyle Font-Bold="True" />
                        <LeafNodeStyle BackColor="PaleTurquoise" BorderWidth="1px" />
                        <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Maroon" HorizontalPadding="0px"
                            NodeSpacing="0px" VerticalPadding="0px" />
                    </asp:TreeView>
                </td>
                <td valign="top">
                    <asp:SiteMapPath ID="SiteMapPath1" runat="server" PathDirection="CurrentToRoot">
                    </asp:SiteMapPath><br /><br />
                    <asp:Label ID="WelcomeLabel" runat="server" Text="This is the home page."></asp:Label></td>
            </tr>
        </table>
    </form>
</body>
</html>
