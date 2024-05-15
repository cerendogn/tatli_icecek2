<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TatliDuzenle.aspx.cs" Inherits="tatli_icecek2.TatliDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            text-align: right;
            font-size: large;
            width: 132px;
        }
        .auto-style10 {
            width: 132px;
        }
        .auto-style12 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            height: 40px;
            font-size: large;
        }
        .auto-style13 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            height: 40px;
            font-weight: bold;
            font-size: large;
        }
        .auto-style14 {
            width: 132px;
            text-align: right;
        }
        .auto-style15 {
            text-align: right;
            font-size: large;
            width: 132px;
            height: 26px;
        }
        .auto-style16 {
            height: 26px;
        }
        .auto-style17 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style7">
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Tatlı Ad:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Malzemeler:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Tatlı Tarifi:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>Kategori:</strong></td>
            <td class="auto-style16">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="250px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>Yemek resim:</strong></td>
            <td class="auto-style17">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style5"><strong>
                <asp:Button ID="Button1" runat="server" BackColor="#0033CC" BorderColor="White" CssClass="auto-style12" ForeColor="White" Text="Güncelle" OnClick="Button1_Click" />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style5"><strong>
                <asp:Button ID="Button2" runat="server" BackColor="#0033CC" BorderColor="White" CssClass="auto-style13" ForeColor="White" OnClick="Button2_Click" Text="Günün Yemeği Seç" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
