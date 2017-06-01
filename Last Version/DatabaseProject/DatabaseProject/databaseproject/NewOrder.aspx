<%@ Page Title="NewOrder" MasterPageFile="~/Site.Master" Language="C#" AutoEventWireup="true" CodeBehind="NewOrder.aspx.cs" Inherits="DatabaseProject.NewOrder" %>

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
    <div class="insertClass" >
    <table  style="width: 100%">
                 <tr>
                     <td class="text-right" style="height: 31px; width: 525px">Product ID:</td>
                     <td class="text-left" style="height: 31px">
                         <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                     &nbsp;
                         </td>
                 </tr>
                 <tr>
                     <td class="text-right" style="width: 525px; height: 31px;">Quantity:</td>
                     <td class="text-left" style="height: 31px">
                         <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                     </td>
                 </tr>
                <tr>
                     <td class="text-right" style="width: 525px; height: 24px;">Customer ID:</td>
                     <td class="text-left" style="height: 24px">
                         <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td style="width: 525px" class="text-right">
                         <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" style="margin-left: auto" />
                     </td>
                     <td class="text-left">
                         <asp:Label ID="NewProductOrder" runat="server"></asp:Label>
                         
                     </td>
                 </tr>

             </table>
        <div class="insertClass">
        </div>
        </div>
</asp:Content>