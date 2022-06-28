<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Assignment_Email.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 126px;
    }
    .auto-style3 {
        margin-left: 40px;
    }
        .auto-style4 {
            width: 126px;
            height: 34px;
        }
        .auto-style5 {
            height: 34px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <h1>SignUp New User</h1>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lbl_userName" runat="server" Text="Username: "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_userName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="req_userName" runat="server" ControlToValidate="txt_userName" ErrorMessage="Username Required" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lbl_mobileNo" runat="server" Text="Mobile No: "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_mobileno" runat="server" TextMode="Phone"></asp:TextBox>
                <asp:RequiredFieldValidator ID="req_mobileNo" runat="server" ControlToValidate="txt_mobileno" ErrorMessage="Mobile No. Required" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="lbl_dob" runat="server" Text="Date of birth: "></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txt_dob" runat="server" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="req_dob" runat="server" ErrorMessage="Date Of Birth Required" ForeColor="Red" ControlToValidate="txt_dob">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lbl_emailId" runat="server" Text="Email Id: "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_emailId" runat="server" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="req_emailId" runat="server" ErrorMessage="Email Id Required" ForeColor="Red" ControlToValidate="txt_emailId">*</asp:RequiredFieldValidator>
            </td>
        </tr>
</table>
<p class="auto-style3">
    <asp:Button ID="btn_registerUser" runat="server" Text="Register User" OnClick="btn_registerUser_Click" />
</p>
    <p class="auto-style3">
        <asp:Label ID="lblMessage" runat="server" BorderStyle="Dashed" ForeColor="#FF9900" Text="lblMessage" Visible="False"></asp:Label>
</p>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" HeaderText="Required Fields" />
    <p>
    <br />
&nbsp;&nbsp;&nbsp;
</p>
</asp:Content>
