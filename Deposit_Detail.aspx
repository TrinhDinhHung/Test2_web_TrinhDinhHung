<%@ Page Title="" Language="C#" MasterPageFile="~/MyUser.Master" AutoEventWireup="true" CodeBehind="Deposit_Detail.aspx.cs" Inherits="Test2_TrinhDinhHung.Deposit_Detail" %>

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
                    <h5><a class="nav-link fas fa-money-check-alt" href="Deposits.aspx">Deposits</a></h5>
                </li>
                <li class="nav-item mt-2">
                    <h5><strong><a class="nav-link fab fa-markdown" href="Withdrawal.aspx">Withdraw</a></strong></h5>
                </li>
            </ul>
        </div>
        <div class="col-sm-6">

            <h4 class="mb-4"><strong>DEPOSIT DETAIL</strong> </h4>
            <div class="border-bottom border-dark">
                <asp:Label ID="Label1" runat="server" Text="code:" Font-Bold="true"></asp:Label>
                <div style="text-align: right">
                    <asp:Label ID="lbCode" runat="server" Text=""></asp:Label></div>
            </div>
            <div class="border-bottom border-dark">
                <asp:Label ID="lac" runat="server" Text="Created at:" Font-Bold="true"></asp:Label>
                <div style="text-align: right">
                    <asp:Label ID="lbCreAt" runat="server" Text=""></asp:Label></div>
            </div>
            <div class="border-bottom border-dark">
                <asp:Label ID="Label5" runat="server" Text="Amount VND:" Font-Bold="true"></asp:Label>
                <div style="text-align: right">
                    <asp:Label ID="lbAmoVND" runat="server" Text=""></asp:Label></div>
            </div>
            <div class="border-bottom border-dark">
                <asp:Label ID="Label2" runat="server" Text="Amount USDT:" Font-Bold="true"></asp:Label>
                <div style="text-align: right">
                    <asp:Label ID="lbAmoUSD" runat="server" Text=""></asp:Label></div>
            </div>
            <div class="border-bottom border-dark">
                <asp:Label ID="Label4" runat="server" Text="Method:" Font-Bold="true"></asp:Label>
                <div style="text-align: right">
                    <asp:Label ID="lbMethod" runat="server" Text=""></asp:Label></div>
            </div>
            <div class="mt-2">
                <asp:FileUpload ID="FileUpload1"  runat="server" Width="100%" /><br />
                <asp:Button CssClass="mt-2" ID="Button1" runat="server" Text="Submit" BorderColor="#ff6600" BackColor="#ff6600" Width="100%" />
            </div>

        </div>
    </div>
</asp:Content>
