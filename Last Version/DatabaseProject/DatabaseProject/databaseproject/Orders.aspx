<%@ Page Language="C#"MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="DatabaseProject.Orders" %>

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
    <div class="insertClass">
             Customer ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Date from:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Date to:
             <br />
    
             <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="OrdersCustomers" DataTextField="CustomerID" DataValueField="CustomerID">
             </asp:DropDownList>
             <asp:SqlDataSource ID="OrdersCustomers" runat="server" ConnectionString="<%$ ConnectionStrings:icsd11039ConnectionString %>" SelectCommand="SELECT [CustomerID] FROM [Customers]"></asp:SqlDataSource>
             <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="OrdersSQL" DataTextField="OrderDate" DataValueField="OrderDate">
             </asp:DropDownList>
             <asp:SqlDataSource ID="OrdersSQL" runat="server" ConnectionString="<%$ ConnectionStrings:icsd11039ConnectionString %>" SelectCommand="SELECT [OrderDate] FROM [Orders]"></asp:SqlDataSource>
             <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SQLOrders2" DataTextField="OrderDate" DataValueField="OrderDate">
             </asp:DropDownList>
             <asp:SqlDataSource ID="SQLOrders2" runat="server" ConnectionString="<%$ ConnectionStrings:icsd11039ConnectionString %>" SelectCommand="SELECT [OrderDate] FROM [Orders]"></asp:SqlDataSource>
             <asp:Button ID="Button1" runat="server" Text="Show" />
&nbsp;
             <br />
             <br />
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="GridDates">
                 <Columns>
                     <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
                     <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" SortExpression="CustomerID" />
                     <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" SortExpression="EmployeeID" />
                     <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
                     <asp:BoundField DataField="RequiredDate" HeaderText="RequiredDate" SortExpression="RequiredDate" />
                     <asp:BoundField DataField="ShippedDate" HeaderText="ShippedDate" SortExpression="ShippedDate" />
                     <asp:BoundField DataField="ShipVia" HeaderText="ShipVia" SortExpression="ShipVia" />
                     <asp:BoundField DataField="Freight" HeaderText="Freight" SortExpression="Freight" />
                     <asp:BoundField DataField="ShipName" HeaderText="ShipName" SortExpression="ShipName" />
                     <asp:BoundField DataField="ShipAddress" HeaderText="ShipAddress" SortExpression="ShipAddress" />
                     <asp:BoundField DataField="ShipCity" HeaderText="ShipCity" SortExpression="ShipCity" />
                     <asp:BoundField DataField="ShipRegion" HeaderText="ShipRegion" SortExpression="ShipRegion" />
                     <asp:BoundField DataField="ShipPostalCode" HeaderText="ShipPostalCode" SortExpression="ShipPostalCode" />
                     <asp:BoundField DataField="ShipCountry" HeaderText="ShipCountry" SortExpression="ShipCountry" />
                 </Columns>
             </asp:GridView>
             <asp:SqlDataSource ID="GridDates" runat="server" ConnectionString="<%$ ConnectionStrings:icsd11039ConnectionString %>" SelectCommand="SELECT * FROM [Orders] WHERE (([CustomerID] = @CustomerID) AND ([OrderDate] &gt;= @OrderDate) AND ([OrderDate] &lt;= @OrderDate2))">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="DropDownList1" Name="CustomerID" PropertyName="SelectedValue" Type="String" />
                     <asp:ControlParameter ControlID="DropDownList2" Name="OrderDate" PropertyName="SelectedValue" Type="DateTime" />
                     <asp:ControlParameter ControlID="DropDownList3" Name="OrderDate2" PropertyName="SelectedValue" Type="DateTime" />
                 </SelectParameters>
             </asp:SqlDataSource>
             
        </div>
        
        
    </asp:Content>
