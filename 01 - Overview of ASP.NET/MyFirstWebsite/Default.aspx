<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>My Web Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>This is my web page!</h1>
        <hr />
    
    </div>
        <asp:Label ID="FullNameLabel" runat="server" Text="Full name:"></asp:Label> <br />
        <asp:TextBox ID="FullNameTextBox" runat="server"></asp:TextBox>&nbsp;<br />
        <asp:Button
            ID="SubmitButton" runat="server" Text="Click Me!" OnClick="SubmitButton_Click" /><br />
        &nbsp;<asp:Label ID="ResultLabel" runat="server" BackColor="LightGray" Font-Bold="True"
            Font-Italic="True" Font-Names="Arial" Font-Size="Large" Text="[The result will be displayed here]"></asp:Label>
    </form>
</body>
</html>
