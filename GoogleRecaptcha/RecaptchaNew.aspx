<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecaptchaNew.aspx.cs" Inherits="GoogleRecaptcha.RecaptchaNew" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>New Recaptcha</title>
    <script src='https://www.google.com/recaptcha/api.js'></script>
</head>
<body>
    <form id="form1" runat="server">
    <h2>New Recaptcha using the Google's API </h2>
        <div>
        <table>
            <tr>
                <td></td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Login Form"></asp:Label></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td>UserName</td>
                <td>
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td>
                <td>Password</td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    
                </td>
                <td>
                    <div class="g-recaptcha" data-sitekey="6LeDTAATAAAAAFSMYZSxiUFk9299NzBgGoh1hXLS"></div>
                </td>
                </tr><tr><td>
                    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /></td>
                <td>
                    <asp:Label ID="lblMsg" runat="server"></asp:Label></td>
            </tr>

        </table>
    
    </div>
    </form>
</body>
</html>
