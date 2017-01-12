<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body style="font-size: 10pt; font-family: Arial">
    <form id="form1" runat="server">
    <div>
        <table style="width: 404px">
            <tr>
                <td style="width: 57px">
                    <asp:Label ID="NameLabel" runat="server" Text="Name:"></asp:Label></td>
                <td style="width: 238px">
                    <asp:TextBox ID="NameTextBox" runat="server" Width="146px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 57px; height: 24px">
                    <asp:Label ID="TelNumLabel" runat="server" Text="Tel Num:"></asp:Label></td>
                <td style="width: 238px; height: 24px">
                    <asp:TextBox ID="TelNumTextBox" runat="server" Width="146px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 57px; height: 24px;">
                    <asp:Label ID="RegionLabel" runat="server" Text="Region:"></asp:Label></td>
                <td style="width: 238px; height: 24px;">
                    <asp:DropDownList ID="RegionList" runat="server" Width="152px">
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td style="width: 57px; height: 24px">
                    <asp:Label ID="CountryLabel" runat="server" Text="Country:"></asp:Label></td>
                <td style="width: 238px; height: 24px">
                    <asp:DropDownList ID="CountryList" runat="server" Width="152px">
                    </asp:DropDownList></td>
            </tr>
        </table>
    
    </div>
        <asp:Button ID="UpdateButton" runat="server" Text="Update" />
        <br /><br />
        
        <asp:Panel ID="BusinessCardPanel" runat="server" Height="116px" Style="border-right: blue thin solid;
             padding-right: 3px; border-top: blue thin solid; padding-left: 3px; font-weight: bold;
             font-size: 14pt; padding-bottom: 3px; border-left: blue thin solid; color: navy;
             padding-top: 3px; border-bottom: blue thin solid; font-family: 'Century Gothic';
             background-color: lightblue" Width="402px">
           <asp:Label ID="BusinessCardNameLabel" runat="server"></asp:Label> <br /> <br />
           <asp:Label ID="BusinessCardTelNumLabel" runat="server"></asp:Label> <br /><br />
           <asp:Label ID="BusinessCardLocationLabel" runat="server"></asp:Label> 
       </asp:Panel>

    </form>
</body>
</html>
