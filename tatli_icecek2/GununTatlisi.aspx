<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="GununTatlisi.aspx.cs" Inherits="tatli_icecek2.GununTatlisi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            text-align: left;
        }
        .auto-style5 {
            color: #990000;
            font-size: xx-large;
        }
        .auto-style7 {
            font-size: large;
            color: #FF5050;
        }
        .auto-style8 {
            background-color: #FFCCFF;
        }
        .auto-style9 {
            font-size: 16pt;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
        </tr>
        </table>
    <asp:DataList ID="DataList3" runat="server" Height="10px" style="margin-right: 152px" Width="446px">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td>
                        <em>
                        <asp:Label ID="Label8" runat="server" CssClass="auto-style5" style="font-weight: 700; text-align: center" Text='<%# Eval("TatliAd") %>'></asp:Label>
                        </em>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td><strong><em><span class="auto-style7">Malzemeler:</span></em></strong>
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("TatliMalzeme") %>' CssClass="auto-style9"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td><strong><span class="auto-style7">Tarif:</span></strong>
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("TatliTarif") %>' CssClass="auto-style9"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Image ID="Image2" runat="server" Height="205px" ImageUrl='<%# Eval("TatliResim") %>' Width="345px" CssClass="auto-style8" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style4"><strong><em><span class="auto-style3">Puan:</span></em></strong>&nbsp;<asp:Label ID="Label11" runat="server" Text='<%# Eval("TatliPuan") %>'></asp:Label>
                                    &nbsp; </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td><strong><em><span class="auto-style3">Eklenme Tarihi:</span></em></strong>&nbsp;<asp:Label ID="Label12" runat="server" Text='<%# Eval("TatliTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <br />
</asp:Content>
