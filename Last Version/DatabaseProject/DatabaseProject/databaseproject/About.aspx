<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="DatabaseProject.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your application description page.</h3>
    <p>Use this area to provide additional information.</p>

     <div class="jumbotron">
         <h1>Threesome Project</h1>
         <p>&nbsp;</p>
         <h2>Registration Page</h2>
         <table class="nav-justified">
             <tr>
                 <td class="text-right" style="width: 483px">Username:</td>
                 <td class="text-left">
                     <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="180px"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="text-right" style="width: 483px">Password:</td>
                 <td class="text-left">
                     <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="180px"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="text-right" style="width: 483px">&nbsp;</td>
                 <td class="text-left">
                     <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Width="180px" Height="60px" />
                 </td>
             </tr>
         </table>
         
    </div>
</asp:Content>
