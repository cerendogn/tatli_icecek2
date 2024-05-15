<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="tatli_icecek2.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            font-size: x-large;
            color: #CC0000;
        }
        .auto-style6 {
            font-size: 16pt;
        }
        .auto-style8 {
            font-size: 16pt;
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style5">
        <strong><em>&nbsp; HAKKIMIZDA</em></strong></p>
    <asp:DataList ID="DataList3" runat="server" Width="443px">
        <ItemTemplate>
            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Metin") %>' CssClass="auto-style8"></asp:Label>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>

    <asp:Image ID="Image1" runat="server" Height="184px" ImageUrl="~/resimler/9cbf891eb2a77f8d8d3f275907fe3648.gif" Width="446px" />

</asp:Content>
