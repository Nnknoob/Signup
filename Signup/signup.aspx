<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Signup.signup" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <link rel="stylesheet" href="StyleSheet1.css" />
</head>
<body>
    <div class="center">
        <h1>Sign Up</h1>
    <form id="form1" runat="server">
        <div class="txt_field">
            <asp:TextBox ID="Name" runat="server"></asp:TextBox>
            <span></span>
            <asp:Label ID="Label1" runat="server" Text="Name" CssClass="label"></asp:Label>
        </div>
        <div class="txt_field">
            <asp:TextBox ID="Email" runat="server" ></asp:TextBox>
            <span></span>
            <asp:Label ID="Label2" runat="server" Text="Email ID" CssClass="label"></asp:Label>
        </div>
         <div class="txt_field">
            <asp:TextBox ID="phone" runat="server" TextMode="Number"></asp:TextBox>
            <span></span>
            <asp:Label ID="Label3" runat="server" Text="Phone No." CssClass="label"></asp:Label>
        </div>
        <div class="txt_field">
            <asp:TextBox ID="Pass" runat="server" TextMode="Password" ></asp:TextBox>
            <span></span>
            <asp:Label ID="Label4" runat="server" Text="Password" CssClass="label"></asp:Label>
        </div>
        <div class="txt_field">
            <asp:TextBox ID="Cpass" runat="server" TextMode="Password"></asp:TextBox>
            <span></span>
            <asp:Label ID="Label5" runat="server" Text="Confirm Password" CssClass="label"></asp:Label>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Sign Up" CssClass="Button1" OnClick="Button1_Click"/>
        <div class="register">
           <!-- Not a member? <a href="#register.aspx"> Register Now</a> -->
           Already a member? <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="login.aspx">Login</asp:HyperLink>
        </div>
        <div class="register">
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Please make sure your passwords match." ControlToCompare="Pass" ControlToValidate="Cpass" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
        </div>
        <div class="register">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email ID" ControlToValidate="Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" SetFocusOnError="True"></asp:RegularExpressionValidator>
            </div>
        <div class="success">
            <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
        </div>
       </form>
</div>
</body>
</html>
