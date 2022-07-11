<%@ Page Title="" Language="C#" MasterPageFile="~/USER.Master" AutoEventWireup="true" CodeBehind="REGISTER.aspx.cs" Inherits="Test2_TrinhDinhHung.REGISTER" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-center mt-5">
        <fieldset class="text-left p-2" style="margin-left: 40%; margin-right: 40%">
            <legend class="mb-4"><strong>REGISTER</strong>
            </legend>
            Username<br />
            <asp:TextBox ID="txtUserName" runat="server" Width="100%"></asp:TextBox><br />
            <asp:RequiredFieldValidator  ID="RequiredFieldValidator1" runat="server" ErrorMessage="This field is required" ControlToValidate="txtUserName" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator><br />
            email<br />
            <asp:TextBox ID="txtEmail" TextMode="Email" runat="server" Width="100%" CssClass="mt-1"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This field is required" ControlToValidate="txtEmail" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator><br />
            Password<br />
            <asp:TextBox ID="txtPW" TextMode="Password" runat="server" Width="100%" CssClass="mt-1"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="This field is required" ControlToValidate="txtPW" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
            <%--<asp:TextBox ID="txtCapCha" runat="server"></asp:TextBox><asp:Label ID="lbCapCha" runat="server"></asp:Label>--%>
            <asp:Button ID="btRegister" runat="server" Text="Register" BackColor="#ffff66" BorderColor="#ffff66" ForeColor="#000000" Width="100%" OnClick="btRegister_Click" CssClass="mt-3" />
            <p class="mt-3 mb-3 text-center"><a href="forgot_pass.aspx">Forgot your password?</a></p>
            <p class="mb-2 text-center">Don't have an account? <a href="SignUp.aspx">Register</a></p>
        </fieldset>
    </div>
    <div class="text-center pb-2" style="width: 30%; margin-left: 35%; margin-right: 35%">
        <a href="#" style="padding-right: 50px">Privacy Notice</a>
        <a href="#">Cookies Notice</a>
        <a href="#" style="margin-left: 50px">Cookies Settings </a>
    </div>
</asp:Content>
