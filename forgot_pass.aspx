<%@ Page Title="" Language="C#" MasterPageFile="~/USER.Master" AutoEventWireup="true" CodeBehind="forgot_pass.aspx.cs" Inherits="Test2_TrinhDinhHung.forgot_pass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-center mt-5">
        <fieldset class="text-left p-2" style="margin-left: 40%; margin-right: 40%">
            <legend class="text-center mb-5">FORGOT YOUR PASSWORD ?
            </legend>
            <p class="text-center">
                To reset your password, enter the email address that you used to set up your account. We'll send you a link to help you get back into your account.
            </p>
            <asp:TextBox   ID="txtEmail" TextMode="Email"  runat="server" Width="100%" CssClass="mb-2"></asp:TextBox><br />
            <asp:Label ID="lbThongBao" runat="server" ForeColor="Red" CssClass="mt-2 mb-2"></asp:Label><br />
            <asp:Button ID="btSend" runat="server" Text="Send" BackColor="#ffcc00" BorderColor="#ffcc00" Width="100%" OnClick="btSend_Click" />
            <p class="mb-2 text-center">Don't have an account? <a href="#">Register</a></p>
            <div class="text-center">
                <a href="#" style="width: 33%">Privacy Notice</a>
                <a href="#" style="width: 33%">Cookies Notice</a>
                <a href="#" style="width: 33%">Cookies Settings </a>
            </div>
        </fieldset>
    </div>
</asp:Content>
