<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues"
            ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" DeleteCommand="DELETE FROM [Products] WHERE [ProductID] = @original_ProductID AND [ProductName] = @original_ProductName AND [SupplierID] = @original_SupplierID AND [CategoryID] = @original_CategoryID AND [QuantityPerUnit] = @original_QuantityPerUnit AND [UnitPrice] = @original_UnitPrice AND [UnitsInStock] = @original_UnitsInStock AND [UnitsOnOrder] = @original_UnitsOnOrder AND [ReorderLevel] = @original_ReorderLevel AND [Discontinued] = @original_Discontinued"
            InsertCommand="INSERT INTO [Products] ([ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (@ProductName, @SupplierID, @CategoryID, @QuantityPerUnit, @UnitPrice, @UnitsInStock, @UnitsOnOrder, @ReorderLevel, @Discontinued)"
            OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Products]"
            UpdateCommand="UPDATE [Products] SET [ProductName] = @ProductName, [SupplierID] = @SupplierID, [CategoryID] = @CategoryID, [QuantityPerUnit] = @QuantityPerUnit, [UnitPrice] = @UnitPrice, [UnitsInStock] = @UnitsInStock, [UnitsOnOrder] = @UnitsOnOrder, [ReorderLevel] = @ReorderLevel, [Discontinued] = @Discontinued WHERE [ProductID] = @original_ProductID AND [ProductName] = @original_ProductName AND [SupplierID] = @original_SupplierID AND [CategoryID] = @original_CategoryID AND [QuantityPerUnit] = @original_QuantityPerUnit AND [UnitPrice] = @original_UnitPrice AND [UnitsInStock] = @original_UnitsInStock AND [UnitsOnOrder] = @original_UnitsOnOrder AND [ReorderLevel] = @original_ReorderLevel AND [Discontinued] = @original_Discontinued">
            <DeleteParameters>
                <asp:Parameter Name="original_ProductID" Type="Int32" />
                <asp:Parameter Name="original_ProductName" Type="String" />
                <asp:Parameter Name="original_SupplierID" Type="Int32" />
                <asp:Parameter Name="original_CategoryID" Type="Int32" />
                <asp:Parameter Name="original_QuantityPerUnit" Type="String" />
                <asp:Parameter Name="original_UnitPrice" Type="Decimal" />
                <asp:Parameter Name="original_UnitsInStock" Type="Int16" />
                <asp:Parameter Name="original_UnitsOnOrder" Type="Int16" />
                <asp:Parameter Name="original_ReorderLevel" Type="Int16" />
                <asp:Parameter Name="original_Discontinued" Type="Boolean" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="SupplierID" Type="Int32" />
                <asp:Parameter Name="CategoryID" Type="Int32" />
                <asp:Parameter Name="QuantityPerUnit" Type="String" />
                <asp:Parameter Name="UnitPrice" Type="Decimal" />
                <asp:Parameter Name="UnitsInStock" Type="Int16" />
                <asp:Parameter Name="UnitsOnOrder" Type="Int16" />
                <asp:Parameter Name="ReorderLevel" Type="Int16" />
                <asp:Parameter Name="Discontinued" Type="Boolean" />
                <asp:Parameter Name="original_ProductID" Type="Int32" />
                <asp:Parameter Name="original_ProductName" Type="String" />
                <asp:Parameter Name="original_SupplierID" Type="Int32" />
                <asp:Parameter Name="original_CategoryID" Type="Int32" />
                <asp:Parameter Name="original_QuantityPerUnit" Type="String" />
                <asp:Parameter Name="original_UnitPrice" Type="Decimal" />
                <asp:Parameter Name="original_UnitsInStock" Type="Int16" />
                <asp:Parameter Name="original_UnitsOnOrder" Type="Int16" />
                <asp:Parameter Name="original_ReorderLevel" Type="Int16" />
                <asp:Parameter Name="original_Discontinued" Type="Boolean" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="SupplierID" Type="Int32" />
                <asp:Parameter Name="CategoryID" Type="Int32" />
                <asp:Parameter Name="QuantityPerUnit" Type="String" />
                <asp:Parameter Name="UnitPrice" Type="Decimal" />
                <asp:Parameter Name="UnitsInStock" Type="Int16" />
                <asp:Parameter Name="UnitsOnOrder" Type="Int16" />
                <asp:Parameter Name="ReorderLevel" Type="Int16" />
                <asp:Parameter Name="Discontinued" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource>
    
    </div>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False"
            DataKeyNames="ProductID" DataSourceID="SqlDataSource1" Height="50px" Width="214px">
            <Fields>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" InsertVisible="False"
                    ReadOnly="True" SortExpression="ProductID" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="SupplierID" HeaderText="SupplierID" SortExpression="SupplierID" />
                <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" />
                <asp:BoundField DataField="QuantityPerUnit" HeaderText="QuantityPerUnit" SortExpression="QuantityPerUnit" />
                <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
                <asp:BoundField DataField="UnitsInStock" HeaderText="UnitsInStock" SortExpression="UnitsInStock" />
                <asp:BoundField DataField="UnitsOnOrder" HeaderText="UnitsOnOrder" SortExpression="UnitsOnOrder" />
                <asp:BoundField DataField="ReorderLevel" HeaderText="ReorderLevel" SortExpression="ReorderLevel" />
                <asp:CheckBoxField DataField="Discontinued" HeaderText="Discontinued" SortExpression="Discontinued" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="ProductID"
            DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                ProductID:
                <asp:Label ID="ProductIDLabel1" runat="server" Text='<%# Eval("ProductID") %>'></asp:Label><br />
                ProductName:
                <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>'></asp:TextBox><br />
                SupplierID:
                <asp:TextBox ID="SupplierIDTextBox" runat="server" Text='<%# Bind("SupplierID") %>'></asp:TextBox><br />
                CategoryID:
                <asp:TextBox ID="CategoryIDTextBox" runat="server" Text='<%# Bind("CategoryID") %>'></asp:TextBox><br />
                QuantityPerUnit:
                <asp:TextBox ID="QuantityPerUnitTextBox" runat="server" Text='<%# Bind("QuantityPerUnit") %>'></asp:TextBox><br />
                UnitPrice:
                <asp:TextBox ID="UnitPriceTextBox" runat="server" Text='<%# Bind("UnitPrice") %>'></asp:TextBox><br />
                UnitsInStock:
                <asp:TextBox ID="UnitsInStockTextBox" runat="server" Text='<%# Bind("UnitsInStock") %>'></asp:TextBox><br />
                UnitsOnOrder:
                <asp:TextBox ID="UnitsOnOrderTextBox" runat="server" Text='<%# Bind("UnitsOnOrder") %>'></asp:TextBox><br />
                ReorderLevel:
                <asp:TextBox ID="ReorderLevelTextBox" runat="server" Text='<%# Bind("ReorderLevel") %>'></asp:TextBox><br />
                Discontinued:
                <asp:CheckBox ID="DiscontinuedCheckBox" runat="server" Checked='<%# Bind("Discontinued") %>' /><br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                    Text="Update"></asp:LinkButton>
                <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="Cancel"></asp:LinkButton>
            </EditItemTemplate>
            <InsertItemTemplate>
                ProductName:
                <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>'>
                </asp:TextBox><br />
                SupplierID:
                <asp:TextBox ID="SupplierIDTextBox" runat="server" Text='<%# Bind("SupplierID") %>'>
                </asp:TextBox><br />
                CategoryID:
                <asp:TextBox ID="CategoryIDTextBox" runat="server" Text='<%# Bind("CategoryID") %>'>
                </asp:TextBox><br />
                QuantityPerUnit:
                <asp:TextBox ID="QuantityPerUnitTextBox" runat="server" Text='<%# Bind("QuantityPerUnit") %>'>
                </asp:TextBox><br />
                UnitPrice:
                <asp:TextBox ID="UnitPriceTextBox" runat="server" Text='<%# Bind("UnitPrice") %>'>
                </asp:TextBox><br />
                UnitsInStock:
                <asp:TextBox ID="UnitsInStockTextBox" runat="server" Text='<%# Bind("UnitsInStock") %>'>
                </asp:TextBox><br />
                UnitsOnOrder:
                <asp:TextBox ID="UnitsOnOrderTextBox" runat="server" Text='<%# Bind("UnitsOnOrder") %>'>
                </asp:TextBox><br />
                ReorderLevel:
                <asp:TextBox ID="ReorderLevelTextBox" runat="server" Text='<%# Bind("ReorderLevel") %>'>
                </asp:TextBox><br />
                Discontinued:
                <asp:CheckBox ID="DiscontinuedCheckBox" runat="server" Checked='<%# Bind("Discontinued") %>' /><br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                    Text="Insert">
                </asp:LinkButton>
                <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="Cancel">
                </asp:LinkButton>
            </InsertItemTemplate>
            <ItemTemplate>
                ProductID:
                <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>'></asp:Label><br />
                ProductName:
                <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Bind("ProductName") %>'></asp:Label><br />
                SupplierID:
                <asp:Label ID="SupplierIDLabel" runat="server" Text='<%# Bind("SupplierID") %>'></asp:Label><br />
                CategoryID:
                <asp:Label ID="CategoryIDLabel" runat="server" Text='<%# Bind("CategoryID") %>'></asp:Label><br />
                QuantityPerUnit:
                <asp:Label ID="QuantityPerUnitLabel" runat="server" Text='<%# Bind("QuantityPerUnit") %>'></asp:Label><br />
                UnitPrice:
                <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Bind("UnitPrice") %>'></asp:Label><br />
                UnitsInStock:
                <asp:Label ID="UnitsInStockLabel" runat="server" Text='<%# Bind("UnitsInStock") %>'></asp:Label><br />
                UnitsOnOrder:
                <asp:Label ID="UnitsOnOrderLabel" runat="server" Text='<%# Bind("UnitsOnOrder") %>'></asp:Label><br />
                ReorderLevel:
                <asp:Label ID="ReorderLevelLabel" runat="server" Text='<%# Bind("ReorderLevel") %>'></asp:Label><br />
                Discontinued:
                <asp:CheckBox ID="DiscontinuedCheckBox" runat="server" Checked='<%# Bind("Discontinued") %>'
                    Enabled="false" /><br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit"
                    Text="Edit"></asp:LinkButton>
                <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete"
                    Text="Delete"></asp:LinkButton>
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New"
                    Text="New"></asp:LinkButton>
            </ItemTemplate>
        </asp:FormView>
    </form>
</body>
</html>
