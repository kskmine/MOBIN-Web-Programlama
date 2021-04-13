<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="Kategori.aspx.cs" Inherits="WebApplication4.Kategori" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            font-size: x-large;
        }
    .auto-style5 {
        margin-left: 58px;
        margin-right: 76px;
    }
        .auto-style6 {
            margin-left: 0px;
            margin-right: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style5">
    <asp:DataList ID="DataList2" runat="server" CssClass="auto-style6" >
            <ItemTemplate>
                <table class="auto-style1";>
                    <tr>
                        <td><strong>
                            <asp:Label ID="Label4" runat="server" CssClass="auto-style4" Text='<%# Eval("CategoryName") %>'></asp:Label>
                            </strong></td>
                    </tr>
                    <tr>
                        <td>Açıklama :
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            
                            &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
                            
                        </td>
                    </tr>
                   
                    <tr>
                        <td >
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("CategoryResim") %>' Height="205px"  Width="334px" />
                           
                        </td>
                    </tr>
                              
            </ItemTemplate>
        </asp:DataList>
        </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton1" runat="server" BackColor="White">Sepete Ekle</asp:LinkButton>
    &nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton2" runat="server" BackColor="White">Sepete Ekle</asp:LinkButton>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton3" runat="server" BackColor="White">Sepete Ekle</asp:LinkButton>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton4" runat="server" BackColor="White">Sepete Ekle</asp:LinkButton>
    </asp:Content>
