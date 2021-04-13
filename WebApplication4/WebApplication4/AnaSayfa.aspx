<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="WebApplication4.AnaSayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            font-size: x-large;
            background-color: #336699;
        }
        .auto-style4 {
            background-color: #336699;
        }
        .auto-style5 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:DataList ID="DataList2" runat="server" Width="440px">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5"><strong>

                        <a href="Kategori.aspx?productID=<%#Eval("productID") %>">
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Text='<%# Eval("ProductName") %>'>
                        </asp:Label>
                        </strong>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td><strong>Açıklama </strong>:
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Stok </strong>:
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Stock") %>'></asp:Label>
                        &nbsp;<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fiyat </strong>:<asp:Label ID="Label5" runat="server" Text='<%# Eval("UnitPrice") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="border-bottom-style: groove; border-bottom-width: inherit; border-bottom-color: #C0C0C0">&nbsp;</td>
                <div class="card-footer">
                          <caption>
                              <small class="text-muted">★ ★ ★ ★ ☆</small>
                          </caption>
                        </div>
                </tr>

            </table>
        </ItemTemplate>
    </asp:DataList>


</asp:Content>
