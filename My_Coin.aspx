<%@ Page Title="" Language="C#" MasterPageFile="~/MyUser.Master" AutoEventWireup="true" CodeBehind="My_Coin.aspx.cs" Inherits="Test2_TrinhDinhHung.My_Coin" %>

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
                    <h5><a class="nav-link fas fa-coins" href="#">My Coins</a></h5>
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
                    <h5><a class="nav-link fas fa-markdown" href="Withdrawal.aspx">Withdraw</a></h5>
                </li>
            </ul>
        </div>
        <div class="col-sm-6">

            <h4 class="mb-4"><strong>MY COINS</strong> 
                <asp:SqlDataSource ID="dsMyCoin" runat="server" ConnectionString="<%$ ConnectionStrings:shopcoinCNN %>" SelectCommand="SELECT coin_information.image, coin_information.NameCoin, coin_information.MaCoin, coin_information.Price, coin_user.amount FROM coin_information INNER JOIN coin_user ON coin_information.MaCoin = coin_user.MaCoin
where coin_user.Email=@email">
                    <SelectParameters>
                        <asp:SessionParameter Name="email" SessionField="Email" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </h4>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="dsMyCoin" DataKeyNames="MaCoin">
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="0" style="width: 1500px; margin-bottom: 40px">
                                    <tr runat="server" style="">
                                        <th runat="server" style="width: 30%">Name</th>

                                        <th runat="server" style="width: 30%">Price</th>
                                        <th runat="server" style="width: 30%">Amount</th>
                                        

                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style=""></td>
                        </tr>
                    </table>
                </LayoutTemplate>


                <ItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Image ID="imgCoin" AlternateText='<% #Eval("image") %>'
                                ImageUrl='<%# "~/images/" + Eval("image") %>' runat="server" Width="30px" Height="30px" />
                            <asp:Label ID="MaCoinLabel" runat="server" Text='<%# Eval("MaCoin") %>' Font-Bold="True" />/
                            <asp:Label ID="NameCoinLabel" runat="server" Text='<%# Eval("NameCoin") %>' />
                        </td>

                        <td>
                            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("amount") %>'></asp:Label>
                        </td>
                        
                    </tr>
                </ItemTemplate>
                <EmptyDataTemplate>
                    <p>You don't Have any coins</p>
                </EmptyDataTemplate>
            </asp:ListView>
        </div>
    </div>
</asp:Content>
