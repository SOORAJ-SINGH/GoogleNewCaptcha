﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GoogleRecaptcha.Default" %>

<%@ Register TagPrefix="recaptcha" Namespace="Recaptcha" Assembly="Recaptcha" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Google Recaptcha</title>
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
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
                    <recaptcha:RecaptchaControl
                        ID="recaptcha"
                        runat="server"
                        PublicKey="6LeV7fwSAAAAACGlvCvX_cJzhsys5Ju_rW7Oqsn-"
                        PrivateKey="6LeV7fwSAAAAACgQzjfZscePs-7d6kGx9A-RweGY" />

                </td>
                <td>
                    
                </td>
                </tr><tr><td>
                    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /></td>
                <td>
                    <asp:Label ID="lblMsg" runat="server"></asp:Label></td>
            </tr>

        </table>


    </form>
</body>
</html>
