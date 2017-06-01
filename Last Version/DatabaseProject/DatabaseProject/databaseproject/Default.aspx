<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DatabaseProject._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
         <h1>Database I Project</h1>
         <p>&nbsp;</p>
         </div>
    <div class="insertClass">
         <table class="nav-justified">
             <tr>
                <td class="text-center" style="width: 135px; font-size: xx-large;">Login</td>
                 <td class="text-center" style="font-size: xx-large">Register</td>
             </tr>
         </table>
         <table class="nav-justified" style="width: 100%; height: 285px">
             <tr>
                 <td style="width: 54px">Username:</td>
                 <td style="width: 210px">
                     <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                 </td>
                 <td style="width: 42px">Username:</td>
                 <td style="width: 213px">
                     <asp:TextBox ID="TextBox3" runat="server" ></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td style="width: 54px">Password:</td>
                 <td style="width: 210px">
                     <asp:TextBox ID="TextBox2" TextMode="Password" runat="server"></asp:TextBox>
                 </td>
                 <td style="width: 42px">Password:</td>
                 <td style="width: 213px">
                     <asp:TextBox ID="TextBox4" TextMode="Password" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td style="width: 54px">
                     <asp:Button ID="Button2" runat="server" Text="Login"  OnClick="Button2_Click" />
                 </td>
                 <td style="width: 210px">
                     <asp:Label ID="Label1" runat="server"></asp:Label>
                 </td>
                 <td style="width: 42px" class="text-left">Name:</td>
                 <td style="width: 213px">
                     <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td style="width: 54px">&nbsp;</td>
                 <td style="width: 210px">&nbsp;</td>
                 <td style="width: 42px">Surname:</td>
                 <td style="width: 213px">
                     <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td style="width: 54px">&nbsp;</td>
                 <td style="width: 210px">&nbsp;</td>
                 <td style="width: 42px">Register Date:</td>
                 <td style="width: 213px">
                     <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td style="width: 54px">&nbsp;</td>
                 <td style="width: 210px">&nbsp;</td>
                 <td style="width: 42px">
                     <asp:Button ID="Button1"  runat="server" Text="Register" OnClick="Button1_Click" />
                 </td>
                 <td style="width: 213px">
                     <asp:Label ID="Label2" runat="server"></asp:Label>
                 </td>
             </tr>
         </table>

    </div>
         
   

</asp:Content>
