<%@ Page Title="" Language="C#" MasterPageFile="~/USER.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Test2_TrinhDinhHung.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-center mt-5">
        <fieldset class="text-left p-2" style="margin-left: 40%; margin-right: 40%">
            <legend class="text-center mb-3"><strong>LOG IN TO YOUR ACCOUNT</strong>
            </legend>
            email<br />
            <asp:TextBox ID="txtEmail" TextMode="Email" runat="server" Width="100%" CssClass="mb-2"></asp:TextBox><br />
            Password<br />
            <asp:TextBox ID="txtPW" TextMode="Password" runat="server" Width="100%" CssClass="mb-5"></asp:TextBox>
            <br />

            <asp:Button ID="btLogIn" runat="server" Text="LogIn" BackColor="#ffcc00" BorderColor="#ffcc00" Width="100%" OnClick="btLogIn_Click" />
            <p class="mt-3 mb-3 text-center"><a href="forgot_pass.aspx" >Forgot your password?</a></p>
            <p class="mb-2 text-center">Don't have an account? <a href="REGISTER.aspx">Register</a></p>
           
        </fieldset>
         
    </div>
    <div class="text-center pb-2" style="width:30%; margin-left:35%; margin-right:35%">
                <a href="#" style=" padding-right:50px">Privacy Notice</a>
                <a href="#">Cookies Notice</a>
                <a href="#" style="margin-left:50px">Cookies Settings </a>
            </div>

</asp:Content>
