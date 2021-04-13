<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KullaniciEkle.aspx.cs" Inherits="WebApplication4.KullaniciEkle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 300px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>KULLANICI KAYIT GİRİŞİ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h1>
        </div>
        <table class="auto-style1">
            <tr>
                <td>KULLANICI ADI</td>
                <td>:</td>
                <td>
                    <asp:TextBox ID="txtKullanici" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>ADI</td>
                <td>:</td>
                <td>
                    <asp:TextBox ID="txtAdi" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>SOYADI</td>
                <td>:</td>
                <td>
                    <asp:TextBox ID="txtSoyadi" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>EPOSTA</td>
                <td>:</td>
                <td>
                    <asp:TextBox ID="txtEposta" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>ŞİFRE</td>
                <td>:</td>
                <td>
                    <asp:TextBox ID="txtSifre" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnKayıt" runat="server" OnClick="Button1_Click" Text="KAYIT" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
