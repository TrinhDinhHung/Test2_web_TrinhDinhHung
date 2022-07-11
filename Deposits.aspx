<%@ Page Title="" Language="C#" MasterPageFile="~/MyUser.Master" AutoEventWireup="true" CodeBehind="Deposits.aspx.cs" Inherits="Test2_TrinhDinhHung.Deposits" %>

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

            <h4 class="mb-4"><strong>DEPOSITS</strong> </h4>

            <asp:Button ID="btCreate_De" runat="server" Text="Create Deposit"  PostBackUrl="~/Create_Deposit.aspx" BackColor="#FF9933" BorderColor="#FF9933" />

            <asp:ListView ID="ListView1" runat="server" DataSourceID="dsGD" DataKeyNames="code" OnItemDataBound="ListView1_ItemDataBound">
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="0" style="width: 1500px; margin-bottom: 40px">
                                    <tr runat="server" style="">
                                        <th runat="server" style="width: 20%">code</th>
                                        <th runat="server" style="width: 20%">send</th>
                                        <th runat="server" style="width: 20%">Receive (USDT)</th>
                                        <th runat="server" style="width: 20%">Date</th>
                                        <th runat="server" style="width:20%">Status</th>
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
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("code") %>'></asp:Label>
                        </td>

                        <td>
                            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("m_VND","{0:#,##0 đ}") %>' />
                        </td>
                        <td>
                            
                            <asp:Label ID="LowLabel" runat="server" Text='<%# "$" + Eval("m_USD") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("DateGD") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Button ID="LinkButton2" runat="server" BackColor="#ff6600" BorderColor="#ff6600" PostBackUrl="~/Deposit_Detail.aspx" Width="100px" Height="40px" CssClass="text-center" Text="Up Proof"></asp:Button>
                        </td>
                    </tr>
                </ItemTemplate>
               
            </asp:ListView>
             <asp:SqlDataSource id="dsGD" runat="server" ConnectionString="<%$ ConnectionStrings:shopcoinCNN %>" SelectCommand="SELECT [code], [m_VND], [DateGD], [M_USD] FROM [DEPOSITS] WHERE ([Email] = @Email)">
                 <SelectParameters>
                     <asp:SessionParameter Name="Email" SessionField="Email" Type="String" />
                 </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
