<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifOnerDetay.aspx.cs" Inherits="tatli_icecek2.TarifOnerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style11 {
            width: 138px;
        }
        .auto-style10 {
            text-align: right;
            width: 138px;
        }
        .auto-style12 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            font-weight: bold;
        }
    .auto-style13 {
        width: 299px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong><em>
<table class="auto-style1" __designer:mapid="57">
    <tr __designer:mapid="58">
        <td class="auto-style11" __designer:mapid="59">&nbsp;</td>
        <td __designer:mapid="5a" class="auto-style13">&nbsp;</td>
    </tr>
    <tr __designer:mapid="5b">
        <td class="auto-style10" __designer:mapid="5c">Tarif Ad: </td>
        <em>
        <td __designer:mapid="5e" class="auto-style13">
            <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="200px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr __designer:mapid="60">
        <td class="auto-style10" __designer:mapid="61">Tarif Malzemeler:</td>
        <td __designer:mapid="62" class="auto-style13">
            <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="200px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr __designer:mapid="64">
        <td class="auto-style10" __designer:mapid="65">Yapılış:</td>
        <td __designer:mapid="66" class="auto-style13">
            <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="200px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr __designer:mapid="68">
        <td class="auto-style10" __designer:mapid="69">Tarif Resim:</td>
        <td __designer:mapid="6a" class="auto-style13">
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
    </tr>
    <tr __designer:mapid="6d">
        <td class="auto-style10" __designer:mapid="6e">Tarif Öneren:</td>
        <td __designer:mapid="6f" class="auto-style13"><strong><em>
            <asp:TextBox ID="TextBox4" runat="server" Height="20px" Width="200px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr __designer:mapid="6d">
        <td class="auto-style10" __designer:mapid="6e">Öneren Mail:</td>
        <td __designer:mapid="6f" class="auto-style13"><strong><em>
            <asp:TextBox ID="TextBox5" runat="server" Height="20px" Width="200px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr __designer:mapid="6d">
        <td class="auto-style10" __designer:mapid="6e">Kategori:</td>
        <td __designer:mapid="6f" class="auto-style13">
            <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
            </asp:DropDownList>
        </td>
    </tr>
    <tr __designer:mapid="6d">
        <td class="auto-style11" __designer:mapid="6e">&nbsp;</td>
        <td __designer:mapid="6f" class="auto-style13">    <strong><em>
            <asp:Button ID="Button1" runat="server" BackColor="#FF6666" CssClass="auto-style12" ForeColor="White" Text="Onayla" BorderColor="White" Width="200px" OnClick="Button1_Click" />
        </td>
    </tr>
</table>
</asp:Content>
