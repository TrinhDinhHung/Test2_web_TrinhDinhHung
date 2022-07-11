<%@ Page Title="" Language="C#" MasterPageFile="~/display.Master" AutoEventWireup="true" CodeBehind="DEPOSIT_WITHDRAW.aspx.cs" Inherits="Test2_TrinhDinhHung.DEPOSIT_WITHDRAW" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content">
        
        <asp:Image runat="server" ImageUrl="~/images/banner_DW.png" Height="400px" Width="100%" ></asp:Image>
        <h3 class="text-center mt-5"><span>1. Đăng Ký Tài Khoản:</span></h3>
        <h5 class="mt-5">Tại giao diện Wellcom chọn Sign Up và điền đầy đủ thông tin và bấm chọn Sign Up để đăng ký tài khoản mới. Đăng ký xong nhập Mail và Password nhấn chọn Sign In..
        </h5>
        <div class="row mt-5">
            <div class="col-sm-6"></div>
            <div class="col-sm-6">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/H1.jpg" Width="50%" Height="100%" />
            </div>
        </div>
        <h3 class="text-center mt-5"><span>2. CÁCH NẠP TIỀN VÀO TÀI KHOẢN:</span></h3>
        <h5 class="mt-5">Chọn Deposit -->Creaet New–>Nhập số tiền muốn nạp–>Chọn Select a Bank–> Nhấn chọn Submit.</h5>
        <div id="image-2" class="mt-5">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/images/H2_1.jpg" Width="30%" Height="100%" CssClass="p-3" />
            <asp:Image ID="Image3" runat="server" ImageUrl="~/images/H2_2.jpg" Width="30%" Height="100%" CssClass="p-3" />
            <asp:Image ID="Image4" runat="server" ImageUrl="~/images/H2_3.jpg" Width="30%" Height="100%" CssClass="p-3" />
            <style>
                #image-2{
                    margin-right:8%;
                    margin-left:8%;
                }
            </style>
        </div>
        <h5 class="mt-3">Chọn “Pick an image from camera roll”–>Chọn hình và kéo chỉnh sau đó chọn “Cắt”–> Nhấn chọn Submit .</h5>
        <div id="image-3" class="mt-3">
            <asp:Image ID="Image5" runat="server" ImageUrl="~/images/H3_1.jpg" Width="30%" Height="100%" CssClass="p-3" />
            <asp:Image ID="Image6" runat="server" ImageUrl="~/images/H3_2.jpg" Width="30%" Height="100%" CssClass="p-3" />
            <asp:Image ID="Image7" runat="server" ImageUrl="~/images/H3_3.jpg" Width="30%" Height="100%" CssClass="p-3" />
            <style>
                #image-3{
                    margin-right:8%;
                    margin-left:8%;
                }
            </style>
        </div>
        <asp:Label ID="Label1" runat="server" Text="HƯỚNG DẪN MUA COIN" CssClass="border-bottom border-secondary h3"></asp:Label>
        <h5 class="mt-3">Chọn “Pick an image from camera roll”–>Chọn hình và kéo chỉnh sau đó chọn “Cắt”–> Nhấn chọn Submit .</h5>
        <div id="image-4" class="mt-3">
            <asp:Image ID="Image8" runat="server" ImageUrl="~/images/H4_1.jpg" Width="30%" Height="100%" CssClass="p-3" />
            <asp:Image ID="Image9" runat="server" ImageUrl="~/images/H4_2.jpg" Width="30%" Height="100%" CssClass="p-3" />
            <asp:Image ID="Image10" runat="server" ImageUrl="~/images/H4_3.jpg" Width="30%" Height="100%" CssClass="p-3" />
            <style>
                #image-4{
                    margin-right:8%;
                    margin-left:8%;
                }
            </style>
        </div>
        <asp:Label ID="Label2" runat="server" Text="HƯỚNG DẪN BÁN COIN" CssClass="border-bottom border-secondary h3"></asp:Label>
        <h5 class="mt-3">Vào “My coin” chọn “Sell”–>Nhập số lượng muốn bán và nhấn chọn “Sell Coin”.</h5>
        <div id="image-5" class="mt-3">
            <asp:Image ID="Image11" runat="server" ImageUrl="~/images/H5_1.jpg" Width="45%" Height="100%" CssClass="p-3" />
            <asp:Image ID="Image12" runat="server" ImageUrl="~/images/H5_2.jpg" Width="45%" Height="100%" CssClass="p-3" />
            <style>
                #image-5{
                    margin-left: 20%; 
                    margin-right:20%;
                }
            </style>
        </div>
        <asp:Label ID="Label3" runat="server" Text="HƯỚNG DẪN RÚT TIỀN" CssClass="border-bottom border-secondary h3"></asp:Label>
        <h5 class="mt-3">Vào “Profile” chọn “Upload Document”–>Tải CCCD hoặc CMND lên nhấn chọn “Change your Document”</h5>
        <h5 class="mt-3">Vào “Withdraw” chọn “Click here”–> Điền thông tin tài khoản và nhấn “Submit”.</h5>
        <div id="image-6" class="mt-3">
            <asp:Image ID="Image13" runat="server" ImageUrl="~/images/H6_1.jpg" Width="24%" Height="100%" CssClass="p-3" />
            <asp:Image ID="Image14" runat="server" ImageUrl="~/images/H6_2.jpg" Width="24%" Height="100%" CssClass="p-3" />
            <asp:Image ID="Image15" runat="server" ImageUrl="~/images/H6_3.jpg" Width="24%" Height="100%" CssClass="p-3" />
            <asp:Image ID="Image16" runat="server" ImageUrl="~/images/H6_4.jpg" Width="24%" Height="100%" CssClass="p-3" />
        </div>
        <style>
            #content {
                margin-left: 20%;
                margin-right: 20%;
                margin-top :50px;
                margin-bottom:50px;
            }
        </style>
        </div>
</asp:Content>
