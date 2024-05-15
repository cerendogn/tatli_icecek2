<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="tatli_icecek2.KategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style10 {
            width: 100%;
            height: 128px;
        }
        .auto-style6 {
            width: 416px;
            background-color: #FFCCFF;
        }
        .auto-style5 {
            font-size: x-large;
            color: #FFFFFF;
        }
        .auto-style7 {
            height: 23px;
            width: 416px;
        }
        .auto-style8 {
            width: 416px;
        }
        .auto-style11 {
            background-color: #FFFFFF;
        }
    .auto-style12 {
        color: #000000;
    }
    .auto-style13 {
        font-size: large;
        color: #000000;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList3" runat="server">
        <ItemTemplate>
            <table class="auto-style10">
                <tr>
                    <td class="auto-style6"><strong>
                        <em>


                       <a href="TatliDetay.aspx?TatliID=<%#Eval("TatliID")%>"><asp:Label ID="Label4" runat="server" CssClass="auto-style5" Text='<%# Eval("TatliAd") %>'></asp:Label></a>


                        </em>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style7"><strong><em><span class="auto-style13">Malzemeler:</span></em></strong><span class="auto-style12">&nbsp;
                        <asp:Label ID="Label5" runat="server" Text='<%#Eval("TatliMalzeme")%>'></asp:Label>
                        </span>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong><em><span class="auto-style3">Tarif:</span></em></strong>&nbsp;
                        <asp:Label ID="Label6" runat="server" Text='<%#Eval("TatliTarif")%>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong><em>Eklenme Tarihi:</em></strong>&nbsp;
                        <asp:Label ID="Label7" runat="server" Text='<%#Eval("TatliTarih")%>'></asp:Label>
                        &nbsp; -&nbsp; <strong><em>Puan:</em></strong>&nbsp;
                        <asp:Label ID="Label8" runat="server" Text='<%#Eval("TatliPuan")%>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" style="border-bottom-style: double; border-bottom-width: thick; border-bottom-color: #FFFFFF"></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
