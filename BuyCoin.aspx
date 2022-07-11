<%@ Page Title="" Language="C#" MasterPageFile="~/MyUser.Master" AutoEventWireup="true" CodeBehind="BuyCoin.aspx.cs" Inherits="Test2_TrinhDinhHung.BuyCoin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left: 10%">
        <p><strong>MARKET TREND</strong></p>
        <div>
            <asp:SqlDataSource ID="dsCoin" runat="server" ConnectionString="<%$ ConnectionStrings:shopcoinCNN %>" SelectCommand="SELECT [MaCoin], [NameCoin], [Price], [Hight], [Low], [image] FROM [coin_information]"></asp:SqlDataSource>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="dsCoin" DataKeyNames="MaCoin">
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="0" style="width: 1500px; margin-bottom:40px">
                                    <tr runat="server" style="">
                                        <th runat="server" style="width: 20%">Name</th>

                                        <th runat="server" style="width: 20%">Price</th>
                                        <th runat="server" style="width: 20%">24h Hight/Low</th>
                                        <th runat="server" style="width: 20%"></th>

                                    </tr>
                                    <tr id="itemPlaceholder" runat="server" >
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
                            <asp:Label ID="HightLabel" runat="server" Text='<%# Eval("Hight") %>' />/
                            <asp:Label ID="LowLabel" runat="server" Text='<%# Eval("Low") %>' />
                        </td>
                        <td>
                            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Buy</asp:LinkButton>
                        </td>
                    </tr>
                </ItemTemplate>

            </asp:ListView>

        </div>

    </div>
</asp:Content>
