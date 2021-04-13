<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Urunler.aspx.cs" Inherits="WebApplication4.Urunler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            background-color: #999999;
        }
        .auto-style4 {
            text-align: left;
        }
        .auto-style5 {
            text-align: right;
        }
        .auto-style6 {
            font-size: large;
        }
        .auto-style8 {
            width: 32px;
        }
        .auto-style9 {
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style11 {
            width: 34px;
        }
    .auto-style12 {
        margin-left: 80px;
            height: 50px;
        }
    .auto-style13 {
        font-weight: bold;
    }
    .auto-style14 {
        height: 30px;
    }
    .auto-style15 {
        margin-left: 80px;
        height: 30px;
    }
        .auto-style16 {
            width: 34px;
            height: 34px;
        }
        .auto-style17 {
            width: 32px;
            height: 34px;
        }
        .auto-style18 {
            height: 34px;
        }
        .auto-style19 {
            height: 26px;
        }
        .auto-style20 {
            margin-left: 80px;
            height: 26px;
        }
        .auto-style21 {
            height: 50px;
        }
        .auto-style22 {
            margin-left: 80px;
            height: 30px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style3">
        <table class="auto-style1">
            <tr>
                <td class="auto-style16"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style9" Height="30px" OnClick="Button1_Click" Text="+" Width="30px"  />
                    </strong></td>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style9" Height="30px" OnClick="Button2_Click" Text="-" Width="30px"  />
                    </strong></td>
                <td class="auto-style18">ÜRÜN LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server"  Width="449px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text='<%# Eval("ProductName") %>'></asp:Label>
                        </td>
                        <td class="auto-style5">
                           <a href="Urunler.aspx?ProductID=<%#Eval("ProductID") %>&islem=sil"> <asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/image/images.jpg" Width="30px" /></a>
                        </td>
                        <td class="auto-style5">
                          <a href="Urunler.aspx?ProductID=<%#Eval("ProductID") %>">  <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/image/indir.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style3">
        <table class="auto-style1">
            <tr>
                <td class="auto-style11"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style9" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                    </strong></td>
                <td class="auto-style8"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style9" Height="30px" Text="-" Width="30px" OnClick="Button4_Click"  />
                    </strong></td>
                <td>ÜRÜN EKLEME</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style1" >
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19"><strong>ÜRÜN&nbsp; AD :</strong></td>
                <td class="auto-style20">
                    <strong>
                    <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style21"><strong>ÜRÜN AÇIKLAMA :</strong></td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14"><strong>STOK :</strong></td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox3" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14"><strong>FİYAT :</strong></td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox4" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14"><strong>KATEGORİ</strong></td>
                <td class="auto-style15">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style22"><strong>
                    <asp:Button ID="btnEkle" runat="server" CssClass="auto-style13" OnClick="btnEkle_Click" Text="EKLE" />
                  
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>
