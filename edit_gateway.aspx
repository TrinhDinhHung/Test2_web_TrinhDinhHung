<%@ Page Title="" Language="C#" MasterPageFile="~/MyUser.Master" AutoEventWireup="true" CodeBehind="edit_gateway.aspx.cs" Inherits="Test2_TrinhDinhHung.edit_gateway" %>

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
                    <h5><a class="nav-link fas fa-markdown" href="Withdrawal.aspx">Withdraw</a></h5>
                </li>
            </ul>
        </div>
        <div class="col-sm-6">

            <h4 class="mb-4"><strong>PAYMENT</strong> </h4>
            <p>support the following payment methods to load or withdraw funds.</p>
            <p>Bank Name<asp:SqlDataSource ID="dsBank" runat="server" ConnectionString="<%$ ConnectionStrings:shopcoinCNN %>" SelectCommand="SELECT * FROM [Bank]"></asp:SqlDataSource><br />
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="dsBank" DataTextField="NameBank" DataValueField="MaNH" Width="600px" Font-Size="Large" Height="50px"></asp:DropDownList>
            </p>
            
            
            <p>Account Name<br />
                 <asp:TextBox ID="txtAccName" runat="server" Width="600px" Font-Size="Large" Height="50px"></asp:TextBox>
            </p>
           
            <p>Account Number<br />
                <asp:TextBox TextMode="Number" ID="txtAccNum" runat="server" Width="600px" Font-Size="Large" Height="50px"></asp:TextBox><br />
            </p>
            
            <strong>
                <asp:Button ID="btSub" runat="server" Text="Submit" Width="600px" BackColor="#FFCC00" Font-Bold="True" Height="40px" OnClick="btSub_Click" /></strong>
        </div>
    </div>
</asp:Content>
