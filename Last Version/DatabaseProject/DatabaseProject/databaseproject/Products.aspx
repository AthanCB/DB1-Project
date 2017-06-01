<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="DatabaseProject.ProductsClass" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
         <h1>Database I Project</h1>
         <p>
             <asp:Button ID="ProductsB" runat="server" Text="Products" OnClick="Products_Click" />
             <asp:Button ID="InsertB" runat="server" Text="Insert Costumer" OnClick="Insert_Click" />
             <asp:Button ID="OrdersB" runat="server" Text="Orders" OnClick="Orders_Click" />
             <asp:Button ID="NewOrderB" runat="server" Text="New Order" OnClick="NewOrder_Click" />
             
         </p>
        </div>
        <div class="gridview">
         <p>
              
             <asp:GridView ID="GridView1" runat="server"  HorizontalAlign="Center" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="GridProducts">
                 <Columns>
                     <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                     <asp:BoundField DataField="ProductID" HeaderText="ProductID" InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
                     <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                     <asp:BoundField DataField="SupplierID" HeaderText="SupplierID" SortExpression="SupplierID" />
                     <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" />
                     <asp:BoundField DataField="QuantityPerUnit" HeaderText="QuantityPerUnit" SortExpression="QuantityPerUnit" />
                     <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
                     <asp:BoundField DataField="UnitsInStock" HeaderText="UnitsInStock" SortExpression="UnitsInStock" />
                     <asp:BoundField DataField="UnitsOnOrder" HeaderText="UnitsOnOrder" SortExpression="UnitsOnOrder" />
                     <asp:BoundField DataField="ReorderLevel" HeaderText="ReorderLevel" SortExpression="ReorderLevel" />
                     <asp:CheckBoxField DataField="Discontinued" HeaderText="Discontinued" SortExpression="Discontinued" />
                 </Columns>
             </asp:GridView>
                  
             <asp:SqlDataSource ID="GridProducts" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:icsd11039ConnectionString %>" DeleteCommand="DELETE FROM [Products] WHERE [ProductID] = @original_ProductID AND [ProductName] = @original_ProductName AND (([SupplierID] = @original_SupplierID) OR ([SupplierID] IS NULL AND @original_SupplierID IS NULL)) AND (([CategoryID] = @original_CategoryID) OR ([CategoryID] IS NULL AND @original_CategoryID IS NULL)) AND (([QuantityPerUnit] = @original_QuantityPerUnit) OR ([QuantityPerUnit] IS NULL AND @original_QuantityPerUnit IS NULL)) AND (([UnitPrice] = @original_UnitPrice) OR ([UnitPrice] IS NULL AND @original_UnitPrice IS NULL)) AND (([UnitsInStock] = @original_UnitsInStock) OR ([UnitsInStock] IS NULL AND @original_UnitsInStock IS NULL)) AND (([UnitsOnOrder] = @original_UnitsOnOrder) OR ([UnitsOnOrder] IS NULL AND @original_UnitsOnOrder IS NULL)) AND (([ReorderLevel] = @original_ReorderLevel) OR ([ReorderLevel] IS NULL AND @original_ReorderLevel IS NULL)) AND [Discontinued] = @original_Discontinued" InsertCommand="INSERT INTO [Products] ([ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (@ProductName, @SupplierID, @CategoryID, @QuantityPerUnit, @UnitPrice, @UnitsInStock, @UnitsOnOrder, @ReorderLevel, @Discontinued)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Products]" UpdateCommand="UPDATE [Products] SET [ProductName] = @ProductName, [SupplierID] = @SupplierID, [CategoryID] = @CategoryID, [QuantityPerUnit] = @QuantityPerUnit, [UnitPrice] = @UnitPrice, [UnitsInStock] = @UnitsInStock, [UnitsOnOrder] = @UnitsOnOrder, [ReorderLevel] = @ReorderLevel, [Discontinued] = @Discontinued WHERE [ProductID] = @original_ProductID AND [ProductName] = @original_ProductName AND (([SupplierID] = @original_SupplierID) OR ([SupplierID] IS NULL AND @original_SupplierID IS NULL)) AND (([CategoryID] = @original_CategoryID) OR ([CategoryID] IS NULL AND @original_CategoryID IS NULL)) AND (([QuantityPerUnit] = @original_QuantityPerUnit) OR ([QuantityPerUnit] IS NULL AND @original_QuantityPerUnit IS NULL)) AND (([UnitPrice] = @original_UnitPrice) OR ([UnitPrice] IS NULL AND @original_UnitPrice IS NULL)) AND (([UnitsInStock] = @original_UnitsInStock) OR ([UnitsInStock] IS NULL AND @original_UnitsInStock IS NULL)) AND (([UnitsOnOrder] = @original_UnitsOnOrder) OR ([UnitsOnOrder] IS NULL AND @original_UnitsOnOrder IS NULL)) AND (([ReorderLevel] = @original_ReorderLevel) OR ([ReorderLevel] IS NULL AND @original_ReorderLevel IS NULL)) AND [Discontinued] = @original_Discontinued">
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
             </asp:SqlDataSource>
             
         </p>
      </div>
    
</asp:Content>