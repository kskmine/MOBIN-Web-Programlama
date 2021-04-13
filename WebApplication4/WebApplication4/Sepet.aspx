<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="Sepet.aspx.cs" Inherits="WebApplication4.Sepet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
            height: 27px;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style5">
        <tr>
            <td><strong>Sepet Numarası</td>
            <td>Ürün Adı</td>
            <td>Fiyat</td>
            <td>Müşteri Numarası</strong></td>
        </tr>
    </table>
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("SepetID") %>'></asp:Label>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Fiyat") %>'></asp:Label>
            <asp:Label ID="Label5" runat="server" Text='<%# Eval("MusteriID") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>
    <br />
     

        
    </asp:Content>
   