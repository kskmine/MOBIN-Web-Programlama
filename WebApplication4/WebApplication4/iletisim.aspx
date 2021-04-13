<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="WebApplication4.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        font-weight: bold;
        font-size: large;
    }
    .auto-style4 {
        text-align: right;
    }
    .auto-style5 {
        font-size: x-large;
        text-align: center;
    }
    .auto-style6 {
        border: 2px solid #456879;
        border-radius: 10px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style5" colspan="2"><strong><em>MESAJ PANELİ</em></strong></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4"><strong>Ad Soyad&nbsp; :</strong></td>
        <td>
            <asp:TextBox ID="txtGonderen" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4"><strong>Mesaj Konu :</strong></td>
        <td>
            <asp:TextBox ID="txtKonu" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4"><strong>Mail Adresi :</strong></td>
        <td>
            <asp:TextBox ID="txtAdres" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4"><strong>Mesaj :</strong></td>
        <td>
            <asp:TextBox ID="txtMesaj" runat="server" CssClass="auto-style6" Height="154px" TextMode="MultiLine" Width="230px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td><strong>
            <asp:Button ID="Gönder" runat="server" CssClass="fb8" OnClick="Button1_Click" Text="Gönder" Width="230px" />
            </strong></td>
    </tr>
</table>
</asp:Content>
