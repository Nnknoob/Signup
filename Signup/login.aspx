<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Signup.SignUp" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="StyleSheet1.css" />
</head>
<body>
    <div class="center">
        <h1>Login</h1>
    <form id="form1" runat="server">
        <div class="txt_field">
            <asp:TextBox ID="Email2" runat="server"></asp:TextBox>
            <span></span>
            <asp:Label ID="Label1" runat="server" Text="Email ID" CssClass="label"></asp:Label>
        </div>
        <div class="txt_field">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            <span></span>
            <asp:Label ID="Label2" runat="server" Text="Password" CssClass="label"></asp:Label>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Login" CssClass="Button1" OnClick="Click2"/>
        <div class="register">
           <!-- Not a member? <a href="#register.aspx"> Register Now</a> -->
           Not a member? <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="signup.aspx">SignUp Now</asp:HyperLink>
        </div>
         <div class="register">
             <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
        </div>
        <div class="register">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email ID" ControlToValidate="Email2" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
        </div>
        </form>
</div>
</body>
</html>
