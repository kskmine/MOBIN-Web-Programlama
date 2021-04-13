<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="WebApplication4.Yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <p>
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
               <a href="Kategoriler.aspx? yorumAdSoyad=<asp:Label ID="Label1" runat="server" Text='<%# Eval("yorumAdSoyad") %>'></asp:Label> </></a>
                <br />
               <a href="Kategoriler.aspx?yorumIcerik=<asp:Label ID="Label2" runat="server" Text='<%# Eval("yorumIcerik") %>'></asp:Label> </a>
               <a href="Kategoriler.aspx?yorumTarih=<asp:Label ID="Label3" runat="server" Text='<%# Eval("yorumTarih") %>'></asp:Label> </a>
               
            </ItemTemplate>
        </asp:DataList>
    </p>
</asp:Content>

