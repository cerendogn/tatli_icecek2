<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="TatliDetay.aspx.cs" Inherits="tatli_icecek2.TatliDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            font-size: xx-large;
            color: #CC0000;
            background-color: #FFCCCC;
        }
        .auto-style6 {
            font-size: x-small;
        }
        .auto-style7 {
            background-color: #FFCCFF;
        }
        .auto-style9 {
            margin-left: 40px;
            text-align: center;
        }
        .auto-style10 {
            text-align: right;
            width: 138px;
        }
        .auto-style11 {
            width: 138px;
        }
        .auto-style12 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong><em>&nbsp;
    <asp:Label ID="Label10" runat="server" CssClass="auto-style5" Text="Label"></asp:Label>
    <br />
    <asp:DataList ID="DataList3" runat="server" Width="448px">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                </tr>
                </em>
                <tr>
                    <td style="border-bottom-style: solid; border-bottom-width: medium; border-bottom-color: #FFFFFF"><strong><em>&nbsp;<asp:Label ID="Label11" runat="server" CssClass="auto-style3" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </em></strong></td>
                </tr>
                </strong>
                <tr>
                    <td style="border-bottom-style: solid; border-bottom-width: medium; border-bottom-color: #FFFFFF">
                        <asp:Label ID="Label12" runat="server" Text='<%# Eval("Yorumicerik") %>'></asp:Label>
                        <strong><em>&nbsp;- </em>
                        <asp:Label ID="Label13" runat="server" CssClass="auto-style6" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                        </strong></td>
                </tr>
                <em>
                <tr>
                    <td style="border-bottom-style: solid; border-bottom-width: medium; border-bottom-color: #FFFFFF">&nbsp;</td>
                </tr>
                </em>
            </table>
        </ItemTemplate>
    </asp:DataList>
        <div class="auto-style7">
            <p class="auto-style9">
                <em>YORUM YAPMA PANELİ</em></p>
    </div>
        <em>
        <asp:Panel ID="Panel1" runat="server">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">Ad Soyad: </td>
                    <em>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="200px" CssClass="tb5"></asp:TextBox>
                    </td>
                    </em>
                </tr>
                <tr>
                    <td class="auto-style10">Mail:</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="200px" CssClass="tb5"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Yorumunuz:</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="200px" CssClass="tb5"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" BackColor="#FF6666" CssClass="auto-style12" ForeColor="White" Text="Yorum Yap" BorderColor="White" OnClick="Button1_Click" Width="200px" />
                    </td>
                </tr>
                <em>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </em>
            </table>
    </asp:Panel>
</asp:Content>
