<%@ Page Title="" Language="C#" MasterPageFile="~/display.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Test2_TrinhDinhHung.home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="background-color: transparent; background-image: url(images/giaodienfix.png); width: auto; height: 500px">
        <div class="row text-white">
            <div class="col-sm-6">
            </div>
            <div class="col-sm-6">
                <div class="col-sm-7">
                    <div id="text-h1">
                        <h1><strong>Download Shop Coin USA App</strong></h1>
                        <style>
                            #text-h1{
                                margin-top:20%;
                            }
                        </style>
                    </div>
                    <div id="text-h6">
                        <h6><strong>Manage crypto assets at your fingertips</strong></h6>
                        <style>
                            #text-h6{
                                margin-top:5%;
                                margin-bottom:3%;
                            }
                        </style>
                    </div>
                    <div>
                        <asp:ImageButton ID="ibtDownload" runat="server" ImageUrl="~/images/nutdownload.png" PostBackUrl="#" Width="300px" Height="75px"/>
                    </div>
                    <div id="text-i">
                        <p><i>For Androi</i></p>
                        <style>
                            #text-i{
                                margin-left:13%;
                            }
                        </style>
                    </div>
                </div>
            </div>
        </div>

    </div>
</asp:Content>
