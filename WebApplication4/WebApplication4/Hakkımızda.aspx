<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkımızda.aspx.cs" Inherits="WebApplication4.Hakkımızda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            font-size: x-large;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style3">
        <strong>HAKKIMIZDA</strong></p>
    <asp:DataList ID="DataList2" runat="server" Width="454px">
        <ItemTemplate>
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>

    <asp:Image ID="Image1" runat="server" Height="196px" ImageUrl="~/image/blog-img.jpg" Width="447px" />
</asp:Content>
