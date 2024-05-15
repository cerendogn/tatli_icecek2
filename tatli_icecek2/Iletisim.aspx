<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="tatli_icecek2.Iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        height: 23px;
    }
    .auto-style7 {
        height: 23px;
        text-align: right;
    }
    .auto-style8 {
        text-align: right;
        height: 26px;
    }
    .auto-style9 {
        font-size: x-large;
        color: #FFFFFF;
        text-align: center;
        background-color: #FF9999;
    }
    .auto-style10 {
        height: 26px;
            text-align: center;
        }
        .auto-style11 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            font-weight: bold;
        }
        .auto-style12 {
            height: 23px;
            text-align: right;
            color: #000000;
        }
        .auto-style13 {
            height: 23px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style9" colspan="2"><strong><em>MESAJ PANELİ</em></strong></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8"><strong>Ad Soyad:</strong></td>
        <td class="auto-style10">
            <asp:TextBox ID="TxtGonderen" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12"><strong>Mail Adresiniz:</strong></td>
        <td class="auto-style13">
            <asp:TextBox ID="TxtMail" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12"><strong>Konu:</strong></td>
        <td class="auto-style13">
            <asp:TextBox ID="TxtBaslik" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12"><strong>Mesaj:</strong></td>
        <td class="auto-style13">
            <asp:TextBox ID="TxtMesaj" runat="server" CssClass="tb5" Height="150px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style5"><strong>
            <asp:Button ID="Button1" runat="server" BackColor="#CC99FF" BorderColor="White" BorderStyle="Outset" CssClass="auto-style11" ForeColor="White" Text="Gönder" OnClick="Button1_Click" Width="230px" />
            </strong></td>
    </tr>
</table>
</asp:Content>
