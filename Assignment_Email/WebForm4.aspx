<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="Assignment_Email.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 127px;
        }
        .auto-style3 {
            margin-left: 120px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        SignIn Page
    </h1>
    <p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lbl_userName" runat="server" Text="User Name: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_userName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="req_userName" runat="server" ControlToValidate="txt_userName" ErrorMessage="User Name Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lbl_password" runat="server" Text="Password: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_password" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="req_password" runat="server" ErrorMessage="Password Required" ForeColor="Red" ControlToValidate="txt_password">*</asp:RequiredFieldValidator>
                    <asp:CheckBox ID="check_showPassword" runat="server" AutoPostBack="True" OnCheckedChanged="check_showPassword_CheckedChanged" Text="Show Password" />
                </td>
            </tr>
        </table>
    </p>
    <p class="auto-style3">
        <asp:Button ID="btn_signIn" runat="server" Text="SignIn" OnClick="btn_signIn_Click" style="width: 69px" />
    </p>
    <p class="auto-style3">
        <asp:Label ID="lblMessage" runat="server" BorderStyle="Dashed" ForeColor="#FF9900" Text="lblMessage" Visible="False"></asp:Label>
    </p>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
    <p>
        <br />
    </p>
</asp:Content>
