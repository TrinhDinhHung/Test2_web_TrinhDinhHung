<%@ Page Title="" Language="C#" MasterPageFile="~/MyUser.Master" AutoEventWireup="true" CodeBehind="Create_Drawal.aspx.cs" Inherits="Test2_TrinhDinhHung.Create_Drawal" %>
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

            <h4 class="mb-4"><strong>CREATE DEPOSIT</strong> </h4>
            <div class="mb-2">
                <asp:Label ID="Label3" runat="server" Text="Your bank Account" Font-Bold="false"></asp:Label><br />
                <asp:DropDownList ID="ddlBank" runat="server" DataSourceID="dsBank" DataTextField="TTTK" DataValueField="Email" Width="100%" Height="40px"></asp:DropDownList>
                <asp:SqlDataSource ID="dsBank" runat="server" ConnectionString="<%$ ConnectionStrings:shopcoinCNN %>" SelectCommand="SELECT Bank.NameBank + ' ' + Bank_User.TenChuTK + ' ' + Bank_User.STK AS TTTK, Bank_User.Email FROM Bank_User INNER JOIN Bank ON Bank_User.MaNH = Bank.MaNH WHERE (Bank_User.Email = @Email)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Email" SessionField="Email" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
            <div>
                <asp:Label ID="Label4" runat="server" Text="Your Balance"></asp:Label><br />
                <asp:Label ID="lbSoDu" runat="server" Text=""></asp:Label>
            </div>
            <div class="mb-2">
                <asp:Label ID="Label1" runat="server" Text="Amount (USDT)" Font-Bold="false"></asp:Label><br />
                <asp:TextBox ID="txtUSD" TextMode="Number" runat="server"  AutoPostBack="True" Width="100%" Height="40px" OnTextChanged="txtUSD_TextChanged">0</asp:TextBox>
            </div>
            
            <div class="mb-2">
                <asp:Label ID="Label2" runat="server" Text="Deposits (VND)" Font-Bold="false"></asp:Label><br />
                <asp:Label ID="lbVND" runat="server" Text="0" BorderColor="Black" BorderWidth="1px" Width="100%" Height="40px" BackColor="White" BorderStyle="Inset"></asp:Label>
            </div>
            <div class="mt-2">
                <asp:Button CssClass="mt-2" ID="btSubM" runat="server" Text="Submit" BorderColor="#ff6600" BackColor="#ff6600" Width="100%" OnClick="btSubM_Click"  />
            </div>
            
        </div>
    </div>
</asp:Content>
