<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 617px">
            <tr>
                <td style="width: 79px">
                    Name</td>
                <td style="width: 160px">
                    <input id="NameTextBox" maxlength="31" type="text" runat="server" /></td>
                <td style="width: 24px">
                </td>
                <td style="width: 83px">
                    Nationality</td>
                <td>
                    <select id="NationalityList" style="width: 191px" runat="server">
                        <option>---Please select---</option>
                        <option>Albania</option>
                        <option>Armenia</option>
                        <option>Argentina</option>
                        <option>Zaire</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td style="width: 79px; height: 18px;" valign="top">
                    Age</td>
                <td style="width: 160px; height: 18px;" valign="top">
                    <input id="AgeTextBox" maxlength="3" size="3" type="text" runat="server" /></td>
                <td style="width: 24px; height: 18px;" valign="top">
                </td>
                <td style="width: 83px; height: 18px" valign="top">
                    Languages</td>
                <td style="height: 18px" valign="top">
                    <input id="VBCheckBox" type="checkbox" runat="server" /> Visual Basic <br />
                    <input id="VCCheckBox" type="checkbox" runat="server" /> Visual C# <br />
                    <input id="VJCheckBox" type="checkbox" runat="server" /> Visual J#</td>
            </tr>
            <tr>
                <td colspan="5">
                    <label id="ResultLabel" style="font-weight: bold; font-size: 12pt; color: maroon; font-family: Arial, Verdana, Sans-Serif; background-color: yellow" runat="server">[Result will be displayed here]</label>
                </td>
            </tr>
        </table>
    
    </div>
        <input id="SubmitButton" type="submit" value="Submit" runat="server" onserverclick="MySubmitHandler" />
    </form>
</body>
</html>
