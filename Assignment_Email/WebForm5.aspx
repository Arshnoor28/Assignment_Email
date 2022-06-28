<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="Assignment_Email.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        Forget Password!!
    </h1>
    <p>
        <asp:Label ID="lbl_username" runat="server" Text="Username: "></asp:Label>
        <asp:TextBox ID="txt_username" runat="server"></asp:TextBox>
    </p>
    <p>
        A New Password will be sent on your mail. Click the button
        <asp:Button ID="btn_forgetPassword" runat="server" OnClick="btn_forgetPassword_Click" Text="Change Password" />
        !</p>
<p>
        <asp:Label ID="lbl_message" runat="server" BorderStyle="Dashed" ForeColor="#FF9900" Text="lbl_message" Visible="False"></asp:Label>
</p>
</asp:Content>
