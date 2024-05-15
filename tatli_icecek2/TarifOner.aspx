<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="tatli_icecek2.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            text-align: right;
            font-weight: bold;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            text-align: center;
            font-weight: bold;
            width: 100%;
            height: 38px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"><em>Tarif Ad:</em></td>
            <td class="auto-style5">
                <asp:TextBox ID="TxtTarifAd" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><em>Malzemeler:</em></td>
            <td class="auto-style5">
                <asp:TextBox ID="TxtMalzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><em>Yapılış:</em> </td>
            <td class="auto-style5">
                <asp:TextBox ID="TxtYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><em>Resim:</em></td>
            <td class="auto-style5">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" CssClass="tb5" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><em>Tarif Öneren:</em></td>
            <td class="auto-style5">
                <asp:TextBox ID="TxtTarifOneren" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Mail Adresi:</td>
            <td class="auto-style5">
                <asp:TextBox ID="TxtMailAdresi" runat="server" TextMode="Email" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="BtnTarifOner" runat="server" BackColor="#CC66FF" BorderColor="#CC99FF" BorderStyle="Solid" Height="40px" style="font-weight: 700; font-style: italic; margin-left: 40px" Text="Tarif Öner" Width="150px" OnClick="BtnTarifOner_Click" ForeColor="White" CssClass="fb8" />
            </td>
        </tr>
    </table>
</asp:Content>
