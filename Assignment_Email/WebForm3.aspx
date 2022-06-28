<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="Assignment_Email.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <script type="text/javascript">
             function preventBack() { window.history.forward(); }
             preventBack();
         </script>
        
    <h1>
        Home Page
    </h1>
    <p>
        Welcome
        <asp:Label ID="lbl_userName" runat="server" Text="[userName]"></asp:Label>
        !!&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="link_changePassword" runat="server" OnClick="link_changePassword_Click">ChangePassword</asp:LinkButton>
    &nbsp;&nbsp;<asp:Label ID="lbl_message" runat="server" BorderColor="#FF9900" BorderStyle="Dashed" ForeColor="#FF9900" Text="lbl_message" Visible="False"></asp:Label>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton  ID="lbl_signOut" runat="server" OnClick="lbl_signOut_Click" CausesValidation="False" EnableViewState="False" PostBackUrl="~/WebForm1.aspx" ViewStateMode="Disabled">
    SignOut</asp:LinkButton>
    </p>
         <asp:Panel ID="panel_passwordChange" runat="server" Visible="False">
             <h1>
                 Change Password!
             </h1>
             <p>
                 <asp:Label ID="lbl_userName0" runat="server" Text="Username:"></asp:Label>
                 <asp:TextBox ID="txt_username" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="req_username" runat="server" ControlToValidate="txt_username" ErrorMessage="User Name Required" ForeColor="Red">*</asp:RequiredFieldValidator>
             </p>
             <p>
                 <asp:Label ID="lbl_currentPassword" runat="server" Text="Current Password: "></asp:Label>
                 <asp:TextBox ID="txt_currentPassword" runat="server" TextMode="Password"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="req_currentPassword" runat="server" ControlToValidate="txt_currentPassword" ErrorMessage="Current Password Required" ForeColor="Red">*</asp:RequiredFieldValidator>
             </p>
             <p>
                 <asp:Label ID="lbl_newPasswod" runat="server" Text="New Password: "></asp:Label>
                 <asp:TextBox ID="txt_newPassword" runat="server" TextMode="Password"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="req_newPassword" runat="server" ControlToValidate="txt_newPassword" ErrorMessage="New Password Required" ForeColor="Red">*</asp:RequiredFieldValidator>
             </p>
             <p>
                 <asp:Label ID="lbl_confirmPassword" runat="server" Text="Confirm Password: "></asp:Label>
                 <asp:TextBox ID="txt_confirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="req_confirmPassword" runat="server" ControlToValidate="txt_confirmPassword" ErrorMessage="Please Confirm Password" ForeColor="Red">*</asp:RequiredFieldValidator>
                 <asp:CompareValidator ID="comp_password" runat="server" ControlToCompare="txt_newPassword" ControlToValidate="txt_confirmPassword" ErrorMessage="Password doesn't match" ForeColor="Red">Password does&#39;nt match</asp:CompareValidator>
             </p>
             <p>
                 <asp:Button ID="btn_changePassword" runat="server" OnClick="btn_changePassword_Click" Text="Change Password" />
             </p>
             <p>
                 &nbsp;</p>
         </asp:Panel>
         <p>
    </p>
    
</asp:Content>
