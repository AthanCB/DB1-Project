<%@ Page Title="Insert" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Insert.aspx.cs" Inherits="DatabaseProject.Insert" %>

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
             <div class="text-center">
             Insert a new Customer:</div>
           <br />
             <table style="width: 100%">
                 <tr>
                     <td class="text-right" style="width: 543px">Customer ID:</td>
                     <td class="text-left">
                         <asp:TextBox ID="TextBox1" runat="server" CssClass="col-md-offset-0"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td class="text-right" style="width: 543px">Company Name:</td>
                     <td class="text-left">
                         <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td class="text-right" style="width: 543px">Contact Name:</td>
                     <td class="text-left">
                         <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td class="text-right" style="width: 543px">Contact Title:</td>
                     <td class="text-left">
                         <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td class="text-right" style="width: 543px">Address:</td>
                     <td class="text-left">
                         <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td class="text-right" style="width: 543px">City:</td>
                     <td class="text-left">
                         <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td class="text-right" style="width: 543px">Region:</td>
                     <td class="text-left">
                         <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td class="text-right" style="width: 543px">Postal Code:</td>
                     <td class="text-left">
                         <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td class="text-right" style="width: 543px">Country:</td>
                     <td class="text-left">
                         <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td class="text-right" style="width: 543px">Phone:</td>
                     <td class="text-left">
                         <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td class="text-right" style="width: 543px">Fax:</td>
                     <td class="text-left">
                         <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td class="text-right" style="width: 543px">
                         <asp:Button ID="NewCustomer" OnClick="NewCustomer_Click" runat="server" Text="Insert" />
                     </td>
                     <td>
                         <asp:Label ID="NewCustomerLabel" runat="server"></asp:Label>
                     </td>
                 </tr>
             </table>
&nbsp;
           </div>
        
        
    
</asp:Content>