<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="WebApplication4.Kategoriler" %>
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style3">
        <table class="auto-style1">
            <tr>
                <td class="auto-style11"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style9" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                    </strong></td>
                <td class="auto-style8"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style9" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                    </strong></td>
                <td>KATEGORİ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server"  Width="449px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text='<%# Eval("CategoryName") %>'></asp:Label>
                        </td>
                        <td class="auto-style5">
                           <a href="Kategoriler.aspx?CategoryID=<%#Eval("CategoryID") %>&islem=sil"> <asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/image/images.jpg" Width="30px" /></a>
                        </td>
                        <td class="auto-style5">
                          <a href="KategoriDuzenle.aspx?CategoryID=<%#Eval("CategoryID") %>">  <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/image/indir.png" Width="30px" /></a>
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
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style9" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                    </strong></td>
                <td>KATEGORİ EKLEME</td>
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
                <td>KATEGORİ AD:</td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ İKON:</td>
                <td class="auto-style12">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style14"></td>
                <td class="auto-style15"><strong>
                    <asp:Button ID="btnEkle" runat="server" CssClass="auto-style13" OnClick="btnEkle_Click" Text="EKLE" />
                    </strong></td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>
