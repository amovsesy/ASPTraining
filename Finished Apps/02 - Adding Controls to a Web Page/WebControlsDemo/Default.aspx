<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 542px">
            <tr>
                <td style="width: 64px">
                    <asp:Label ID="NameLabel" runat="server" Text="Name"></asp:Label></td>
                <td style="width: 163px">
                    <asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox></td>
                <td style="width: 12px">
                </td>
                <td style="width: 75px">
                    <asp:Label ID="NationalityLabel" runat="server" Text="Nationality"></asp:Label></td>
                <td>
                    <asp:DropDownList ID="NationalityList" runat="server" Width="174px">
                        <asp:ListItem>Canada</asp:ListItem>
                        <asp:ListItem>Denmark</asp:ListItem>
                        <asp:ListItem>France</asp:ListItem>
                        <asp:ListItem>Wales</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td style="width: 64px" valign="top">
                    <asp:Label ID="AgeLabel" runat="server" Text="Age"></asp:Label></td>
                <td style="width: 163px" valign="top">
                    <asp:TextBox ID="AgeTextBox" runat="server"></asp:TextBox></td>
                <td style="width: 12px" valign="top">
                </td>
                <td style="width: 75px" valign="top">
                    <asp:Label ID="LanguagesLabel" runat="server" Text="Languages"></asp:Label></td>
                <td valign="top">
                    <asp:CheckBoxList ID="LanguagesList" runat="server">
                        <asp:ListItem Value="VB">Visual Basic</asp:ListItem>
                        <asp:ListItem Value="C#">Visual C#</asp:ListItem>
                        <asp:ListItem Value="J#">Visual J#</asp:ListItem>
                    </asp:CheckBoxList></td>
            </tr>
            <tr>
                <td style="width: 64px" valign="top">
                    <asp:Label ID="BirthdayLabel" runat="server" Text="Birthday"></asp:Label></td>
                <td style="width: 163px" valign="top">
                    <asp:Calendar ID="BirthdayCalendar" runat="server" BackColor="White" BorderColor="#3366CC"
                        BorderWidth="1px" CellPadding="1" FirstDayOfWeek="Monday" Font-Names="Verdana"
                        Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
                        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                        <WeekendDayStyle BackColor="#CCCCFF" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True"
                            Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    </asp:Calendar>
                </td>
                <td style="width: 12px" valign="top">
                </td>
                <td style="width: 75px" valign="top">
                </td>
                <td valign="top">
                </td>
            </tr>
            <tr>
                <td colspan="5">
                    <asp:Label ID="ResultLabel" runat="server" BackColor="DarkOrange" Font-Names="Arial,Verdana,Sans Serif"
                        ForeColor="Maroon" Text="[Result will be displayed here]"></asp:Label></td>
            </tr>
        </table>
    
    </div>
        <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
    </form>
</body>
</html>
