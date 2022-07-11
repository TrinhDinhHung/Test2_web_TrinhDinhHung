<%@ Page Title="" Language="C#" MasterPageFile="~/MyUser.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="Test2_TrinhDinhHung.profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-sm-2" style="margin-left: 10%">
            <ul class="nav nav-pills flex-column p-4">
                <li class="nav-item mt-2">
                    <h5><a class="nav-link  fas fa-store" href="BuyCoin.aspx">Buy Coin</a></h5>
                </li>
                <li class="nav-item mt-2">
                    <h5><a class="nav-link fas fa-coins" href="My_Coin.aspx">My Coins</a></h5>
                </li>
                <li class="nav-item mt-2">
                    <h5><a class="nav-link fas fa-history" href="#">Buy History</a></h5>
                </li>
                <li class="nav-item mt-2">
                    <h5><a class="nav-link fas fa-history" href="#">Sell History</a> </h5>
                </li>
                <li class="nav-item mt-2">
                    <h5><a class="nav-link fas fa-id-card" href="profile.aspx">My Profile</a></h5>
                </li>
                <li class="nav-item mt-2">
                    <h5><a class="nav-link fas fa-money-check-alt" href="Deposits.aspx">deposits</a></h5>
                </li>
                <li class="nav-item mt-2">
                   <h5><strong><a class="nav-link fab fa-markdown" href="Withdrawal.aspx">Withdraw</a></strong></h5>
                </li>
            </ul>
        </div>
        <div class="col-sm-6">

            <h4 class="mb-4"><strong>USER INFORMATION</strong> </h4>
            <div class="border-bottom border-dark">
                <asp:Label ID="Label1" runat="server" Text="Username:" Font-Bold="true"></asp:Label>
                <div style="text-align: right">
                    <asp:Label ID="lbUserName" runat="server" Text=""></asp:Label></div>
            </div>
            <div class="border-bottom border-dark">
                <asp:Label ID="lac" runat="server" Text="Email Address:" Font-Bold="true"></asp:Label>
                <div style="text-align: right">
                    <asp:Label ID="lbEmail" runat="server" Text=""></asp:Label></div>
            </div>
            <div class="border-bottom border-dark">
                <asp:Label ID="Label5" runat="server" Text="Password:" Font-Bold="true"></asp:Label>
                <div style="text-align: right">
                    <asp:LinkButton ID="LinkButton" runat="server">Change Password</asp:LinkButton></div>
            </div>
            <h4 class="mt-4"><strong>PAYMENT</strong></h4>
            <p>support the following payment methods to load or withdraw funds.</p>
            <div class="border border-dark " style="height: 50px; padding: 10px">
                <a>Your Payment Info</a><a style="margin-left: 73%;">
                    <asp:Button ID="Button1" runat="server" Text="Edit" CssClass="fa-align-right" OnClick="Button1_Click" /></a>
            </div>
        </div>
    </div>
</asp:Content>
