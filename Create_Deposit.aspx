<%@ Page Title="" Language="C#" MasterPageFile="~/MyUser.Master" AutoEventWireup="true" CodeBehind="Create_Deposit.aspx.cs" Inherits="Test2_TrinhDinhHung.Create_Deposit" %>

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
                    <h5><a class="nav-link fas fa-money-check-alt" href="Deposits.aspx">Deposits</a> </h5>
                </li>
                <li class="nav-item mt-2">
                    <h5><strong><a class="nav-link fab fa-markdown" href="Withdrawal.aspx">Withdraw</a></strong></h5>
                </li>
            </ul>
        </div>
        <div class="col-sm-6">

            <h4 class="mb-4"><strong>CREATE DEPOSIT</strong> </h4>
            <div class="mb-2">
                <asp:Label ID="Label1" runat="server" Text="Amount (USDT)" Font-Bold="false"></asp:Label><br />
                <asp:TextBox ID="txtUSD" TextMode="Number" runat="server" OnTextChanged="TextBox1_TextChanged" AutoPostBack="True" Width="100%" Height="40px">0</asp:TextBox>
            </div>
            <div class="mb-2">
                <asp:Label ID="Label3" runat="server" Text="Payment Method" Font-Bold="false"></asp:Label><br />
                <asp:DropDownList ID="ddlBank" runat="server" DataSourceID="dsBank" DataTextField="NameBank" DataValueField="MaNH" Width="100%" Height="40px"></asp:DropDownList>
                <asp:SqlDataSource ID="dsBank" runat="server" ConnectionString="<%$ ConnectionStrings:shopcoinCNN %>" SelectCommand="SELECT Bank_User.MaNH, Bank.NameBank FROM Bank_User INNER JOIN Bank ON Bank_User.MaNH = Bank.MaNH WHERE (Bank_User.Email = @Email)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Email" SessionField="Email" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
            <div class="mb-2">
                <asp:Label ID="Label2" runat="server" Text="Deposits (VND)" Font-Bold="false"></asp:Label><br />
                <asp:Label ID="lbVND" runat="server" Text="0" BorderColor="Black" BorderWidth="1px" Width="100%" Height="40px" BackColor="White" BorderStyle="Inset"></asp:Label>
            </div>
            <div class="mt-2">
                <asp:Button CssClass="mt-2" ID="Button1" runat="server" Text="Submit" BorderColor="#ff6600" BackColor="#ff6600" Width="100%" OnClick="Button1_Click" />
            </div>

        </div>
    </div>
</asp:Content>
