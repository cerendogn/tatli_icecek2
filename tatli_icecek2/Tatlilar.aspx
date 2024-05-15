<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tatlilar.aspx.cs" Inherits="tatli_icecek2.Tatlilar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            background-color: #CCFFFF;
        }
    .auto-style10 {
        text-align: left;
        width: 241px;
        height: 34px;
    }
    .auto-style11 {
        text-align: right;
        height: 34px;
    }
    .auto-style12 {
        text-align: right;
        width: 88px;
        height: 34px;
    }
    .auto-style13 {
        font-size: large;
    }
        .auto-style14 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style15 {
            width: 36px;
        }
        .auto-style16 {
            width: 44px;
        }
        .auto-style17 {
            width: 40px;
        }
        .auto-style18 {
            width: 35px;
        }
        .auto-style19 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style9">
        <table class="auto-style7">
            <tr>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style14" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style16"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style14" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                <td>TATLI LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="444px">
            <ItemTemplate>
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style10">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style13" Text='<%# Eval("TatliAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style12">
                           <a href="Tatlilar.aspx?TatliID=<%#Eval("TatliID")%>&islem=sil"> <asp:Image ID="Image4" runat="server" CssClass="auto-style8" Height="30px" ImageUrl="~/ikonlar/401036.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style11">
                           <a href="TatliDuzenle.aspx?TatliID=<%#Eval("TatliID")%>"> <asp:Image ID="Image5" runat="server" CssClass="auto-style8" Height="30px" ImageUrl="~/ikonlar/update-icon-png-18.jpg" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style9">
        <table class="auto-style7">
            <tr>
                <td class="auto-style18"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style14" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click"/>
                    </strong></td>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style14" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click"/>
                    </strong></td>
                <td>TATLI EKLEME</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style7">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Tatlı Ad:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Malzemeler:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Tatlı Tarifi:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Kategori:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="300px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style5"><strong>
                    <asp:Button ID="BtnEkle" runat="server" BackColor="#000099" CssClass="auto-style19" ForeColor="White" OnClick="BtnEkle_Click" Text="Ekle" Width="129px" />
                    </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>