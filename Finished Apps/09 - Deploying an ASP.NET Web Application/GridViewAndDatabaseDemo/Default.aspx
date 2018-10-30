<%@ Page Language="C#" Trace="true" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Data Binding to a Database by Using a SqlDataSource</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
            SelectCommand="SELECT [ProductID], [ProductName], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued] FROM [Products]" OnSelected="SqlDataSource1_Selected">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
            SelectCommand="SELECT [OrderID], [ProductID], [Quantity], [Discount] FROM [Order Details] WHERE ([ProductID] = @ProductID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="ProductID" PropertyName="SelectedDataKey.Value"
                    Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        
        <asp:Label ID="MessageLabel" runat="server" Font-Names="Arial" EnableViewState="False" /> <br /><br />
        
        <asp:Label ID="AllProductsLabel" runat="server" Font-Names="Arial" Text="Products:"></asp:Label>&nbsp;<br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
            DataKeyNames="ProductID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" AllowSorting="True" AllowPaging="True" PageSize="20">
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <Columns>
                
                <asp:BoundField DataField="ProductName" HeaderText="Product Name" SortExpression="ProductName" >
                    <ItemStyle Font-Italic="True" HorizontalAlign="Left" />
                    <HeaderStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="QuantityPerUnit" HeaderText="Quantity/Unit"  >
                    <ItemStyle Font-Size="8pt" HorizontalAlign="Left" />
                    <HeaderStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="UnitPrice" HeaderText="Price" SortExpression="UnitPrice" DataFormatString="${0}" />
                <asp:BoundField DataField="UnitsInStock" HeaderText="In Stock" SortExpression="UnitsInStock" />
                <asp:BoundField DataField="UnitsOnOrder" HeaderText="On Order" SortExpression="UnitsOnOrder" />
                <asp:BoundField DataField="ReorderLevel" HeaderText="Reorder Level" SortExpression="ReorderLevel" />
                <asp:CheckBoxField DataField="Discontinued" HeaderText="Discontinued?" SortExpression="Discontinued" />
                <asp:CommandField ButtonType="Image" SelectImageUrl="~/SelectIcon.gif" ShowSelectButton="True" />
                <asp:TemplateField HeaderText="Summary">
                    <ItemTemplate>
                        <table style="width: 213px; height: 64px">
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text="Unit Price"></asp:Label></td>
                                <td>
                                    <asp:Label ID="UnitPriceValue" runat="server" Text='<%# Eval("UnitPrice", "{0:C}") %>'></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="height: 18px">
                                    <asp:Label ID="Label2" runat="server" Text="In Stock"></asp:Label></td>
                                <td style="height: 18px">
                                    <asp:Label ID="InStockValue" runat="server" Text='<%# Eval("UnitsInStock") %>'></asp:Label></td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" Font-Size=Smaller Font-Names="Arial" />
            <EditRowStyle BackColor="#999999" />
            <SelectedRowStyle BackColor="Orange" Font-Bold="True" ForeColor="#333333" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Right" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <PagerSettings PageButtonCount="20" Position="TopAndBottom" />
        </asp:GridView>
        
        <br /><br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID,ProductID"
            DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="OrderID" HeaderText="OrderID" ReadOnly="True" SortExpression="OrderID" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="Discount" HeaderText="Discount" SortExpression="Discount" />
            </Columns>
        </asp:GridView>

    </div>
    </form>
</body>
</html>
